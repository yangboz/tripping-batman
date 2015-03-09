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
package feathers.examples.mxml
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import flash.display.Sprite;
	
	import assets.EmbedAssets;
	
	import feathers.controls.ScreenNavigator;
	import feathers.controls.ScreenNavigatorItem;
	import feathers.examples.mxml.consts.GlobalConsts;
	import feathers.examples.mxml.consts.GlobalVariables;
	import feathers.examples.mxml.screens.DoodleScreen;
	import feathers.examples.mxml.screens.FilterListScreen;
	import feathers.examples.mxml.screens.LiteralScreen;
	import feathers.examples.mxml.screens.PhotographScreen;
	import feathers.examples.mxml.screens.SampleScreen;
	import feathers.examples.mxml.screens.SettingsScreen;
	import feathers.motion.transitions.ScreenSlidingStackTransitionManager;
	import feathers.themes.MetalWorksMobileTheme;
	
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.ResizeEvent;
	import starling.text.BitmapFont;
	import starling.text.TextField;
	import starling.textures.Texture;

	/**
	 * Main.as MainEntry class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Mar 4, 2015 12:06:00 PM
	 * @history 05/00/12,
	 */ 
	public class Main extends Sprite
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
//		private var _navigator:ScreenNavigator;
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
		public function Main()
		{
			this.addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			this.addEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);
			//
			var texture:Texture = Texture.fromEmbeddedAsset(EmbedAssets.FontTexture);
			var xml:XML = XML(new EmbedAssets.FontXml());
			TextField.registerBitmapFont(new BitmapFont(texture, xml));
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
		private function addedToStageHandler(event:Event):void
		{
			new MetalWorksMobileTheme();
			
			this.stage.addEventListener(ResizeEvent.RESIZE, stage_resizeHandler);
			
			GlobalVariables.screenNavigator = new ScreenNavigator();
			this.addChild(GlobalVariables.screenNavigator);
			
			GlobalVariables.screenNavigator.addScreen(GlobalConsts.SCREEN_NAME_SAMPLE, new ScreenNavigatorItem(SampleScreen,
				{
					settings: GlobalConsts.SCREEN_NAME_SETTINGS
				}));
			
			GlobalVariables.screenNavigator.addScreen(GlobalConsts.SCREEN_NAME_SETTINGS, new ScreenNavigatorItem(SettingsScreen,
				{
					complete: GlobalConsts.SCREEN_NAME_SAMPLE
				}));
			GlobalVariables.screenNavigator.addScreen(GlobalConsts.SCREEN_NAME_DOODLE, new ScreenNavigatorItem(DoodleScreen,
				{
					complete: GlobalConsts.SCREEN_NAME_SAMPLE
				}));
			GlobalVariables.screenNavigator.addScreen(GlobalConsts.SCREEN_NAME_LITERAL, new ScreenNavigatorItem(LiteralScreen,
				{
					complete: GlobalConsts.SCREEN_NAME_SAMPLE
				}));
			GlobalVariables.screenNavigator.addScreen(GlobalConsts.SCREEN_NAME_PHOTOGRAPH, new ScreenNavigatorItem(PhotographScreen,
				{
					complete: GlobalConsts.SCREEN_NAME_SAMPLE
				}));
			GlobalVariables.screenNavigator.addScreen(GlobalConsts.SCREEN_NAME_FILTERLIST, new ScreenNavigatorItem(FilterListScreen,
				{
					complete: GlobalConsts.SCREEN_NAME_SAMPLE
				}));
			
			new ScreenSlidingStackTransitionManager(GlobalVariables.screenNavigator);
			
			GlobalVariables.screenNavigator.showScreen(GlobalConsts.SCREEN_NAME_SAMPLE);
		}
		
		private function removedFromStageHandler(event:Event):void
		{
			this.stage.removeEventListener(ResizeEvent.RESIZE, stage_resizeHandler);
		}
		
		private function stage_resizeHandler(event:Event):void
		{
			GlobalVariables.screenNavigator.width = this.stage.stageWidth;
			GlobalVariables.screenNavigator.height = this.stage.stageHeight;
		}
	}
	
}