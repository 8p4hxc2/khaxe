package entities;

import core.Entity;
import components.TextRenderer;
import components.Transform;
import components.Overed;
import components.Pressed;

class MenuEntry extends Entity {
	public function new(?text:String = "", ?x:Int = 100, ?y:Int = 0) {
		components.set("Transform", new Transform(x, y, 50, 25));
		components.set("TextRenderer", new TextRenderer(text));
		components.set("Overed", new Overed());
		components.set("Pressed", new Pressed());
	}
}