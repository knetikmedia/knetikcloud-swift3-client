//
// ErrorResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ErrorResource: JSONEncodable {
    /** Extra details about the error, if needed */
    public var details: Any?
    /** The JSON key the message pertains to */
    public var field: Any?
    /** The message explaining the error */
    public var message: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["details"] = self.details
        nillableDictionary["field"] = self.field
        nillableDictionary["message"] = self.message
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
