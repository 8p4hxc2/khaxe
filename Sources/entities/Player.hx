package entities;

import core.Entity;
import core.Physic;
import components.SpriteRenderer;
import components.RectRenderer;
import components.Transform;
import components.RigidBody;
import components.Material;
import components.AnimatedSprite;
import components.Overed;
import nape.phys.BodyType;

class Player extends Entity {
	public function new(?x:Int = 100, ?y:Int = 0) {
		components.set("Transform", new Transform(x, y, 40, 47));
		//components.set("SpriteRenderer", new SpriteRenderer());
		components.set("AnimatedSprite", new AnimatedSprite());
		components.set("Material", new Material());
		components.set("Overed", new Overed());
		components.set("RectRenderer", new RectRenderer());
		components.set("RigidBody", new RigidBody(Physic.universe.getWorld(), x+40/2, y+47/2, 40, 47, BodyType.DYNAMIC));
	}
}