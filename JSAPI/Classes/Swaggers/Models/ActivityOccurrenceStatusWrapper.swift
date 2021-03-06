//
// ActivityOccurrenceStatusWrapper.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ActivityOccurrenceStatusWrapper: JSONEncodable {

    public enum Value: String { 
        case setup = "SETUP"
        case open = "OPEN"
        case launching = "LAUNCHING"
        case playing = "PLAYING"
        case finished = "FINISHED"
        case abandoned = "ABANDONED"
    }
    public var value: Value?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["value"] = self.value?.rawValue

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
