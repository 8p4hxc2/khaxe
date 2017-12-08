package components;

import core.Component;

typedef Position = { var x:Float; var y:Float;};

class Transform extends Component
{
	public var position:Position;
	public var rotation:Float;
	public var width:Float;
	public var height:Float;

	public function new(_width:Float, _height:Float) {
		position = {x:3, y:4};
		rotation = 0;
		width = _width;
		height = _height;
	}
}