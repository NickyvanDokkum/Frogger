package {
	/**
	 * @author Nick van Dokkum
	 */
	public class ObjectsFactory {
		
		public static const ROAD_ONE : String		=	"carOne";
		public static const ROAD_TWO : String		=	"carTwo";
		public static const ROAD_THREE : String	=	"carThree";
		public static const ROAD_FOUR : String		=	"carFour";
		public static const ROAD_FIVE : String	=	"carFive";
		public static const WATER_ONE : String	=	"turtleOne";
		public static const WATER_TWO : String	=	"logTwo";
		public static const WATER_THREE : String	=	"logThree";
		public static const WATER_FOUR : String	=	"turtleFour";
		public static const WATER_FIVE : String	=	"logFive";
		
		public static function makeObject( type : String ) : Car
		{
			var car : Car;
		
			if(type == ROAD_ONE)
			{
				car = new Car(1);
				//car.x = Main.main.stage.stageWidth + car.width;
				//car.y = 528;
				//car.rotation = 180;
			}
			else if(type == ROAD_TWO)
			{
				car = new Car(2);
				//car.x = -36;
				//car.y = 440;
			}
			else if(type == ROAD_THREE)
			{
				car = new Car(3);
				//car.x = 800;
				//car.y = 405;
			}
			else if(type == ROAD_FOUR)
			{
				car = new Car(4);
				//car.x = -30;
				//car.y = 380;
				//car.rotation = 180;
			}
			else if(type == ROAD_FIVE)
			{
				car = new Car(5);
				//car.x = 850;
				//car.y = 365;
				//car.rotation = 180;
			}
			else if (type == WATER_ONE)
			{
				
			}
			else if (type == WATER_TWO)
			{
				
			}
			else if (type == WATER_THREE)
			{
				
			}
			else if (type == WATER_FOUR)
			{
				
			}
			else if (type == WATER_FIVE)
			{
				
			}
			Main.main.addChild(car);
			return car;
		}
		
	}
}
