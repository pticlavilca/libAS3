/**
 * Created by Usuario on 21/10/2014.
 */
package img.load.stackimage {
import flash.display.MovieClip;
import flash.events.EventDispatcher;
import img.load.EventImageCompleteLoad;
import img.load.ImageLoader;
import xml.load.EventXMLCompleteLoad;
import xml.load.XMLLoader;

/*References
 <element>
 <url>images/001.jpg</url>
 <description>Description</description>
 </element>
 */

public class LoadStackImage extends EventDispatcher{


    private var url:String;
    private var imageVector:Vector.<MovieClip>;
    private var descriptionVector:Vector.<String>;

    public function LoadStackImage(_url:String) {

        imageVector = new Vector.<MovieClip>();
        descriptionVector = new Vector.<String>;
        this.url = _url;


        loadConfig();

    }

    private var configXML:XML;
    private var xmlLoader:XMLLoader;
    private function loadConfig():void {


        xmlLoader = new XMLLoader(url);
        xmlLoader.addEventListener(EventXMLCompleteLoad.COMPLETE_LOAD, handler_completeLoadXMLLoader);
    }

    private function handler_completeLoadXMLLoader(event:EventXMLCompleteLoad):void {
        configXML = event.xml;
        loadText();
        loadImage();
    }

    private function loadText():void {
        for(var i:Number = 0; i<configXML.element.length(); i++){
            descriptionVector.push(configXML.element[i].description);
        }
    }



    private function loadImage():void {


        for(var i:Number = 0; i<configXML.element.length(); i++){

            var imageLoader:ImageLoader = new ImageLoader(configXML.element[i].url);
            imageLoader.addEventListener(EventImageCompleteLoad.COMPLETE_LOAD, handler_imageLoaderCompleteLoad);
            imageLoader.load();

        }
    }


    private function handler_imageLoaderCompleteLoad(event:EventImageCompleteLoad):void {
        var movieClip:MovieClip = new MovieClip()
        movieClip.addChild(event.bitmap);
        imageVector.push(movieClip);

        try{
            if(imageVector[configXML.element.length()-1].numChildren){
                this.dispatchEvent(new EventLoadStackImage(EventLoadStackImage.COMPLETE_LOAD, imageVector,true, descriptionVector));
            }
        }
        catch(e:Error){

        }


    }
}
}
