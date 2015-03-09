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
package assets
{
	//--------------------------------------------------------------------------
	//
	// Imports
	//
	//--------------------------------------------------------------------------
	import starling.text.BitmapFont;
	import starling.text.TextField;
	import starling.textures.Texture;

	/**
	 * EmbedAssets.as class. 
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Mar 4, 2015 8:26:45 PM
	 * @history 05/00/12,
	 */ 
	public class EmbedAssets
	{ 
		//--------------------------------------------------------------------------
		//
		// Variables
		//
		//--------------------------------------------------------------------------
		// particle designer configurations
		
		[Embed(source="../media/drugs.pex", mimeType="application/octet-stream")]
		public static const DrugsConfig:Class;
		
		[Embed(source="../media/fire.pex", mimeType="application/octet-stream")]
		public static const FireConfig:Class;
		
		[Embed(source="../media/sun.pex", mimeType="application/octet-stream")]
		public static const SunConfig:Class;
		
		[Embed(source="../media/jellyfish.pex", mimeType="application/octet-stream")]
		public static const JellyfishConfig:Class;
		
		// particle textures
		
		[Embed(source = "../media/drugs_particle.png")]
		public static const DrugsParticle:Class;
		
		[Embed(source = "../media/fire_particle.png")]
		public static const FireParticle:Class;
		
		[Embed(source = "../media/sun_particle.png")]
		public static const SunParticle:Class;
		
		[Embed(source = "../media/jellyfish_particle.png")]
		public static const JellyfishParticle:Class;
		/// fonts texture
		[Embed(source="fonts/simhei/font.fnt", mimeType="application/octet-stream")]
		public static const FontXml:Class;
		
		[Embed(source = "fonts/simhei/font.png")]
		public static const FontTexture:Class;
		
		/// image texture
		[Embed(source = "wordpress.png")]
		public static const IconWordpressTexture:Class;
		
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
		public function EmbedAssets()
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