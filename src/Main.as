package {

import flash.display.Sprite;
import flash.text.TextField;

import img.load.stackimage.EventLoadStackImage;

import img.load.stackimage.LoadStackImage;

public class Main extends Sprite {
    public function Main() {

        var loadStackImage:LoadStackImage = new LoadStackImage("config.xml");
        loadStackImage.addEventListener(EventLoadStackImage.COMPLETE_LOAD, handler_loadStackImage);

    }

    private function handler_loadStackImage(event:EventLoadStackImage):void {
        addChild(event.imageVector[0]);

        var textfield:TextField = new TextField();

        textfield.text = event.descriptionVector[0];

        addChild(textfield);
    }
}
}
