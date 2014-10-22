/**
 * Created by Usuario on 20/10/2014.
 */
package xml.load {

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.net.URLLoader;
import flash.net.URLRequest;

public class XMLLoader extends EventDispatcher{
    private var url:String;

    public function XMLLoader(_url:String) {

        this.url = _url;
        init();
    }

    private function init():void {
        var urlLoader:URLLoader = new URLLoader();
        urlLoader.addEventListener(Event.COMPLETE, handlerCompleteLoad);
        urlLoader.load(new URLRequest(this.url));
    }

    private function handlerCompleteLoad(event:Event):void {
        var xml:XML = new XML(event.target.data);
        this.dispatchEvent(new EventXMLCompleteLoad(EventXMLCompleteLoad.COMPLETE_LOAD, true, xml));

    }
}
}
