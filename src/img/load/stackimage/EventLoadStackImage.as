/**
 * Created by Usuario on 22/10/2014.
 */
package img.load.stackimage {
import flash.display.MovieClip;
import flash.events.Event;

public class EventLoadStackImage extends Event {

    public static const COMPLETE_LOAD:String = "COMPLETE_LOAD";
    public var vector:Vector.<MovieClip>;
    public var isLoad:Boolean;

    public function EventLoadStackImage(type:String, _vector:Vector.<MovieClip>, _isLoad:Boolean) {
        super(type);

        vector = _vector;
        isLoad = _isLoad;
    }
}
}
