package code	{
	
	/**
	 * ...
	 * @author Kyle
	 */
	public class GameObjectManager	{
		
		//	Singleton stuff
		private static var instance:GameObjectManager;
		private static var initializing:Boolean = false;
		
		private var doc:Document;
		
		//	Associative array of GameObjects
		private var objects:Object;
		
		public function GameObjectManager()	{
			if(!initializing)	{
				
				trace("Illigal constructor call on " + this)
			}
			
			else	{
				
				objects = new Object();
			}
			
		}
		
		public function setDoc(aDoc:Document)	{
			
			doc = aDoc;
		}
		
		public function initObject(obj:GameObject, name:String)	{
			
			objects[name] = obj;
			trace("manager initialized " + name + " as " + objects[name]);
		}
		
		public function getObject(name:String):GameObject	{
			
			if (objects[name])	{
				
				return objects[name];
			}
			
			return null;
		}
		
		public function block()	{
			
			getObject("blocker").playAnimation("up");
		}
		
		public function unblock()	{
			
			getObject("blocker").playAnimation("down");
		}
		
		//	Get the singleton instance of this class
		public static function getInstance():GameObjectManager	{
			if(!instance)	{
				
				initializing = true;
				instance = new GameObjectManager();
				initializing = false;
			}
			
			return instance;
		}

	}

}