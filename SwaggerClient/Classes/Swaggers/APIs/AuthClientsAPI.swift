//
// AuthClientsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class AuthClientsAPI: APIBase {
    /**
     Set grant types for a client
     
     - parameter clientKey: (path) The key of the client 
     - parameter grantList: (body) A list of unique grant types (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func assignClientGrantTypesUsingPUT(clientKey: String, grantList: [String]? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        assignClientGrantTypesUsingPUTWithRequestBuilder(clientKey: clientKey, grantList: grantList).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set grant types for a client
     - PUT /auth/clients/{clientKey}/grant-types
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter clientKey: (path) The key of the client 
     - parameter grantList: (body) A list of unique grant types (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func assignClientGrantTypesUsingPUTWithRequestBuilder(clientKey: String, grantList: [String]? = nil) -> RequestBuilder<Void> {
        var path = "/auth/clients/{clientKey}/grant-types"
        path = path.replacingOccurrences(of: "{clientKey}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = grantList?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Set redirect uris for a client
     
     - parameter clientKey: (path) The key of the client 
     - parameter redirectList: (body) A list of unique redirect uris (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func assignClientRedirectUrisUsingPUT(clientKey: String, redirectList: [String]? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        assignClientRedirectUrisUsingPUTWithRequestBuilder(clientKey: clientKey, redirectList: redirectList).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set redirect uris for a client
     - PUT /auth/clients/{clientKey}/redirect-uris
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter clientKey: (path) The key of the client 
     - parameter redirectList: (body) A list of unique redirect uris (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func assignClientRedirectUrisUsingPUTWithRequestBuilder(clientKey: String, redirectList: [String]? = nil) -> RequestBuilder<Void> {
        var path = "/auth/clients/{clientKey}/redirect-uris"
        path = path.replacingOccurrences(of: "{clientKey}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = redirectList?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a new client
     
     - parameter clientResource: (body) The client resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createClientUsingPOST(clientResource: ClientResource? = nil, completion: @escaping ((_ data: ClientResource?,_ error: Error?) -> Void)) {
        createClientUsingPOSTWithRequestBuilder(clientResource: clientResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a new client
     - POST /auth/clients
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "client_key" : "aeiou",
  "grant_types" : [ "aeiou" ],
  "is_public" : false,
  "name" : "aeiou",
  "id" : 123,
  "redirect_uris" : [ "aeiou" ],
  "secret" : "aeiou",
  "locked" : false,
  "access_token_validity_seconds" : 123,
  "refresh_token_validity_seconds" : 123
}}]
     
     - parameter clientResource: (body) The client resource object (optional)

     - returns: RequestBuilder<ClientResource> 
     */
    open class func createClientUsingPOSTWithRequestBuilder(clientResource: ClientResource? = nil) -> RequestBuilder<ClientResource> {
        let path = "/auth/clients"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = clientResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ClientResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a client
     
     - parameter clientKey: (path) The key of the client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteClientUsingDELETE(clientKey: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteClientUsingDELETEWithRequestBuilder(clientKey: clientKey).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a client
     - DELETE /auth/clients/{clientKey}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter clientKey: (path) The key of the client 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteClientUsingDELETEWithRequestBuilder(clientKey: String) -> RequestBuilder<Void> {
        var path = "/auth/clients/{clientKey}"
        path = path.replacingOccurrences(of: "{clientKey}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single client
     
     - parameter clientKey: (path) The key of the client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getClientUsingGET(clientKey: String, completion: @escaping ((_ data: ClientResource?,_ error: Error?) -> Void)) {
        getClientUsingGETWithRequestBuilder(clientKey: clientKey).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single client
     - GET /auth/clients/{clientKey}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "client_key" : "aeiou",
  "grant_types" : [ "aeiou" ],
  "is_public" : false,
  "name" : "aeiou",
  "id" : 123,
  "redirect_uris" : [ "aeiou" ],
  "secret" : "aeiou",
  "locked" : false,
  "access_token_validity_seconds" : 123,
  "refresh_token_validity_seconds" : 123
}}]
     
     - parameter clientKey: (path) The key of the client 

     - returns: RequestBuilder<ClientResource> 
     */
    open class func getClientUsingGETWithRequestBuilder(clientKey: String) -> RequestBuilder<ClientResource> {
        var path = "/auth/clients/{clientKey}"
        path = path.replacingOccurrences(of: "{clientKey}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ClientResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search clients
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getClientsUsingGET(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceClientResource?,_ error: Error?) -> Void)) {
        getClientsUsingGETWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search clients
     - GET /auth/clients
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "number" : 123,
  "last" : true,
  "size" : 123,
  "total_elements" : 123456789,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "aeiou",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "aeiou"
  } ],
  "total_pages" : 123,
  "number_of_elements" : 123,
  "content" : [ {
    "client_key" : "aeiou",
    "grant_types" : [ "aeiou" ],
    "is_public" : false,
    "name" : "aeiou",
    "id" : 123,
    "redirect_uris" : [ "aeiou" ],
    "secret" : "aeiou",
    "locked" : false,
    "access_token_validity_seconds" : 123,
    "refresh_token_validity_seconds" : 123
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceClientResource> 
     */
    open class func getClientsUsingGETWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceClientResource> {
        let path = "/auth/clients"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceClientResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     List available client grant types
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listAvailableGrantTypesUsingGET(completion: @escaping ((_ data: [GrantTypeResource]?,_ error: Error?) -> Void)) {
        listAvailableGrantTypesUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List available client grant types
     - GET /auth/clients/grant-types
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example=[ {
  "name" : "aeiou",
  "description" : "aeiou"
} ]}]

     - returns: RequestBuilder<[GrantTypeResource]> 
     */
    open class func listAvailableGrantTypesUsingGETWithRequestBuilder() -> RequestBuilder<[GrantTypeResource]> {
        let path = "/auth/clients/grant-types"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[GrantTypeResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a client
     
     - parameter clientKey: (path) The key of the client 
     - parameter clientResource: (body) The client resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateClientUsingPUT(clientKey: String, clientResource: ClientResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateClientUsingPUTWithRequestBuilder(clientKey: clientKey, clientResource: clientResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a client
     - PUT /auth/clients/{clientKey}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter clientKey: (path) The key of the client 
     - parameter clientResource: (body) The client resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateClientUsingPUTWithRequestBuilder(clientKey: String, clientResource: ClientResource? = nil) -> RequestBuilder<Void> {
        var path = "/auth/clients/{clientKey}"
        path = path.replacingOccurrences(of: "{clientKey}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = clientResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
