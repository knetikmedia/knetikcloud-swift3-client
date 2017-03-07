//
// DispositionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class DispositionResource: JSONEncodable {
    /** The context of that resource. Required when passed to /dispositions rather than context specific endpoint */
    public var context: String?
    /** The context_id of that resource. Required when passed to /dispositions rather than context specific endpoint */
    public var contextId: String?
    /** The date/time this resource was created in seconds since unix epoch */
    public var createdDate: Int64?
    /** The unique ID for that resource */
    public var id: Int64?
    /** The name of the disposition, 1-20 characters. (ex: like/dislike/favorite, etc) */
    public var name: String?
    /** The user */
    public var user: SimpleUserResource?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["context"] = self.context
        nillableDictionary["context_id"] = self.contextId
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["user"] = self.user?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
