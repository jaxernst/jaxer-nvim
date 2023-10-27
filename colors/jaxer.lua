local colors = {
    color_0 = "#26232a",
    color_1 = "#BE4F3F",
    color_2 = "#768705",
    color_3 = "#929A0E",
    color_4 = "#B59863",
    color_5 = "#D1738A",
    color_6 = "#7B854D",
    color_7 = "#FFE1E1",
}

local opts = {
    contrast = "soft",
    colors_name = "wal"
}

require("kreative.color")["init-colors"](colors)
require("kreative.main").init(opts)
