components {
  id: "main"
  component: "/main/world/world.script"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "surface"
  type: "sprite"
  data: "tile_set: \"/main/world/world.atlas\"\n"
  "default_animation: \"surface\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: 320.0
    y: 910.0
    z: -1.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "spawn_spider"
  type: "factory"
  data: "prototype: \"/main/Actors/dwellers/spider.go\"\n"
  "load_dynamically: false\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "spawn_house"
  type: "factory"
  data: "prototype: \"/main/world/house.go\"\n"
  "load_dynamically: false\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "essence"
  type: "label"
  data: "size {\n"
  "  x: 128.0\n"
  "  y: 32.0\n"
  "  z: 0.0\n"
  "  w: 0.0\n"
  "}\n"
  "scale {\n"
  "  x: 1.0\n"
  "  y: 1.0\n"
  "  z: 1.0\n"
  "  w: 0.0\n"
  "}\n"
  "color {\n"
  "  x: 1.0\n"
  "  y: 1.0\n"
  "  z: 1.0\n"
  "  w: 1.0\n"
  "}\n"
  "outline {\n"
  "  x: 0.0\n"
  "  y: 0.0\n"
  "  z: 0.0\n"
  "  w: 1.0\n"
  "}\n"
  "shadow {\n"
  "  x: 0.0\n"
  "  y: 0.0\n"
  "  z: 0.0\n"
  "  w: 1.0\n"
  "}\n"
  "leading: 1.0\n"
  "tracking: 0.0\n"
  "pivot: PIVOT_CENTER\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  "line_break: false\n"
  "text: \"100\"\n"
  "font: \"/builtins/fonts/system_font.font\"\n"
  "material: \"/builtins/fonts/label.material\"\n"
  ""
  position {
    x: 320.0
    y: 80.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "spawn_goblin"
  type: "factory"
  data: "prototype: \"/main/Actors/dwellers/goblin.go\"\n"
  "load_dynamically: false\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "spawn_spider_boss"
  type: "factory"
  data: "prototype: \"/main/Actors/dwellers/spider_boss.go\"\n"
  "load_dynamically: false\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "spawn_goblin_boss"
  type: "factory"
  data: "prototype: \"/main/Actors/dwellers/goblin_boss.go\"\n"
  "load_dynamically: false\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "entrance_back"
  type: "sprite"
  data: "tile_set: \"/main/world/world.atlas\"\n"
  "default_animation: \"cave_back\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: 612.0
    y: 894.0
    z: 0.3
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "entrance_front"
  type: "sprite"
  data: "tile_set: \"/main/world/world.atlas\"\n"
  "default_animation: \"cave_front\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: 612.0
    y: 894.0
    z: 0.7
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "caveSpawner"
  type: "factory"
  data: "prototype: \"/main/world/cave.go\"\n"
  "load_dynamically: false\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "spawn_base"
  type: "factory"
  data: "prototype: \"/main/Actors/base.go\"\n"
  "load_dynamically: false\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "spawn_hero"
  type: "factory"
  data: "prototype: \"/main/Actors/heroes/hero.go\"\n"
  "load_dynamically: false\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "spawn_gold"
  type: "factory"
  data: "prototype: \"/main/gold.go\"\n"
  "load_dynamically: false\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "spawn_drake"
  type: "factory"
  data: "prototype: \"/main/Actors/dwellers/drake.go\"\n"
  "load_dynamically: false\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
