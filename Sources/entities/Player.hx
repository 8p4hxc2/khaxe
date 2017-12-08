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
		components.set("Transform", new Transform(40, 47));
		components.set("SpriteRenderer", new SpriteRenderer());
		components.set("RectRenderer", new RectRenderer());
		components.set("AnimatedSprite", new AnimatedSprite());
		components.set("RigidBody", new RigidBody(space, x+40/2, y+47/2, 40, 47, BodyType.DYNAMIC));
	}
}