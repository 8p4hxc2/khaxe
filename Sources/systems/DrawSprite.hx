package systems;

import core.System;
import kha.graphics2.Graphics;
import kha.Image;
import components.SpriteRenderer;
import components.Transform;
import components.AnimatedSprite;
import kha.math.FastMatrix3;

class DrawSprite extends System {
	var image:Image;
	
	public function new() {
		this.blueprints = ["SpriteRenderer", "Transform"];//, "AnimatedSprite"];
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
			var spriteRenderer=cast(entity.components.get("SpriteRenderer"), SpriteRenderer);
			var transform=cast(entity.components.get("Transform"), Transform);
			var animatedSprite=cast(entity.components.get("AnimatedSprite"), AnimatedSprite);

			graphic.pushRotation(transform.rotation, transform.x, transform.y);
			graphic.drawSubImage(spriteRenderer.texture, transform.x-transform.width/2, transform.y-transform.height/2, animatedSprite.currentFrame * animatedSprite.frameWidth, 0, animatedSprite.frameWidth, animatedSprite.frameHeight);
			graphic.popTransformation();
		}
	}
}