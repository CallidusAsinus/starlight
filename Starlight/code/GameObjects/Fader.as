package code.GameObjects 
{
	import code.GameObject;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Fader extends GameObject 
	{
		
		public function Fader() 
		{
			
		}
		
		public override function init()	{
			
			manager.initObject(this, "fader");
		}
		
	}

}