package systems.draw;

import core.System;
import kha.graphics2.Graphics;
import components.SpriteRenderer;
import components.Transform;

class DrawSprite extends System {
	public function new() {
		this.blueprints = ["SpriteRenderer", "Transform"];
	}

	override function update(dt:Float) {}

	override function render(graphic:Graphics) {
		for(entity in entities) {
			var spriteRenderer=cast(entity.components.get("SpriteRenderer"), SpriteRenderer);
			var transform=cast(entity.components.get("Transform"), Transform);

			graphic.pushRotation(transform.rotation, transform.x, transform.y);
			graphic.drawSubImage(spriteRenderer.texture, transform.x-transform.width / 2, transform.y-transform.height / 2, transform.width, 0, transform.width, transform.height);
			graphic.popTransformation();
		}
	}
}