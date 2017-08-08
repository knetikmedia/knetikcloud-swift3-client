//
// AmazonS3Activity.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class AmazonS3Activity: JSONEncodable {

    /** S3 action (i.e., &#39;PUT&#39;) associated with the activity */
    public var action: String?
    /** URL for accessing the resource via CDN if configured (will default to the main url if not) */
    public var cdnUrl: String?
    /** Date the resource was created in S3 */
    public var createdDate: Int64?
    /** Name of the file being processed as a resource in S3 */
    public var filename: String?
    /** Unique id of the S3 activity */
    public var id: Int64?
    /** S3 object key for the resource */
    public var objectKey: String?
    /** URL for posting and later accessing the S3 resource */
    public var url: String?
    /** The id of the user that created this S3 activity */
    public var userId: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["action"] = self.action
        nillableDictionary["cdn_url"] = self.cdnUrl
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["filename"] = self.filename
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["object_key"] = self.objectKey
        nillableDictionary["url"] = self.url
        nillableDictionary["user_id"] = self.userId?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
