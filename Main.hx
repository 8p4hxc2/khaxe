/*class Main {
  static public function main():Void {
    var test:String="omg";
    trace(test);
  }
}*/

/*import states.MainMenu;

class Main extends hxd.App {
        var bmp : h2d.Bitmap;

        override function init() {
            var tile = h2d.Tile.fromColor(0xFF0000, 300, 100);
            tile.center();
            bmp = new h2d.Bitmap(tile, s2d);
            bmp.x = s2d.width * 0.5;
            bmp.y = s2d.height * 0.5;
            engine.resize(1280,720);
            MainMenu.lol();
        }

        override function update(dt:Float) {
            bmp.rotation += 0.5;
        }

        override function render() {

        }

        static function main() {
            new Main();
        }
    }*/

    package;

import kha.System;

class Main {
	public static function main() {
		System.init("Project", 1024, 768, function () {
			new Project();
		});
	}
}