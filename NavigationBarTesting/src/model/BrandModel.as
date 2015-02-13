package model
{
	public class BrandModel
	{
	  	public function BrandModel(id:String,name:String,module:String,logo_path:String)
		{
			this._id = id;
			this._name = name;
			this._logo_path = logo_path;
			this._module = module;
		}
		
		private var _id:String;
		private var _name:String;
		private var _module:String;
		private var _logo_path:String;
		
		public function get logo_path():String
		{
			return _logo_path;
		}

		public function set logo_path(value:String):void
		{
			_logo_path = value;
		}

		public function get module():String
		{
			return _module;
		}

		public function set module(value:String):void
		{
			_module = value;
		}

		public function get name():String
		{
			return _name;
		}

		public function set name(value:String):void
		{
			_name = value;
		}

		public function get id():String
		{
			return _id;
		}

		public function set id(value:String):void
		{
			_id = value;
		}

	}
}