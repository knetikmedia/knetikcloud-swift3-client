//
// UserRelationshipResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class UserRelationshipResource: JSONEncodable {

    /** The child in the relationship */
    public var child: SimpleUserResource?
    /** Context about the relationship or its type */
    public var context: String?
    /** A generated unique id. Read-Only */
    public var id: Int64?
    /** The parent in the relationship */
    public var parent: SimpleUserResource?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["child"] = self.child?.encodeToJSON()
        nillableDictionary["context"] = self.context
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["parent"] = self.parent?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}