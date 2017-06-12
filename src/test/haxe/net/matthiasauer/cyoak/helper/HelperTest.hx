package net.matthiasauer.cyoak.helper;

import haxe.unit.TestCase;

class HelperTest extends TestCase
{
	public function new() 
	{
		super();
	}

	public function testAddObserverAndNotifyWorks()
	{
		// GIVEN:
		var sut:Helper = new Helper();
		
		// WHEN:
		var result:Int = sut.add(1, 1);
		
		// THEN:
		this.assertEquals(2, result);
	}
}