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

		var setState = function(old,nw) {
			trace(nw);
		}

		trace(get_path(player,_.profile.age));
		set_path(player,_.profile.age)(100);
		trace(get_path(player,_.profile.age));

	}
}
