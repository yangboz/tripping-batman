package feathers.examples.mxml.memento
{
	import flash.utils.ByteArray;
	
	import feathers.examples.mxml.memento.namespaces.originatorOnly;

	/**
	 * @author yangboz
	 * @see: http://stackoverflow.com/questions/7348318/saving-and-loading-image-to-local-sqlite-blob-using-flex-4-5
	 */
	public class Memento extends Object
	{
		private var _image:ByteArray;
		
		private var _text:String;

		public function Memento()
		{
		
		}

		originatorOnly function get text():String
		{
			return _text;
		}

		originatorOnly function set text(value:String):void
		{
			_text = value;
		}

		originatorOnly function get image():ByteArray
		{
			return _image;
		}

		originatorOnly function set image(value:ByteArray):void
		{
			_image = value;
		}

	}
}
