package states;

import core.State;
import systems.DrawSprite;
import systems.DrawRect;
import systems.MovePlayer;
import entities.Player;
import entities.Floor;
import nape.space.Space;
import kha.math.Random;

class MainMenu extends State {
	public function new(space:Space) {
		var lol:Array<Player> = [];

		for(i in 0...100) {
			lol.push(new Player(space,Random.getUpTo(800),Random.getUpTo(600)));		
		}
/*		var player:Player = new Player(space, 110, 10);
		var player2:Player = new Player(space);
		var player3:Player = new Player(space);
		var player4:Player = new Player(space);*/
		var floor:Floor = new Floor(space);

		systems.push(new MovePlayer());
		//systems.push(new DrawSprite());
		systems.push(new DrawRect());

	for(player in lol) {
		register(player);
	}
		register(floor);
	}
}