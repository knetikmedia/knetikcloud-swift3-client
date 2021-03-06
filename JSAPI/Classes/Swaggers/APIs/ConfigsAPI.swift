//
// ConfigsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class ConfigsAPI: APIBase {
    /**
     Create a new config
     - parameter config: (body) The config object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createConfig(config: Config? = nil, completion: @escaping ((_ data: Config?, _ error: ErrorResponse?) -> Void)) {
        createConfigWithRequestBuilder(config: config).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a new config
     - POST /configs
     - <b>Permissions Needed:</b> CONFIGS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "public_read" : false,
  "name" : "name",
  "description" : "description",
  "value" : "value"
}}]
     - parameter config: (body) The config object (optional)
     - returns: RequestBuilder<Config> 
     */
    open class func createConfigWithRequestBuilder(config: Config? = nil) -> RequestBuilder<Config> {
        let path = "/configs"
        let URLString = JSAPIAPI.basePath + path
        let parameters = config?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Config>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete an existing config
     - parameter name: (path) The config name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteConfig(name: String, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deleteConfigWithRequestBuilder(name: name).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Delete an existing config
     - DELETE /configs/{name}
     - <b>Permissions Needed:</b> CONFIGS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter name: (path) The config name 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteConfigWithRequestBuilder(name: String) -> RequestBuilder<Void> {
        var path = "/configs/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single config
     - parameter name: (path) The config name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getConfig(name: String, completion: @escaping ((_ data: Config?, _ error: ErrorResponse?) -> Void)) {
        getConfigWithRequestBuilder(name: name).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a single config
     - GET /configs/{name}
     - Only configs that are public readable will be shown without admin access. <br><br><b>Permissions Needed:</b> ANY
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "public_read" : false,
  "name" : "name",
  "description" : "description",
  "value" : "value"
}}]
     - parameter name: (path) The config name 
     - returns: RequestBuilder<Config> 
     */
    open class func getConfigWithRequestBuilder(name: String) -> RequestBuilder<Config> {
        var path = "/configs/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Config>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search configs
     - parameter filterSearch: (query) Filter for configs whose name contains the given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getConfigs(filterSearch: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceConfig?, _ error: ErrorResponse?) -> Void)) {
        getConfigsWithRequestBuilder(filterSearch: filterSearch, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List and search configs
     - GET /configs
     - <b>Permissions Needed:</b> ANY
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 1,
  "total_elements" : 5,
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
  "total_pages" : 5,
  "number_of_elements" : 6,
  "content" : [ {
    "public_read" : false,
    "name" : "name",
    "description" : "description",
    "value" : "value"
  }, {
    "public_read" : false,
    "name" : "name",
    "description" : "description",
    "value" : "value"
  } ],
  "first" : true
}}]
     - parameter filterSearch: (query) Filter for configs whose name contains the given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)
     - returns: RequestBuilder<PageResourceConfig> 
     */
    open class func getConfigsWithRequestBuilder(filterSearch: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceConfig> {
        let path = "/configs"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_search": filterSearch, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourceConfig>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update an existing config
     - parameter name: (path) The config name 
     - parameter config: (body) The config object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateConfig(name: String, config: Config? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        updateConfigWithRequestBuilder(name: name, config: config).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Update an existing config
     - PUT /configs/{name}
     - <b>Permissions Needed:</b> CONFIGS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter name: (path) The config name 
     - parameter config: (body) The config object (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func updateConfigWithRequestBuilder(name: String, config: Config? = nil) -> RequestBuilder<Void> {
        var path = "/configs/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = config?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
