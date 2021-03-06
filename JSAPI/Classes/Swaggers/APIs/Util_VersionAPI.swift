//
// Util_VersionAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class Util_VersionAPI: APIBase {
    /**
     Get current version info
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVersion(completion: @escaping ((_ data: Version?, _ error: ErrorResponse?) -> Void)) {
        getVersionWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get current version info
     - GET /version
     - <b>Permissions Needed:</b> ANY
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "version" : "version"
}}]
     - returns: RequestBuilder<Version> 
     */
    open class func getVersionWithRequestBuilder() -> RequestBuilder<Version> {
        let path = "/version"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Version>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
