//
// DispositionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class DispositionsAPI: APIBase {
    /**
     Add a new disposition
     - parameter disposition: (body) The new disposition record (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addDisposition(disposition: DispositionResource? = nil, completion: @escaping ((_ data: DispositionResource?, _ error: ErrorResponse?) -> Void)) {
        addDispositionWithRequestBuilder(disposition: disposition).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a new disposition
     - POST /dispositions
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "context" : "context",
  "name" : "name",
  "context_id" : "context_id",
  "created_date" : 0,
  "id" : 6,
  "user" : {
    "avatar_url" : "avatar_url",
    "id" : 1,
    "display_name" : "display_name",
    "username" : "username"
  }
}}]
     - parameter disposition: (body) The new disposition record (optional)
     - returns: RequestBuilder<DispositionResource> 
     */
    open class func addDispositionWithRequestBuilder(disposition: DispositionResource? = nil) -> RequestBuilder<DispositionResource> {
        let path = "/dispositions"
        let URLString = JSAPIAPI.basePath + path
        let parameters = disposition?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<DispositionResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a disposition
     - parameter id: (path) The id of the disposition record 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDisposition(id: Int64, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deleteDispositionWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Delete a disposition
     - DELETE /dispositions/{id}
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The id of the disposition record 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteDispositionWithRequestBuilder(id: Int64) -> RequestBuilder<Void> {
        var path = "/dispositions/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a disposition
     - parameter id: (path) The id of the disposition record 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDisposition(id: Int64, completion: @escaping ((_ data: DispositionResource?, _ error: ErrorResponse?) -> Void)) {
        getDispositionWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a disposition
     - GET /dispositions/{id}

     - examples: [{contentType=application/json, example={
  "context" : "context",
  "name" : "name",
  "context_id" : "context_id",
  "created_date" : 0,
  "id" : 6,
  "user" : {
    "avatar_url" : "avatar_url",
    "id" : 1,
    "display_name" : "display_name",
    "username" : "username"
  }
}}]
     - parameter id: (path) The id of the disposition record 
     - returns: RequestBuilder<DispositionResource> 
     */
    open class func getDispositionWithRequestBuilder(id: Int64) -> RequestBuilder<DispositionResource> {
        var path = "/dispositions/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<DispositionResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a list of disposition counts
     - parameter filterContext: (query) Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47 (optional)
     - parameter filterOwner: (query) Filter for dispositions from a specific user by id or &#39;me&#39; (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDispositionCounts(filterContext: String? = nil, filterOwner: String? = nil, completion: @escaping ((_ data: [DispositionCount]?, _ error: ErrorResponse?) -> Void)) {
        getDispositionCountsWithRequestBuilder(filterContext: filterContext, filterOwner: filterOwner).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a list of disposition counts
     - GET /dispositions/count
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=[ {
  "count" : 0,
  "name" : "name"
}, {
  "count" : 0,
  "name" : "name"
} ]}]
     - parameter filterContext: (query) Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47 (optional)
     - parameter filterOwner: (query) Filter for dispositions from a specific user by id or &#39;me&#39; (optional)
     - returns: RequestBuilder<[DispositionCount]> 
     */
    open class func getDispositionCountsWithRequestBuilder(filterContext: String? = nil, filterOwner: String? = nil) -> RequestBuilder<[DispositionCount]> {
        let path = "/dispositions/count"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_context": filterContext, 
            "filter_owner": filterOwner
        ])

        let requestBuilder: RequestBuilder<[DispositionCount]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns a page of dispositions
     - parameter filterContext: (query) Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47 (optional)
     - parameter filterOwner: (query) Filter for dispositions from a specific user by id or &#39;me&#39; (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDispositions(filterContext: String? = nil, filterOwner: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceDispositionResource?, _ error: ErrorResponse?) -> Void)) {
        getDispositionsWithRequestBuilder(filterContext: filterContext, filterOwner: filterOwner, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns a page of dispositions
     - GET /dispositions
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 1,
  "last" : true,
  "size" : 5,
  "total_elements" : 2,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  }, {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 7,
  "number_of_elements" : 5,
  "content" : [ {
    "context" : "context",
    "name" : "name",
    "context_id" : "context_id",
    "created_date" : 0,
    "id" : 6,
    "user" : {
      "avatar_url" : "avatar_url",
      "id" : 1,
      "display_name" : "display_name",
      "username" : "username"
    }
  }, {
    "context" : "context",
    "name" : "name",
    "context_id" : "context_id",
    "created_date" : 0,
    "id" : 6,
    "user" : {
      "avatar_url" : "avatar_url",
      "id" : 1,
      "display_name" : "display_name",
      "username" : "username"
    }
  } ],
  "first" : true
}}]
     - parameter filterContext: (query) Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47 (optional)
     - parameter filterOwner: (query) Filter for dispositions from a specific user by id or &#39;me&#39; (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - returns: RequestBuilder<PageResourceDispositionResource> 
     */
    open class func getDispositionsWithRequestBuilder(filterContext: String? = nil, filterOwner: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceDispositionResource> {
        let path = "/dispositions"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_context": filterContext, 
            "filter_owner": filterOwner, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourceDispositionResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
