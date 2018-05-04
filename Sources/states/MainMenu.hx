package states;

import core.State;
import systems.draw.Text;
import systems.MovePlayer;
import systems.draw.AnimatedSprite;
import systems.onOver.TextColor;
import entities.MenuEntry;

class MainMenu extends State {
	public function new() {
		systems.push(new MovePlayer());
		systems.push(new DrawText());
		systems.push(new TextColor());
		//systems.push(new DrawSprite());
		systems.push(new DrawAnimatedSprite());

		register(new MenuEntry('item 1', 400, 400));
		register(new MenuEntry('item 2', 400, 500));
		register(new MenuEntry('item 3', 400, 600));
	}

	override function update(dt:Float) {
		super.update(dt);
	}
}