package net.matthiasauer.cyoak;

import neko.Lib;

/**
 * ...
 * @author 
 */
class TestMain 
{
	
	static function main() 
	{
		Main.main();
		
		Lib.println('asdf2\n');
		var r = new haxe.unit.TestRunner();
		
		//r.add(new SystemForMocksTest());
		
		r.run();
	}
	
}
 