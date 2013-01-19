package code 
{
	/**
	 * ...
	 * @author ...
	 */
	public class GUI extends GameObject 
	{
		//	Array of GUIObjects
		private var objects:Array;
		
		public function GUI() 
		{
			
		}
		
		public override function init()	{
			
			manager.initObject(this, "gui");
		}

		public function addObject(obj:GameObject)	{
			
			var xBuffer:int = 3;
			var yBuffer:int = 3;
			
			obj.y = yBuffer;
			
			//	get the cumulative width of all objects in the inventory
			var xDisp:int = 0;
			for (var i = 0; i < objects.length; i++)	{
				
				xDisp += objects[i].width;
				xDisp += xBuffer;
			}
			
			obj.x = xDisp;
			
			this.addChild(obj);
		}
		
		public function removeObject(obj:GUIObject)	{
			
			
		}
	}

}