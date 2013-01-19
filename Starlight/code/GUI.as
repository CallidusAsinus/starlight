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
		
		//	Array of GUIObjects
		private var objects:Array;
		
		public function GUI()	{

				objects = new Array();	
		}
		
		public override function init()	{
			
			manager.initObject(this, "gui");
		}

		public function addObject(obj:GUIObject)	{
			
			var xBuffer:int = 3;
			var yBuffer:int = 0;
			
			obj.y = yBuffer;
			
			//	get the cumulative width of all objects in the inventory
			var xDisp:int = 0;
			for (var i = 0; i < objects.length; i++)	{
				
				xDisp += objects[i].width;
				xDisp += xBuffer;
			}
			
			obj.x = xDisp;
			
			objects.push(obj);
			instance.addChild(obj);
			
			trace("added " + obj);
		}
		
		public function removeObject(obj:GUIObject)	{
			
			
		}
		
		public static function initInstance(gui:GUI)	{
			
			instance = gui;
		}
		
		public static function getInstance():GUI	{
			
			return instance;
		}
		
	}

}