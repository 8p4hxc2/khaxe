package core;

class Entity {
	public var components:Map<String, Component> = new Map();
	public function hasComponent(name:String) {
		return components.exists(name);
	}
}