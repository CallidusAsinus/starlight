package code.GameObjects 
{
	import code.GameObject;
	
	/**
	 * ...
	 * @author ...
	 */
	public class TitleScreen extends GameObject 
	{
		
		public function TitleScreen() 
		{
			super();
			
		}
		
		public override function init()	{
			
			manager.initObject(this, "titleScreen");
		}
		
	}

}