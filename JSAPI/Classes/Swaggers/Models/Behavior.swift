//
// Behavior.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Behavior: JSONEncodable {

    public var description: String?
    /** Used for polymorphic type recognition and thus must match an expected type with additional properties */
    public var typeHint: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["description"] = self.description
        nillableDictionary["type_hint"] = self.typeHint

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
