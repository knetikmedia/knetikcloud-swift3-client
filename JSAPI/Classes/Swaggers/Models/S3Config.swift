//
// S3Config.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class S3Config: JSONEncodable {

    public var bucketName: String?
    public var cdnUrl: String?
    public var region: String?
    public var uploadPrefix: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["bucket_name"] = self.bucketName
        nillableDictionary["cdn_url"] = self.cdnUrl
        nillableDictionary["region"] = self.region
        nillableDictionary["upload_prefix"] = self.uploadPrefix

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}