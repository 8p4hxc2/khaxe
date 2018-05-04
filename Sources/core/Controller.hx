package core;

import kha.input.KeyCode;
import nape.geom.Vec2;

class Controller {
	public static var keyboard:Controller = new Controller();
	public static var mouse:Controller = keyboard;

	var keys:Map<KeyCode,Bool>;
	public var mousePosition:Vec2 = new Vec2(0, 0);
	var mouseDown:Bool;
	
	public function new() {
		keys = new Map();
	}

	public function keyDown(key:KeyCode):Void {
		keys.set(key, true);
	}

	public function keyUp(key:KeyCode):Void {
		keys.set(key, false);
	}

	public function isDown(key:KeyCode):Bool {
		return keys[key];
	}

	public function isMouseDown():Bool {
		return mouseDown;
	}

	public function onMouseMove(x:Int, y:Int, cx:Int, cy:Int) {
		mousePosition.x = x;
		mousePosition.y = y;
	}

	public function onMouseDown(button:Int, x:Int, y:Int) {
		mouseDown = true;
	}

	public function onMouseUp(button:Int, x:Int, y:Int) {
		mouseDown = false;
	}
}