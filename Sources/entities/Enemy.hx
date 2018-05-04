package entities;

import core.Entity;
import core.Physic;
import components.Transform;
import components.AnimatedSprite;
import components.RigidBody;
import components.RectRenderer;
import nape.phys.BodyType;

class Enemy extends Entity {
	public function new(?x:Int = 100, ?y:Int = 0) {
		components.set("Transform", new Transform(37, 46));
		components.set("AnimatedSprite", new AnimatedSprite());
		components.set("RectRenderer", new RectRenderer(0xff008899));
		components.set("RigidBody", new RigidBody(Physic.universe.getWorld(), x+37/2, y+46/2, 37, 46, BodyType.DYNAMIC));
	}
}