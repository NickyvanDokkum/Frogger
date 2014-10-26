package
{
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Game 
	{
		public static var lvl:Number = 1;
		public static var FrogScore:Number = 0;
		public var _startLvlOne:StartLvlOne;
		public var _startLvlTwo:StartLvlTwo;
		public function Game() 
		{
			if (lvl == 1) {
				_startLvlOne = new StartLvlOne;
			}
			else if(lvl == 2) {
				_startLvlTwo = new StartLvlTwo;
			}
			else {
				
			}
		}
	}
}