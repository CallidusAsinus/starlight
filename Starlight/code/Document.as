package code	{
	
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author Kyle
	 */
	public class Document extends MovieClip	{
		
		public function Document()	{
			
			var gom:GameObjectManager = GameObjectManager.getInstance();
			gom.setDoc(this);
		}
		
	}

}