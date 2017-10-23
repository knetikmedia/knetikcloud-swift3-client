//
// BreTriggerParameterDefinition.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class BreTriggerParameterDefinition: JSONEncodable {

    /** Whether this parameter is implicitely derived from another. Internal use only. */
    public var implicit: Bool?
    /** The name of the parameter. This is used as the unique identifier of this parameter */
    public var name: String?
    /** Whether this parameter can be left off when firing the event. Default false */
    public var _optional: Bool?
    /** The variable type of this parameter. See Bre Variables endpoint for list */
    public var type: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["implicit"] = self.implicit
        nillableDictionary["name"] = self.name
        nillableDictionary["optional"] = self._optional
        nillableDictionary["type"] = self.type

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
