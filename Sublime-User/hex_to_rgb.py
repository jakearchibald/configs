# Add a key binding to your User Key Bindings and you're all good to go
#   { "keys": ["super+shift+h"], "command": "convert_hex_to_rgb" }
#

import sublime_plugin


class ConvertHexToRgb(sublime_plugin.TextCommand):
    def run(self, edit):
        for region in self.view.sel():
            if not region.empty():
                s = self.view.substr(region)
                s = self.__transform_hex_to_rgb(s)
                self.view.replace(edit, region, s)

    def __transform_hex_to_rgb(self, value):
        value = value.lstrip('#')
        lv = len(value)
        if lv == 6:
            rgb = tuple(str(int(value[i:i + lv / 3], 16)) for i in range(0, lv, lv / 3))
        if lv == 3:
            rgb = tuple(str(int(value[i:i + 1], 16) * 17) for i in range(0, 3))
        if lv == 1:
            v = str(int(value, 16) * 17)
            rgb = v, v, v
        return 'rgba(' + ', '.join(rgb) + ', 1)'
