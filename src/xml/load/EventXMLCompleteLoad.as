/**
 * Created by Usuario on 20/10/2014.
 */
package xml.load {
import flash.events.Event;

public class EventXMLCompleteLoad extends Event{
    public var isLoad:Boolean;
    public static const COMPLETE_LOAD:String="COMPLETE_LOAD";

    public function EventXMLCompleteLoad(type:String, _isLoad:Boolean) {
        super(type)
        isLoad = _isLoad;

    }
}
}
