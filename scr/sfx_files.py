import json
import numpy
from PIL import Image

PATHS = {
    "ROOT": "C:/Users/torma/Documents/GitHub/drehmal-utilities/ntils-sfx/ntils-sfx-resources/assets/ntils",
    "TEXTURES": "textures/z/sfx",
    "ITEMS": "items/api/sfx",
    "MODELS": "models/item/z/sfx"
}

SELECTS = {
    "path": "cube/parents",
    "list": ["back","edge","corner"],
    "fallback": "center"
}


def make_models(n,t):
    r = []
    for i in range(int(256.*0.1),256):
        r.append({
        "threshold": i / 256.0 if i != 0 else 0.0001,
        "model": {
          "type": "minecraft:model",
          "model": f"ntils:item/z/sfx/{t}/{n}/{i}",
          "tints": [
            {
              "type": "minecraft:custom_model_data",
              "default": 16777215
            }
          ]}})
        open("/".join([PATHS["ROOT"], PATHS["MODELS"], t, n, str(i) + ".json"]), 'w').write(json.dumps({
  	"parent": f"ntils:item/z/sfx/{t}/parent/{n}",
	"textures": {
		"0": f"ntils:z/sfx/alpha/{i}"
	}
}))
    return r


if __name__ == "__main__":
    # Produce alpha textures.
    for i in range(int(256.*0.1),256):
        Image.new('RGBA', (16, 16), (255,255,255,i)).save("/".join([PATHS["ROOT"], PATHS["TEXTURES"], "alpha", str(i) + ".png"]))

    for i in ["back","edge","corner","center"]:
        open("/".join([PATHS["ROOT"], PATHS["ITEMS"], 'cube', i + ".json"]), 'w').write(json.dumps({
  "model": {
    "type": "minecraft:range_dispatch",
    "property": "minecraft:custom_model_data",
    "entries": make_models(i, "cube"),
    "fallback": {
      "type": "minecraft:model",
      "model": f"ntils:item/z/sfx/cube/{i}/255",
          "tints": [
            {
              "type": "minecraft:custom_model_data",
              "default": 16777215
            }
          ]
    }
  }
}))

        for i in ["center"]:
            open("/".join([PATHS["ROOT"], PATHS["ITEMS"], 'sphere', i + ".json"]), 'w').write(json.dumps({
  "model": {
    "type": "minecraft:range_dispatch",
    "property": "minecraft:custom_model_data",
    "entries": make_models(i, "sphere"),
    "fallback": {
      "type": "minecraft:model",
      "model": f"ntils:item/z/sfx/sphere/{i}/255",
          "tints": [
            {
              "type": "minecraft:custom_model_data",
              "default": 16777215
            }
          ]
    }
  }
}))