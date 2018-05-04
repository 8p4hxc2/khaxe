package states;

import core.State;
import systems.MouseOver;
import systems.DrawSprite;
import systems.DrawAnimatedSprite;
import systems.DrawRect;
import systems.DrawText;
import systems.MovePlayer;
import entities.Player;
import entities.Enemy;
import entities.Floor;
import entities.Text;
import kha.math.Random;
import core.Controller;
import kha.input.KeyCode;

class Tests extends State {
	public function new() {
		var lol:Array<Player> = [];

		for(i in 0...10) {
			lol.push(new Player(Random.getUpTo(800), Random.getUpTo(600)));
		}

		var floor:Floor = new Floor();

		systems.push(new MouseOver());
		systems.push(new MovePlayer());
		systems.push(new DrawSprite());
		systems.push(new DrawAnimatedSprite());
		systems.push(new DrawRect());
		systems.push(new DrawText());

		register(new Text(Random.getUpTo(800), Random.getUpTo(600)));
		register(new Enemy(Random.getUpTo(800), Random.getUpTo(600)));
		for(player in lol) {
			register(player);
		}

		register(floor);
	}

	override function update(dt:Float) {
		if(Controller.keyboard.isDown(KeyCode.Return)) {
			register(new Player(Random.getUpTo(800), Random.getUpTo(600)));
		}
		super.update(dt);
	}
}