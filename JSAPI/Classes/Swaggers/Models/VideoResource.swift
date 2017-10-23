//
// VideoResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class VideoResource: JSONEncodable {

    public enum Privacy: String { 
        case _private = "private"
        case friends = "friends"
        case _public = "public"
    }
    /** Whether the video is available, based on various factors */
    public var active: Bool?
    /** The original artist of the media */
    public var author: SimpleReferenceResourcelong?
    /** The date the media was created as a unix timestamp in seconds */
    public var authored: Int64?
    /** Whether the video has been banned or not */
    public var banned: Bool?
    /** The category of the video */
    public var category: SimpleReferenceResourcestring?
    /** The comments of the video */
    public var comments: [CommentResource]?
    /** Artists that contributed to the creation. See separate endpoint to add to list */
    public var contributors: [ContributionResource]?
    /** The date/time this resource was created in seconds since unix epoch */
    public var createdDate: Int64?
    /** The country of an embedable version */
    public var embed: String?
    /** The file extension of the media file. 1-5 characters */
    public var _extension: String?
    /** The height of the video in px */
    public var height: Int32?
    /** The unique ID for that resource */
    public var id: Int64?
    /** The length of the video in seconds */
    public var length: Int32?
    /** The country of the media. Typically a url. Cannot be blank */
    public var location: String?
    /** The user friendly name of that resource. Defaults to blank string */
    public var longDescription: String?
    /** The mime-type of the media */
    public var mimeType: String?
    /** The user friendly name of that resource */
    public var name: String?
    /** The sort order of the video. default: 100 */
    public var priority: Int32?
    /** The privacy setting. default: private */
    public var privacy: Privacy?
    /** Whether the video has been made public. Default true */
    public var published: Bool?
    /** The user friendly name of that resource. Defaults to blank string */
    public var shortDescription: String?
    /** The size of the media. Minimum 0 if supplied */
    public var size: Int64?
    /** The tags for the video */
    public var tags: [String]?
    /** The country of a thumbnail version. Typically a url */
    public var thumbnail: String?
    /** The date/time this resource was last updated in seconds since unix epoch */
    public var updatedDate: Int64?
    /** The user the media was uploaded by. May be null for system uploaded media. May only be set to a user other than the current caller if VIDEOS_ADMIN permission. Null will mean the caller is the uploader unless the caller has VIDEOS_ADMIN permission, in which case it will be set to null */
    public var uploader: SimpleUserResource?
    /** The view count of the video */
    public var views: Int64?
    /** The width of the video in px */
    public var width: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["active"] = self.active
        nillableDictionary["author"] = self.author?.encodeToJSON()
        nillableDictionary["authored"] = self.authored?.encodeToJSON()
        nillableDictionary["banned"] = self.banned
        nillableDictionary["category"] = self.category?.encodeToJSON()
        nillableDictionary["comments"] = self.comments?.encodeToJSON()
        nillableDictionary["contributors"] = self.contributors?.encodeToJSON()
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["embed"] = self.embed
        nillableDictionary["extension"] = self._extension
        nillableDictionary["height"] = self.height?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["length"] = self.length?.encodeToJSON()
        nillableDictionary["location"] = self.location
        nillableDictionary["long_description"] = self.longDescription
        nillableDictionary["mime_type"] = self.mimeType
        nillableDictionary["name"] = self.name
        nillableDictionary["priority"] = self.priority?.encodeToJSON()
        nillableDictionary["privacy"] = self.privacy?.rawValue
        nillableDictionary["published"] = self.published
        nillableDictionary["short_description"] = self.shortDescription
        nillableDictionary["size"] = self.size?.encodeToJSON()
        nillableDictionary["tags"] = self.tags?.encodeToJSON()
        nillableDictionary["thumbnail"] = self.thumbnail
        nillableDictionary["updated_date"] = self.updatedDate?.encodeToJSON()
        nillableDictionary["uploader"] = self.uploader?.encodeToJSON()
        nillableDictionary["views"] = self.views?.encodeToJSON()
        nillableDictionary["width"] = self.width?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
