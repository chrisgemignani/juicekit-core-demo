package util
{
	/**
	 * A simple model object to use for demos
	 */
	[Bindable]
	public class TestModel
	{
		public var name:String = 'Undefined';
		public var val:Number = 0;
		
		public function TestModel(name:String, val:Number)
		{
			this.name = name;
			this.val = val;
		}
	}
}