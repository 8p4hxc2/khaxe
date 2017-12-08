package components;

import core.Component;

class Transform extends Component
{
	public var x:Float;
	public var y:Float;
	public var rotation:Float;
	public var width:Float;
	public var height:Float;

	public function new(_width:Float, _height:Float) {
		x = 0;
		y = 0;
		rotation = 0;
		width = _width;
		height = _height;
	}
}