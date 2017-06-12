package net.matthiasauer.cyoak;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import net.matthiasauer.cyoak.helper.Helper;

class PlayState extends FlxState
{
	public var text1:FlxText;
	public var time:Float;
	public var helper:Helper;
	
	override public function create():Void
	{
		super.create();
		this.time = 0;
		
		this.helper = new Helper();
		
		text1 = createText(40, "calculating 1 + 0 = 1");

		add(text1);
	}

	override public function update(elapsed:Float):Void
	{
		this.time += elapsed;
		this.text1.text = "calculating 1 + " + Std.int(this.time) + " = " + helper.add(1, Std.int(this.time));
		
		super.update(elapsed);
	}
	
	function createText(y:Float, ?text:String)
	{
		var text = new FlxText(60, y, FlxG.width, text);
		text.setFormat(null, 24, FlxColor.BLACK);
		text.setBorderStyle(OUTLINE, FlxColor.WHITE, 2);
		return text;
	}
}
