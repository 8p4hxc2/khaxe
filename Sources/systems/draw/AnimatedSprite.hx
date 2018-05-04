package systems.draw;

import core.System;
import kha.graphics2.Graphics;
import kha.Image;
import components.Transform;
import components.AnimatedSprite;

class DrawAnimatedSprite extends System {
	var image:Image;
	
	public function new() {
		this.blueprints = ["Transform", "AnimatedSprite"];
	}

	override function update(dt:Float) {
		for(entity in entities) {
			var animatedSprite:AnimatedSprite = cast(entity.components.get("AnimatedSprite"), AnimatedSprite);
			
			animatedSprite.lastUpdate += dt;

			if(animatedSprite.lastUpdate > animatedSprite.frameDuration) {
				animatedSprite.currentFrame ++;
				if(animatedSprite.currentFrame + 1 == animatedSprite.maxFrame) {
					animatedSprite.currentFrame = 0;
				}

				animatedSprite.lastUpdate = 0;
			}
		}
	}

	override function render(graphic:Graphics) {
		for(entity in entities) {
			var transform=cast(entity.components.get("Transform"), Transform);
			var animatedSprite=cast(entity.components.get("AnimatedSprite"), AnimatedSprite);

			graphic.pushRotation(transform.rotation, transform.x, transform.y);
			graphic.drawSubImage(animatedSprite.texture, transform.x-transform.width / 2, transform.y-transform.height / 2, animatedSprite.currentFrame * transform.width, 0, transform.width, transform.height);
			graphic.popTransformation();
		}
	}
}