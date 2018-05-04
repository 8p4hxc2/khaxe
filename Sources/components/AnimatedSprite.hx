package components;

import core.Component;
import kha.Assets;
import kha.Image;

class AnimatedSprite extends Component {
	public var frameDuration:Float;
	public var currentFrame:Int;
	public var maxFrame:Int;
	public var lastUpdate:Float;
	public var texture:Image;

	public function new() {
		frameDuration = 1/10;
		currentFrame = 0;
		maxFrame = 5;
		texture = Assets.images.hat_man_walk;
	}
}