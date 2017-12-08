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
			graphic.pushRotation(transform.rotation, transform.position.x, transform.position.y);
			graphic.drawRect(transform.position.x-transform.width/2, transform.position.y-transform.height/2, transform.width, transform.height);
			graphic.popTransformation();
		}
	}
}