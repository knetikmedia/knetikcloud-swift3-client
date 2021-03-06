//
// ContributionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ContributionResource: JSONEncodable {

    /** A reference to the contributing artist */
    public var artist: SimpleReferenceResourcelong?
    /** A reference to the media being contributed to */
    public var media: SimpleReferenceResourcelong?
    /** The nature of the contribution (role of the artist as in &#39;producer&#39;, &#39;performer&#39;, etc) */
    public var role: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["artist"] = self.artist?.encodeToJSON()
        nillableDictionary["media"] = self.media?.encodeToJSON()
        nillableDictionary["role"] = self.role

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
