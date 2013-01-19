package code	{
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Kyle
	 */
	public class GameObject extends MovieClip	{
	
		protected var manager:GameObjectManager;
		protected var gui:GUI;
		public var state:String = "start";
		
		public function GameObject()	{
			
			super();
			this.stop();
			manager = GameObjectManager.getInstance();
			gui = GUI.getInstance();
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
		
		public function onMouseOut(e:MouseEvent)	{
			
			
		}
		
		//	Functionality functions
		public function makeButton()	{
			
			this.buttonMode = true;
		}
		
		public function unmakeButton()	{
			
			this.buttonMode = false;
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
		
		public function setState(newState:String)	{
			
			state = newState;
		}
	}

}