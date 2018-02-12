//
// WebsocketUnsubscribeEvent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class WebsocketUnsubscribeEvent: BroadcastableEvent {

    public var topic: Topic?
    public var topicSubscriber: TopicSubscriber?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["topic"] = self.topic?.encodeToJSON()
        nillableDictionary["topic_subscriber"] = self.topicSubscriber?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}