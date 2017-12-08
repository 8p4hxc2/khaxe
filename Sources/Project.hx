package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Image;
import kha.Assets;
//import kha.input.Keyboard;
import states.MainMenu;
import core.State;
import kha.math.Random;
import kha.input.Keyboard;
import kha.input.KeyCode;
import kha.Scaler;
import nape.space.Space;
import nape.geom.Vec2;

class Project {
	var states:Array<State> = [];
	var test:Map<KeyCode,Bool>=new Map();
	var lastUpdate = Scheduler.time();
	var backbuffer:Image;
	var space:Space;

	public function new() {
		Random.init(54645);
		backbuffer = Image.createRenderTarget(800, 600);
		Assets.loadEverything(loadAll);
	}

	function loadAll() : Void {
		var gravity = Vec2.weak(0, 600);
        space = new Space(gravity);
		
		states.push(new MainMenu(space));

		Keyboard.get().notify(keyDown, keyUp);
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
	}

	function keyDown(key:KeyCode) : Void {
		test.set(key, true);
	}

	function keyUp(key:KeyCode) : Void {
		test.set(key, false);
	}

	function update(): Void {
		var dt = Scheduler.time() - lastUpdate;

		space.step(1 / 60);

		for(state in states) {
			state.update(dt);
		}

		lastUpdate = Scheduler.time();
	}

	function render(framebuffer: Framebuffer) : Void {
		var graphic = backbuffer.g2;
		graphic.begin();

		for(state in states) {
			state.render(graphic);
		}

		graphic.end();

		framebuffer.g2.begin();
		Scaler.scale(backbuffer, framebuffer, System.screenRotation);
		framebuffer.g2.end();
	}
}
