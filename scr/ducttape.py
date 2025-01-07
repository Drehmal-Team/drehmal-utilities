import json
from copy import deepcopy
from operator import truediv

PATH = "C:/Users/torma/Documents/GitHub/drehmal-utilities/scr/IrisDataGen-main/generated/1.21.4_blocks.json"
PATHS = {
    "ROOT": "C:/Users/torma/Documents/GitHub/drehmal-utilities/ntils-ray/data/ntils",
    "LOOT_TABLE": "loot_table/api/ray/hitbox",
    "THIS":"collision"
}

def addto(a, b, c):
    for i in range(len(c)):
        if c[i]["shapes"] == a["shapes"]:
            c[i]["members"].append(b)
            return
    c.append({"shapes":a["shapes"],"members":[b]})


def clear_duds(l):
    h = list(l[0]["properties"].keys())
    for s in h:
        d = deepcopy(l)
        for k in d:
            k["properties"].pop(s)
        if all_duds(d):
            for k in l:
                k["properties"].pop(s)
            prune_duds(l)


def all_duds(l):
    for a in range(len(l)):
        for i in range(len(l)):
            if i != a and l[a]["properties"] == l[i]["properties"] and l[a]["shape"] != l[i]["shape"]:
                return False
    return True


def prune_duds(l):
    a = 0
    while a < len(l):
        d = False
        for i in range(len(l)):
            if i != a and l[a] == l[i]:
                d = True
        if d:
            l.pop(a)
        else:
            a += 1


def addtoo(a,b):
    for i in range(len(b)):
        if b[i]["aabb"] == a["shape"]:
            b[i]["properties"].append(a["properties"])
            return
    b.append({"aabb":a["shape"],"properties":[a["properties"]]})


def hasShapes(a):
    for i in a["states"]:
        if "[]" != i["shape"]:
            return True
    return False


def clean(l):
    clear_duds(l["states"])

    if not hasShapes(l):
        l["states"] = []

    l["shapes"] = []
    for i in l["states"]:
        addtoo(i, l["shapes"])
    l.pop("states")

    return l


def bsort(l):
    s = False
    while not(s):
        s = True
        for i in range(len(l) - 1):
            if len(l[i]["members"]) < len(l[i + 1]["members"]):
                t = l[i + 1]
                l[i + 1] = l[i]
                l[i] = t
                s = False


def upperlower(l):
    if len(l) <= 2:
        if len(l) <= 1:
            if len(l) == 0:
                return None
            else:
                return [l]
        else:
            return [[l[0]],[l[1]]]

    h = 0
    for k in l:
        h += len(k["members"])
    a = 0
    i = 0
    while 2 * a < h and i < len(l) - 1:
        a += len(l[i]["members"])
        i += 1
    return [l[:i],l[i:]]


def aabb_conv(a):
    l = []
    if a != '[]':
        for k in ", ".join("".join(a[1:-2].split("AABB[")).split("] -> [")).split('], '):
            h = k.split(', ')
            l.append([
                aabb_dim_fix(h[0]),
                aabb_dim_fix(h[1]),
                aabb_dim_fix(h[2]),
                aabb_dim_fix(h[3]),
                aabb_dim_fix(h[4]),
                aabb_dim_fix(h[5]),
            ])
    return l

def aabb_dim_fix(d):
    return min(max(int(float(d) * 16), 0), 16)


def create_node(l):
    if len(l) > 1:
        return create_block_node(upperlower(l))
    else:
        return create_state_node(l[0])


def create_block_node(l):
    return {
  "pools": [
    {
      "rolls": 1,
      "entries": [
        {
          "type": "minecraft:alternatives",
          "children": [
            {
              "type": "minecraft:loot_table",
              "value": create_node(l[0]),
              "conditions": [
                {
                  "condition": "minecraft:location_check",
                  "predicate": {
                    "block": {
                      "blocks": block_list(l[0])
                    }
                  }
                }
              ]
            },
            {
              "type": "minecraft:loot_table",
              "value": create_node(l[1]),
              "conditions": [
                {
                  "condition": "minecraft:location_check",
                  "predicate": {
                    "block": {
                      "blocks": block_list(l[1])
                    }
                  }
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}

def create_state_node(l):
    if len(l["shapes"]) == 0:
        return {
  "pools": [
    {
      "rolls": 1,
      "entries": [
        {
          "type": "minecraft:item",
          "name": "minecraft:cod",
          "functions": [
            {
              "function": "minecraft:set_custom_data",
              "tag": "{ntils:{api:{ray:{hitbox:{" + f'{PATHS["THIS"]}' + ":[]}}}}}"
            }
          ]
        }
      ]
    }
  ]
}
    if len(l["shapes"]) > 1:
        return create_state_node_recursive(list(l["shapes"][0]["properties"][0].keys()), l, [], 0)
    else:
        return {
  "pools": [
    {
      "rolls": 1,
      "entries": [
        {
          "type": "minecraft:item",
          "name": "minecraft:cod",
          "functions": [
            {
              "function": "minecraft:set_custom_data",
              "tag": "{ntils:{api:{ray:{hitbox:{" + f'{PATHS["THIS"]}' + ":" + f'{aabb_conv(l["shapes"][0]["aabb"])}' + "}}}}}"
            }
          ]
        }
      ]
    }
  ]
}


def create_state_node_recursive(s, l, p, a):
    if a == len(s):
        return         {
  "pools": [
    {
      "rolls": 1,
      "entries": [{
          "type": "minecraft:item",
          "name": "minecraft:cod",
          "functions": [
            {
              "function": "minecraft:set_custom_data",
              "tag": "{ntils:{api:{ray:{hitbox:{" + f'{PATHS["THIS"]}' + ":" + f'{aabb_conv(findme(s, p, l)["aabb"])}' + "}}}}}"
            }
          ]
        }]}]}
    r = []
    for k in get_uniques(s[a], l):
        r.append({
          "type": "minecraft:loot_table",
          "value": create_state_node_recursive(s, l, list(p + [k]), a + 1),
          "conditions": [
            {
              "condition": "minecraft:location_check",
              "predicate": {
                "block": {
                  "state": {
                    s[a]: k
                  }
                }
              }
            }
          ]
        })
    return {
  "pools": [
    {
      "rolls": 1,
      "entries": [
        {
          "type": "minecraft:alternatives",
          "children": r
        }
      ]
    }
  ]
}


def findme(a,b,l):
    o = deepcopy(l["shapes"])
    for z in zip(a,b):
        i = 0
        while i < len(o):
            a = 0
            while a < len(o[i]["properties"]):
                if o[i]['properties'][a][z[0]] != z[1]:
                    o[i]['properties'].pop(a)
                else:
                    a += 1
            if len(o[i]['properties']) == 0:
                o.pop(i)
            else:
                i += 1

    return o[0]


def get_uniques(s, l):
    r = []
    for k in l["shapes"]:
        for m in k["properties"]:
            if m[s] not in r:
                r.append(m[s])
    return r


def block_list(l):
    r = []
    for k in l:
        r += k["members"]
    return r


if __name__ == "__main__":
    b = []
    d = json.load(open(PATH,"r"))

    for k in d.keys():
        addto(clean(d[k]), k, b)
    bsort(b)

    open("/".join([PATHS["ROOT"], PATHS["LOOT_TABLE"], PATHS["THIS"]]) + ".json", 'w').write(json.dumps(create_node(b), separators = (',',':')))