package code 
{
	/**
	 * ...
	 * @author ...
	 */
	public class GUI extends GameObject 
	{
		//	Singleton stuff
		private static var instance:GUI;
		private static var initializing:Boolean = false;
		
		//	Array of GUIObjects
		private var objects:Array;
		
		public function GUI()	{

			objects = new Array();	
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
		
		//	Get the singleton instance of this class
		public static function getInstance():GUI	{
			
			return instance;
		}
	}

}