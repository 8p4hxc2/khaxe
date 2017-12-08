package components;

import kha.Assets;
import kha.Image;
import core.Component;

class SpriteRenderer extends Component
{
	public var texture:Image;

	public function new() {
		texture = Assets.images.bearded_walk;
	}
}