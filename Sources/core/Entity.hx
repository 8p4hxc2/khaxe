package core;

class Entity {
	public var components:Map<String, Component> = new Map();
	public function hasComponent(name:String) {
		trace(name);
		return components.exists(name);
	}
}