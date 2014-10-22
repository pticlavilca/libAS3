/**
 * Created by Usuario on 20/10/2014.
 */
package img.load {
import flash.display.Bitmap;
import flash.events.Event;

public class EventImageCompleteLoad extends Event {
    public var isLoad:Boolean;
    public static const COMPLETE_LOAD:String="COMPLETE_LOAD";
    public var bitmap:Bitmap;

    public function EventImageCompleteLoad(type:String, _isLoad:Boolean, _bitmap:Bitmap) {
        super(type);
        isLoad = _isLoad;
        this.bitmap = _bitmap;
    }
}
}
