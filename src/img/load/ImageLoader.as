
package img.load {


import flash.display.Loader;
import flash.display.MovieClip;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.net.URLRequest;

public class ImageLoader extends EventDispatcher{

        private var url:String;
        private var loader:Loader;

        public function ImageLoader(_url:String) {
            this.url = _url;
            init();
        }

        private function init():void {
            loader = new Loader();
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, handlerComplete)

        }

        public function load():void{
            loader.load(new URLRequest(url));
        }

        private function handlerComplete(event:Event):void {
            this.dispatchEvent(new EventImageCompleteLoad(EventImageCompleteLoad.COMPLETE_LOAD, true, event.target.content));
        }
    }
}
