package entities;

import core.Entity;
import components.SpriteRenderer;
import components.RectRenderer;
import components.Transform;
import components.AnimatedSprite;
import components.RigidBody;
import nape.space.Space;
import nape.phys.BodyType;

class Player extends Entity {
	public function new(space:Space, ?x:Int = 100, ?y:Int = 0) {
		components.set("Transform", new Transform(47, 40));
		components.set("SpriteRenderer", new SpriteRenderer());
		components.set("RectRenderer", new RectRenderer());
		components.set("AnimatedSprite", new AnimatedSprite());
		components.set("RigidBody", new RigidBody(space, x+47/2, y+40/2, 47, 40, BodyType.DYNAMIC));
	}
}