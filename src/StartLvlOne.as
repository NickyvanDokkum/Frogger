package  
{
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class StartLvlOne 
	{
		private var counterCar1:Number = 3;
		public function StartLvlOne() 
		{
			var objectsFactory : ObjectsFactory = new ObjectsFactory();
			var timer1:Timer = new Timer(3000, 3);
			timer1.addEventListener(TimerEvent.TIMER, createCarOne);
			timer1.start();
			var timer2:Timer = new Timer(2000, 3);
			timer2.addEventListener(TimerEvent.TIMER, createCarTwo);
			timer2.start();
			var timer3:Timer = new Timer(2000, 3);
			timer3.addEventListener(TimerEvent.TIMER, createCarThree);
			timer3.start();
			var timer4:Timer = new Timer(2500, 3);
			timer4.addEventListener(TimerEvent.TIMER, createCarFour);
			timer4.start();
			var timer5:Timer = new Timer(2500, 2);
			timer5.addEventListener(TimerEvent.TIMER, createCarFive);
			timer5.start();
			
			//var car : Car = ObjectsFactory.makeObject(ObjectsFactory.ROAD_ONE);
			//var car : Car = ObjectsFactory.makeObject(ObjectsFactory.ROAD_TWO);
			//var car : Car = ObjectsFactory.makeObject(ObjectsFactory.ROAD_THREE);
			//var car : Car = ObjectsFactory.makeObject(ObjectsFactory.ROAD_FOUR);
			//var car : Car = ObjectsFactory.makeObject(ObjectsFactory.ROAD_FIVE);
			
			function createCarOne(e:TimerEvent):void {
				var car : Car = ObjectsFactory.makeObject(ObjectsFactory.ROAD_ONE);
			}
			function createCarTwo(e:TimerEvent):void {
				var car : Car = ObjectsFactory.makeObject(ObjectsFactory.ROAD_TWO);
			}
			function createCarThree(e:TimerEvent):void {
				var car : Car = ObjectsFactory.makeObject(ObjectsFactory.ROAD_THREE);
			}
			function createCarFour(e:TimerEvent):void {
				var car : Car = ObjectsFactory.makeObject(ObjectsFactory.ROAD_FOUR);
			}
			function createCarFive(e:TimerEvent):void {
				var car : Car = ObjectsFactory.makeObject(ObjectsFactory.ROAD_FIVE);
			}
		}
	}
}