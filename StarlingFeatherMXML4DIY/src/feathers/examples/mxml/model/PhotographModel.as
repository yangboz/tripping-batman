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
package feathers.examples.mxml.model
{
	import flash.errors.IllegalOperationError;
	
	import feathers.examples.mxml.memento.Memento;

	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * PhotographModel.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Mar 11, 2015 5:20:15 PM
	 * @history 05/00/12,
	 */ 
	public class PhotographModel extends ModelBase
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		
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
		public function PhotographModel()
		{
		} 
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		override public function setMemento( memento : Memento ) : void
		{
			//TODO:
		}
		
		override protected function doMakeMemento() : Memento
		{
			throw new IllegalOperationError( 'doMakeMomento must be overridden' )
			return null;
		}
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