//
// ConfigsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class ConfigsAPI: APIBase {
    /**
     Create a new config
     
     - parameter config: (body) The config object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createConfigUsingPOST(config: Config? = nil, completion: @escaping ((_ data: Config?,_ error: Error?) -> Void)) {
        createConfigUsingPOSTWithRequestBuilder(config: config).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a new config
     - POST /configs
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter config: (body) The config object (optional)

     - returns: RequestBuilder<Config> 
     */
    open class func createConfigUsingPOSTWithRequestBuilder(config: Config? = nil) -> RequestBuilder<Config> {
        let path = "/configs"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = config?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Config>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an existing config.
     
     - parameter name: (path) The config name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteConfigUsingDELETE(name: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteConfigUsingDELETEWithRequestBuilder(name: name).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete an existing config.
     - DELETE /configs/{name}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter name: (path) The config name 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteConfigUsingDELETEWithRequestBuilder(name: String) -> RequestBuilder<Void> {
        var path = "/configs/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single config
     
     - parameter name: (path) The config name 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getConfigUsingGET(name: String, completion: @escaping ((_ data: Config?,_ error: Error?) -> Void)) {
        getConfigUsingGETWithRequestBuilder(name: name).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single config
     - GET /configs/{name}
     - examples: [{output=none}]
     
     - parameter name: (path) The config name 

     - returns: RequestBuilder<Config> 
     */
    open class func getConfigUsingGETWithRequestBuilder(name: String) -> RequestBuilder<Config> {
        var path = "/configs/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Config>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search configs
     
     - parameter filterSearch: (query) Filter for configs whose name contains the given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getConfigsUsingGET(filterSearch: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageConfig?,_ error: Error?) -> Void)) {
        getConfigsUsingGETWithRequestBuilder(filterSearch: filterSearch, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search configs
     - GET /configs
     - examples: [{output=none}]
     
     - parameter filterSearch: (query) Filter for configs whose name contains the given string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageConfig> 
     */
    open class func getConfigsUsingGETWithRequestBuilder(filterSearch: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageConfig> {
        let path = "/configs"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_search": filterSearch,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageConfig>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update an existing config.
     
     - parameter name: (path) The config name 
     - parameter config: (body) The config object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateConfigUsingPUT(name: String, config: Config? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateConfigUsingPUTWithRequestBuilder(name: name, config: config).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update an existing config.
     - PUT /configs/{name}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter name: (path) The config name 
     - parameter config: (body) The config object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateConfigUsingPUTWithRequestBuilder(name: String, config: Config? = nil) -> RequestBuilder<Void> {
        var path = "/configs/{name}"
        path = path.replacingOccurrences(of: "{name}", with: "\(name)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = config?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
