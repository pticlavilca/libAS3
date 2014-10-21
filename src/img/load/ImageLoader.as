/**
 * Created by Usuario on 20/10/2014.
 */
package img.load {


import flash.display.Loader;
import flash.display.MovieClip;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.net.URLRequest;

public class ImageLoader extends EventDispatcher{

        private var url:String;
        private var container:MovieClip;
        private var loader:Loader;

        public function ImageLoader(_url:String, _container:MovieClip) {
            this.url = _url;
            this.container = _container;
            init();
        }

        private function init():void {
            loader = new Loader();
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, handlerComplete)
            loader.load(new URLRequest(url));
        }

        private function handlerComplete(event:Event):void {
            container.addChild(event.target.content)
            this.dispatchEvent(new EventImageCompleteLoad(EventImageCompleteLoad.COMPLETE_LOAD, true));



        }
    }
}
