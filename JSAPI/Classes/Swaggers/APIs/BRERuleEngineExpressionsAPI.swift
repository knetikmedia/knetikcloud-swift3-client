//
// BRERuleEngineExpressionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class BRERuleEngineExpressionsAPI: APIBase {
    /**
     Get a list of 'lookup' type expressions
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBREExpressions(completion: @escaping ((_ data: [LookupTypeResource]?, _ error: ErrorResponse?) -> Void)) {
        getBREExpressionsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a list of 'lookup' type expressions
     - GET /bre/expressions/lookup
     - These are expression types that take a second expression as input and produce a value. These can be used in addition to the standard types, like parameter, global and constant (see BRE documentation for details).
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ {
  "value_type" : "value_type",
  "key_type" : "key_type",
  "name" : "name",
  "description" : "description"
}, {
  "value_type" : "value_type",
  "key_type" : "key_type",
  "name" : "name",
  "description" : "description"
} ]}]
     - returns: RequestBuilder<[LookupTypeResource]> 
     */
    open class func getBREExpressionsWithRequestBuilder() -> RequestBuilder<[LookupTypeResource]> {
        let path = "/bre/expressions/lookup"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[LookupTypeResource]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
