import Macro.get_path;
import Macro.set_path;

class Main {

	static var player = {
		name:'mario',
		profile:{
		age:15
		}
	};

	static function main() {
		trace(get_path(player,_.profile.age));
		set_path(player,_.profile.age,"33");
		trace(get_path(player,_.profile.age));

	}
}
