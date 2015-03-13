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
package feathers.examples.mxml.utils
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import starling.core.RenderSupport;
	import starling.core.Starling;
	import starling.display.DisplayObject;
	import starling.display.Stage;

	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	
	/**
	 * StarlingTools.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Mar 13, 2015 11:01:31 AM
	 * @history 05/00/12,
	 */ 
	public class StarlingTools
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
		public function StarlingTools()
		{
		} 
		//--------------------------------------------------------------------------
		//
		// Public methods
		//
		//--------------------------------------------------------------------------
		public static function drawToBitmap(displayObject:starling.display.DisplayObject):Bitmap {
			
			var stageWidth:Number = Starling.current.stage.stageWidth;
			var stageHeight:Number = Starling.current.stage.stageHeight;
			
			var support:RenderSupport = new RenderSupport();
			RenderSupport.clear();
			support.setProjectionMatrix(0, 0, stageWidth, stageHeight);
//			support.setOrthographicProjection(0, 0, stageWidth, stageHeight);
			support.applyBlendMode(true);
			
			var stageBitmapData:BitmapData = new BitmapData(stageWidth, stageHeight, true, 0x0);
			support.blendMode = displayObject.blendMode;
			displayObject.render(support, 1.0);
			support.finishQuadBatch();
			Starling.context.drawToBitmapData(stageBitmapData);
			
			var cropBounds:Rectangle = new Rectangle(0, 0, displayObject.width / displayObject.scaleX, displayObject.height / displayObject.scaleY);
			var resultBitmapData:BitmapData = new BitmapData(cropBounds.width, cropBounds.height, true, 0x0);
			resultBitmapData.copyPixels(stageBitmapData, cropBounds, new Point());
			
			var resultBitmap:Bitmap = new Bitmap(resultBitmapData);
			resultBitmap.scaleX = displayObject.scaleX;
			resultBitmap.scaleY = displayObject.scaleY;
			return resultBitmap;
		}
		
		public static function copyToBitmap(disp:DisplayObject, scl:Number=1.0):BitmapData
		{
			var rc:Rectangle = new Rectangle();
			disp.getBounds(disp, rc);
			
			var stage:Stage= Starling.current.stage;
			var rs:RenderSupport = new RenderSupport();
			
			rs.clear();
			rs.scaleMatrix(scl, scl);
//			rs.setOrthographicProjection(0, 0, stage.stageWidth, stage.stageHeight);
			rs.setProjectionMatrix(0, 0, stage.stageWidth, stage.stageHeight);
			rs.translateMatrix(-rc.x, -rc.y); // move to 0,0
			disp.render(rs, 1.0);
			rs.finishQuadBatch();
			
			var outBmp:BitmapData = new BitmapData(rc.width*scl, rc.height*scl, true);
			Starling.context.drawToBitmapData(outBmp);
			
			return outBmp;
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