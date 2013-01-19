package code	{
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Kyle
	 */
	public class GameObject extends MovieClip	{
	
		protected var manager:GameObjectManager;
		public var state:String = "start";
		
		public function GameObject()	{
			
			super();
			manager = GameObjectManager.getInstance();
		}
		
		public function init()	{
			
			trace(this + " init not overridden");
		}
		
		//	EventListener handlers
		public function onClick(e:MouseEvent)	{
			
			trace(this + " onClick not overridden");
		}
		
		public function onMouseOver(e:MouseEvent)	{
			
			trace(this + " onMouseOver not overridden");
		}
		
		//	Functionality functions
		protected function makeButton()	{
			
			this.buttonMode = true;
		}
		
		//	Animation functions
		public function playAnimation(label:String)	{
			
			gotoAndPlay(label);
		}
		
		public function hide()	{
			
			this.visible = false;
		}
		
		public function show()	{
			
			this.visible = true;
		}
		
		public function setZ(index)	{
			
			
		}
	}

}