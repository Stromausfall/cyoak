package net.matthiasauer.cyoak;

import neko.Lib;
import net.matthiasauer.cyoak.helper.HelperTest;

/**
 * ...
 * @author 
 */
class TestMain 
{
	
	static function main() 
	{
		Lib.println('asdf2\n');
		var r:haxe.unit.TestRunner = new haxe.unit.TestRunner();
		
		r.add(new HelperTest());
		
		r.run();
	}
	
}
 