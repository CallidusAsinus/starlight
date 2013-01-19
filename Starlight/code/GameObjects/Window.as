package code.GameObjects 
{
	import code.GameObject;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Window extends GameObject 
	{
		
		public function Window() 
		{
			
		}
		
		public override function init()	{
			
			manager.initObject(this, "window");
			makeButton();
		}
		
	}

}