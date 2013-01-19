package code.GameObjects 
{
	import code.GameObject;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Armoire extends GameObject 
	{
		
		public function Armoire() 
		{
			
		}
		
		public override function init()	{
			
			manager.initObject(this, "armoire");
			makeButton();
		}
		
	}

}