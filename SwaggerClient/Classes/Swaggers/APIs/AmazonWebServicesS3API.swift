//
// AmazonWebServicesS3API.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class AmazonWebServicesS3API: APIBase {
    /**
     Get a signed S3 URL
     
     - parameter filename: (query) The file name (optional)
     - parameter contentType: (query) The content type (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSignedS3URL(filename: String? = nil, contentType: String? = nil, completion: @escaping ((_ data: AmazonS3Activity?,_ error: Error?) -> Void)) {
        getSignedS3URLWithRequestBuilder(filename: filename, contentType: contentType).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a signed S3 URL
     - GET /amazon/s3/signedposturl
     - Requires the file name and file content type (i.e., 'video/mpeg')
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "filename" : "aeiou",
  "object_key" : "aeiou",
  "user_id" : 4,
  "action" : "aeiou",
  "created_date" : 8,
  "id" : 1,
  "url" : "aeiou"
}}]
     
     - parameter filename: (query) The file name (optional)
     - parameter contentType: (query) The content type (optional)

     - returns: RequestBuilder<AmazonS3Activity> 
     */
    open class func getSignedS3URLWithRequestBuilder(filename: String? = nil, contentType: String? = nil) -> RequestBuilder<AmazonS3Activity> {
        let path = "/amazon/s3/signedposturl"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filename": filename, 
            "content_type": contentType
        ])
        

        let requestBuilder: RequestBuilder<AmazonS3Activity>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
