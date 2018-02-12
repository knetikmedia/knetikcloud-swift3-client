//
// AmazonWebServicesS3API.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class AmazonWebServicesS3API: APIBase {
    /**
     Get a temporary signed S3 URL for download
     - parameter bucket: (query) S3 bucket name (optional)
     - parameter path: (query) The path to the file relative the bucket (the s3 object key) (optional)
     - parameter expiration: (query) The number of seconds this URL will be valid. Default to 60 (optional, default to 60)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDownloadURL(bucket: String? = nil, path: String? = nil, expiration: Int32? = nil, completion: @escaping ((_ data: String?, _ error: ErrorResponse?) -> Void)) {
        getDownloadURLWithRequestBuilder(bucket: bucket, path: path, expiration: expiration).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a temporary signed S3 URL for download
     - GET /amazon/s3/downloadurl
     - To give access to files in your own S3 account, you will need to grant KnetikcCloud access to the file by adjusting your bucket policy accordingly. See S3 documentation for details. <br><br><b>Permissions Needed:</b> S3_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=""}]
     - parameter bucket: (query) S3 bucket name (optional)
     - parameter path: (query) The path to the file relative the bucket (the s3 object key) (optional)
     - parameter expiration: (query) The number of seconds this URL will be valid. Default to 60 (optional, default to 60)
     - returns: RequestBuilder<String> 
     */
    open class func getDownloadURLWithRequestBuilder(bucket: String? = nil, path: String? = nil, expiration: Int32? = nil) -> RequestBuilder<String> {
        let path = "/amazon/s3/downloadurl"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "bucket": bucket, 
            "path": path, 
            "expiration": expiration?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<String>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a signed S3 URL for upload
     - parameter filename: (query) The file name (optional)
     - parameter contentType: (query) The content type (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSignedS3URL(filename: String? = nil, contentType: String? = nil, completion: @escaping ((_ data: AmazonS3Activity?, _ error: ErrorResponse?) -> Void)) {
        getSignedS3URLWithRequestBuilder(filename: filename, contentType: contentType).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a signed S3 URL for upload
     - GET /amazon/s3/signedposturl
     - Requires the file name and file content type (i.e., 'video/mpeg'). Make a PUT to the resulting url to upload the file and use the cdn_url to retrieve it after. <br><br><b>Permissions Needed:</b> S3_USER or S3_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "filename" : "filename",
  "object_key" : "object_key",
  "cdn_url" : "cdn_url",
  "user_id" : 1,
  "action" : "action",
  "created_date" : 0,
  "id" : 6,
  "url" : "url"
}}]
     - parameter filename: (query) The file name (optional)
     - parameter contentType: (query) The content type (optional)
     - returns: RequestBuilder<AmazonS3Activity> 
     */
    open class func getSignedS3URLWithRequestBuilder(filename: String? = nil, contentType: String? = nil) -> RequestBuilder<AmazonS3Activity> {
        let path = "/amazon/s3/signedposturl"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filename": filename, 
            "content_type": contentType
        ])

        let requestBuilder: RequestBuilder<AmazonS3Activity>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
