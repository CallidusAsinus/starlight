package code.GameObjects 
{
	import code.GameObject;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Blocker extends GameObject 
	{
		
		public function Blocker() 
		{
			
		}
		
		public override function init()	{
			
			manager.initObject(this, "blocker");
		}
		
	}

}