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
     Lookup a specific expression
     - parameter type: (path) Specifiy the type of expression as returned by the listing endpoint 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBREExpression(type: String, completion: @escaping ((_ data: ExpressionResource?, _ error: ErrorResponse?) -> Void)) {
        getBREExpressionWithRequestBuilder(type: type).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Lookup a specific expression
     - GET /bre/expressions/{type}
     - <b>Permissions Needed:</b> BRE_RULE_ENGINE_EXPRESSIONS_USER
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "definition" : "definition",
  "type" : "type"
}}]
     - parameter type: (path) Specifiy the type of expression as returned by the listing endpoint 
     - returns: RequestBuilder<ExpressionResource> 
     */
    open class func getBREExpressionWithRequestBuilder(type: String) -> RequestBuilder<ExpressionResource> {
        var path = "/bre/expressions/{type}"
        path = path.replacingOccurrences(of: "{type}", with: "\(type)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ExpressionResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter filterTypeGroup
     */
    public enum FilterTypeGroup_getBREExpressions: String { 
        case operation = "operation"
        case lookup = "lookup"
        case predicate = "predicate"
    }

    /**
     Get a list of supported expressions to use in conditions or actions
     - parameter filterTypeGroup: (query) Filter for expressions by type group (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBREExpressions(filterTypeGroup: FilterTypeGroup_getBREExpressions? = nil, completion: @escaping ((_ data: [ExpressionResource]?, _ error: ErrorResponse?) -> Void)) {
        getBREExpressionsWithRequestBuilder(filterTypeGroup: filterTypeGroup).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a list of supported expressions to use in conditions or actions
     - GET /bre/expressions
     - Each resource contains a type and a definition that are read-only, all the other fields must be provided when using the expression in a rule. <br><br><b>Permissions Needed:</b> BRE_RULE_ENGINE_EXPRESSIONS_USER
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=[ {
  "definition" : "definition",
  "type" : "type"
}, {
  "definition" : "definition",
  "type" : "type"
} ]}]
     - parameter filterTypeGroup: (query) Filter for expressions by type group (optional)
     - returns: RequestBuilder<[ExpressionResource]> 
     */
    open class func getBREExpressionsWithRequestBuilder(filterTypeGroup: FilterTypeGroup_getBREExpressions? = nil) -> RequestBuilder<[ExpressionResource]> {
        let path = "/bre/expressions"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_type_group": filterTypeGroup?.rawValue
        ])

        let requestBuilder: RequestBuilder<[ExpressionResource]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns the textual representation of an expression
     - parameter expression: (body) The expression resource to be converted (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getExpressionAsText(expression: ExpressionResource? = nil, completion: @escaping ((_ data: StringWrapper?, _ error: ErrorResponse?) -> Void)) {
        getExpressionAsTextWithRequestBuilder(expression: expression).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns the textual representation of an expression
     - POST /bre/expressions
     - <b>Permissions Needed:</b> BRE_RULE_ENGINE_EXPRESSIONS_USER
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "value" : "value"
}}]
     - parameter expression: (body) The expression resource to be converted (optional)
     - returns: RequestBuilder<StringWrapper> 
     */
    open class func getExpressionAsTextWithRequestBuilder(expression: ExpressionResource? = nil) -> RequestBuilder<StringWrapper> {
        let path = "/bre/expressions"
        let URLString = JSAPIAPI.basePath + path
        let parameters = expression?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<StringWrapper>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
