/**
 * GODPAPER Confidential,Copyright 2015. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person
 obtaining
 * a copy of this software and associated documentation files (the
 "Software"),
 * to deal in the Software without restriction, including without
 limitation
 * the rights to use, copy, modify, merge, publish, distribute,
 sub-license,
 * and/or sell copies of the Software, and to permit persons to whom
 the
 * Software is furnished to do so, subject to the following
 conditions:
 *
 * The above copyright notice and this permission notice shall be
 included
 * in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT
 SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
 OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
 ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 DEALINGS
 * IN THE SOFTWARE.
 */
package feathers.examples.mxml.consts
{
	import com.probertson.data.SQLRunner;
	
	import flash.filesystem.File;
	
	import feathers.controls.ScreenNavigator;
	import feathers.examples.mxml.model.DoodleModel;
	import feathers.examples.mxml.model.LiteralModel;
	import feathers.examples.mxml.model.PhotographModel;
	import feathers.examples.mxml.utils.SingletonFactory;

	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * GlobalVariables.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Mar 4, 2015 12:29:29 PM
	 * @history 05/00/12,
	 */ 
	public class GlobalVariables
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		public static var screenNavigator:ScreenNavigator;
		//
		// SQLite setup code:
		// define database file location
		public static var dbFile:File = File.applicationStorageDirectory.resolvePath("TeeDatabase.db");
		// create the SQLRunner
		public static var sqlRunner:SQLRunner = new SQLRunner(dbFile);
		//
		public static var model_doodle:DoodleModel = SingletonFactory.produce(DoodleModel);
		public static var model_literal:LiteralModel = SingletonFactory.produce(LiteralModel);
		public static var model_photograph:PhotographModel = SingletonFactory.produce(PhotographModel);
		//----------------------------------
		// CONSTANTS
		//----------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Public properties
		//
		//--------------------------------------------------------------------------
		
		
		//--------------------------------------------------------------------------
		//
		// Protected properties
		//
		//--------------------------------------------------------------------------
		
		
		//--------------------------------------------------------------------------
		//
		// Constructor
		//
		//--------------------------------------------------------------------------
		public function GlobalVariables()
		{
		} 
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Protected methods
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		// Private methods
		//
		//--------------------------------------------------------------------------
	}
	
}