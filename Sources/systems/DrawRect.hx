package systems;

import core.System;
import kha.graphics2.Graphics;
import kha.Image;
import components.SpriteRenderer;
import components.Transform;
import components.AnimatedSprite;
import kha.math.FastMatrix3;

class DrawRect extends System {
	public function new() {
		this.blueprints = ["RectRenderer", "Transform"];
	}

	override function render(graphic:Graphics) {
		for(entity in entities) {
			var transform = cast(entity.components.get("Transform"), Transform);
			graphic.pushRotation(transform.rotation, transform.x, transform.y);
			graphic.drawRect(transform.x-transform.width/2, transform.y-transform.height/2, transform.width, transform.height);
			graphic.popTransformation();
		}
	}
}