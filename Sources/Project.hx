package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Image;
import kha.Assets;
import kha.math.Random;
import kha.Scaler;
import kha.input.Keyboard;
import kha.input.Mouse;
import states.MainMenu;
import core.State;
import core.Controller;
import core.Physic;

class Project {
	var states:Array<State> = [];
	var lastUpdate = Scheduler.time();
	var backbuffer:Image;

	public function new() {
		Random.init(54645);
		backbuffer = Image.createRenderTarget(1280, 720);
		Assets.loadEverything(loadAll);
	}

	function loadAll() : Void {
		Keyboard.get().notify(Controller.keyboard.keyDown, Controller.keyboard.keyUp);
		Mouse.get().notify(Controller.keyboard.onMouseDown, Controller.keyboard.onMouseUp, Controller.keyboard.onMouseMove, null);

		states.push(new MainMenu());
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
	}

	function update(): Void {
		var dt = Scheduler.time() - lastUpdate;

		Physic.universe.update();

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
