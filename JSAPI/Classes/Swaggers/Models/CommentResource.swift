//
// CommentResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CommentResource: JSONEncodable {

    /** The comment content of that resource */
    public var content: String?
    /** The type of object this comment applies to (ex: video, article, etc). Required when passed to /comments */
    public var context: String?
    /** The id of the object this comment applies to.  Required when passed to /comments */
    public var contextId: Int32?
    /** The date/time this resource was created in seconds since epoch */
    public var createdDate: Int64?
    /** The unique ID for that resource */
    public var id: Int64?
    /** The summary of that resource */
    public var summary: String?
    /** The date/time this resource was last updated in seconds since epoch */
    public var updatedDate: Int64?
    /** The user who created the comment */
    public var user: SimpleUserResource?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["content"] = self.content
        nillableDictionary["context"] = self.context
        nillableDictionary["context_id"] = self.contextId?.encodeToJSON()
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["summary"] = self.summary
        nillableDictionary["updated_date"] = self.updatedDate?.encodeToJSON()
        nillableDictionary["user"] = self.user?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
