import json
from copy import deepcopy


def build(d):
    dm = (d - 1)/2
    l = []
    for i in range(d):
        l.append([])
        for j in range(d):
            l[-1].append([])
            for k in range(d):
                if (i - dm)**2 + (j - dm)**2 + (k - dm)**2 < (d/2)**2:
                    l[-1][-1].append(63)
                else:
                    l[-1][-1].append(0)
    return l


def prune(s):
    l = len(s)
    r = deepcopy(s)
    for x in range(l):
        for y in range(l):
            for z in range(l):
                if r[x][y][z] != 0:
                    if x != l - 1   and s[x + 1][y][z] != 0:
                        r[x][y][z] -= 32
                    if x != 0       and s[x - 1][y][z] != 0:
                        r[x][y][z] -= 16

                    if y != l - 1   and s[x][y + 1][z] != 0:
                        r[x][y][z] -= 8
                    if y != 0       and s[x][y - 1][z] != 0:
                        r[x][y][z] -= 4

                    if z != l - 1   and s[x][y][z + 1] != 0:
                        r[x][y][z] -= 2
                    if z != 0       and s[x][y][z - 1] != 0:
                        r[x][y][z] -= 1

    return r

def gen(s, o):
    sh = 16 /len(s)
    d = {
  "parent": "ntils:z/sfx/sphere/parent/center",
  "ambientocclusion": False,
  "elements": []
}
    for x in range(len(s)):
        for y in range(len(s)):
            for z in range(len(s)):
                if s[x][y][z] != 0:
                    d["elements"].append(
    {
      "from": [
        sh * x - o[0],
        sh * y - o[1],
        sh * z - o[2]
      ],
      "to": [
        sh * (x + 1) - o[0],
        sh * (y + 1) - o[1],
        sh * (z + 1) - o[2]
      ],
      "faces": {},
      "shade": False,
      "light_emission": 15
    })
                    if s[x][y][z] & 32 == 32:
                        d["elements"][-1]["faces"]["east"] = {
          "texture": "#0",
          "tintindex": 0
        }
                    if s[x][y][z] & 16 == 16:
                        d["elements"][-1]["faces"]["west"] = {
          "texture": "#0",
          "tintindex": 0
        }
                    if s[x][y][z] & 8 == 8:
                        d["elements"][-1]["faces"]["up"] = {
          "texture": "#0",
          "tintindex": 0
        }
                    if s[x][y][z] & 4 == 4:
                        d["elements"][-1]["faces"]["down"] = {
          "texture": "#0",
          "tintindex": 0
        }
                    if s[x][y][z] & 2 == 2:
                        d["elements"][-1]["faces"]["south"] = {
          "texture": "#0",
          "tintindex": 0
        }
                    if s[x][y][z] & 1 == 1:
                        d["elements"][-1]["faces"]["north"] = {
          "texture": "#0",
          "tintindex": 0
        }
    return d


if __name__ == "__main__":
    sphere = prune(build(16))
    open("C:/Users/torma/Documents/GitHub/drehmal-utilities/ntils-sfx/ntils-sfx-resources/assets/ntils/models/item/z/sfx/sphere/parent/center.json", "w").write(json.dumps(gen(sphere, [0,0,0])))