package components;

import core.Component;

class Transform extends Component {
	public var x:Float;
	public var y:Float;
	public var rotation:Float;
	public var width:Float;
	public var height:Float;

	public function new(_x:Int, _y:Int, _width:Float, _height:Float) {
		x = _x;
		y = _y;
		rotation = 0;
		width = _width;
		height = _height;
	}
}