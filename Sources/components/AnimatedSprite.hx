package components;

import core.Component;

class AnimatedSprite extends Component
{
	public var frameDuration:Float;
	public var currentFrame:Int;
	public var maxFrame:Int;
	public var frameWidth:Int;
	public var frameHeight:Int;
	public var lastUpdate:Float;

	public function new() {
		frameDuration = 1/10;
		currentFrame = 0;
		maxFrame = 5;
		frameWidth = 40;
		frameHeight = 47;
	}
}