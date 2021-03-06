//
// VideoRelationshipResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class VideoRelationshipResource: JSONEncodable {

    /** The owner of the relationship */
    public var from: SimpleReferenceResourcelong?
    /** The id of the relationship */
    public var id: Int64?
    /** Details about the relationship such as type or other information. Max length 10 characters */
    public var relationshipDetails: String?
    /** The target of the relationship. */
    public var to: SimpleReferenceResourcelong?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["from"] = self.from?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["relationship_details"] = self.relationshipDetails
        nillableDictionary["to"] = self.to?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
