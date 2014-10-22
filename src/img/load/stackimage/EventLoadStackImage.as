/**
 * Created by Usuario on 22/10/2014.
 */
package img.load.stackimage {
import flash.display.MovieClip;
import flash.events.Event;

public class EventLoadStackImage extends Event {

    public static const COMPLETE_LOAD:String = "COMPLETE_LOAD";
    public var imageVector:Vector.<MovieClip>;
    public var isLoad:Boolean;
    public var descriptionVector:Vector.<String>;

    public function EventLoadStackImage(type:String, _imageVector:Vector.<MovieClip>, _isLoad:Boolean, _descriptionVector:Vector.<String>) {
        super(type);

        imageVector = _imageVector;
        isLoad = _isLoad;
        this.descriptionVector = _descriptionVector;
    }
}
}
