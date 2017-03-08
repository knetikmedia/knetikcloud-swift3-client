//
// AuthClientsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class AuthClientsAPI: APIBase {
    /**
     Create a new client
     
     - parameter clientResource: (body) The client resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createClient(clientResource: ClientResource? = nil, completion: @escaping ((_ data: ClientResource?,_ error: Error?) -> Void)) {
        createClientWithRequestBuilder(clientResource: clientResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a new client
     - POST /auth/clients
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "client_key" : "aeiou",
  "grant_types" : [ "aeiou" ],
  "is_public" : false,
  "name" : "aeiou",
  "id" : 7,
  "redirect_uris" : [ "aeiou" ],
  "secret" : "aeiou",
  "locked" : false,
  "access_token_validity_seconds" : 7,
  "refresh_token_validity_seconds" : 8
}}]
     
     - parameter clientResource: (body) The client resource object (optional)

     - returns: RequestBuilder<ClientResource> 
     */
    open class func createClientWithRequestBuilder(clientResource: ClientResource? = nil) -> RequestBuilder<ClientResource> {
        let path = "/auth/clients"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = clientResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ClientResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a client
     
     - parameter clientKey: (path) The key of the client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteClient(clientKey: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteClientWithRequestBuilder(clientKey: clientKey).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a client
     - DELETE /auth/clients/{clientKey}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter clientKey: (path) The key of the client 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteClientWithRequestBuilder(clientKey: String) -> RequestBuilder<Void> {
        var path = "/auth/clients/{clientKey}"
        path = path.replacingOccurrences(of: "{client_key}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single client
     
     - parameter clientKey: (path) The key of the client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getClient(clientKey: String, completion: @escaping ((_ data: ClientResource?,_ error: Error?) -> Void)) {
        getClientWithRequestBuilder(clientKey: clientKey).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single client
     - GET /auth/clients/{clientKey}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "client_key" : "aeiou",
  "grant_types" : [ "aeiou" ],
  "is_public" : false,
  "name" : "aeiou",
  "id" : 8,
  "redirect_uris" : [ "aeiou" ],
  "secret" : "aeiou",
  "locked" : false,
  "access_token_validity_seconds" : 2,
  "refresh_token_validity_seconds" : 6
}}]
     
     - parameter clientKey: (path) The key of the client 

     - returns: RequestBuilder<ClientResource> 
     */
    open class func getClientWithRequestBuilder(clientKey: String) -> RequestBuilder<ClientResource> {
        var path = "/auth/clients/{clientKey}"
        path = path.replacingOccurrences(of: "{client_key}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ClientResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List available client grant types
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getClientGrantTypes(completion: @escaping ((_ data: [GrantTypeResource]?,_ error: Error?) -> Void)) {
        getClientGrantTypesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List available client grant types
     - GET /auth/clients/grant-types
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ {
  "name" : "aeiou",
  "description" : "aeiou"
} ]}]

     - returns: RequestBuilder<[GrantTypeResource]> 
     */
    open class func getClientGrantTypesWithRequestBuilder() -> RequestBuilder<[GrantTypeResource]> {
        let path = "/auth/clients/grant-types"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[GrantTypeResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search clients
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getClients(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceClientResource?,_ error: Error?) -> Void)) {
        getClientsWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search clients
     - GET /auth/clients
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 4,
  "last" : true,
  "size" : 1,
  "total_elements" : 5,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 2,
  "number_of_elements" : 4,
  "content" : [ {
    "client_key" : "aeiou",
    "grant_types" : [ "aeiou" ],
    "is_public" : false,
    "name" : "aeiou",
    "id" : 8,
    "redirect_uris" : [ "aeiou" ],
    "secret" : "aeiou",
    "locked" : false,
    "access_token_validity_seconds" : 5,
    "refresh_token_validity_seconds" : 9
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceClientResource> 
     */
    open class func getClientsWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceClientResource> {
        let path = "/auth/clients"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceClientResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Set grant types for a client
     
     - parameter clientKey: (path) The key of the client 
     - parameter grantList: (body) A list of unique grant types (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setClientGrantTypes(clientKey: String, grantList: [String]? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        setClientGrantTypesWithRequestBuilder(clientKey: clientKey, grantList: grantList).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set grant types for a client
     - PUT /auth/clients/{clientKey}/grant-types
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter clientKey: (path) The key of the client 
     - parameter grantList: (body) A list of unique grant types (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func setClientGrantTypesWithRequestBuilder(clientKey: String, grantList: [String]? = nil) -> RequestBuilder<Void> {
        var path = "/auth/clients/{clientKey}/grant-types"
        path = path.replacingOccurrences(of: "{client_key}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = grantList?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set redirect uris for a client
     
     - parameter clientKey: (path) The key of the client 
     - parameter redirectList: (body) A list of unique redirect uris (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setClientRedirectUris(clientKey: String, redirectList: [String]? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        setClientRedirectUrisWithRequestBuilder(clientKey: clientKey, redirectList: redirectList).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set redirect uris for a client
     - PUT /auth/clients/{clientKey}/redirect-uris
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter clientKey: (path) The key of the client 
     - parameter redirectList: (body) A list of unique redirect uris (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func setClientRedirectUrisWithRequestBuilder(clientKey: String, redirectList: [String]? = nil) -> RequestBuilder<Void> {
        var path = "/auth/clients/{clientKey}/redirect-uris"
        path = path.replacingOccurrences(of: "{client_key}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = redirectList?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a client
     
     - parameter clientKey: (path) The key of the client 
     - parameter clientResource: (body) The client resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateClient(clientKey: String, clientResource: ClientResource? = nil, completion: @escaping ((_ data: ClientResource?,_ error: Error?) -> Void)) {
        updateClientWithRequestBuilder(clientKey: clientKey, clientResource: clientResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a client
     - PUT /auth/clients/{clientKey}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "client_key" : "aeiou",
  "grant_types" : [ "aeiou" ],
  "is_public" : false,
  "name" : "aeiou",
  "id" : 3,
  "redirect_uris" : [ "aeiou" ],
  "secret" : "aeiou",
  "locked" : false,
  "access_token_validity_seconds" : 8,
  "refresh_token_validity_seconds" : 6
}}]
     
     - parameter clientKey: (path) The key of the client 
     - parameter clientResource: (body) The client resource object (optional)

     - returns: RequestBuilder<ClientResource> 
     */
    open class func updateClientWithRequestBuilder(clientKey: String, clientResource: ClientResource? = nil) -> RequestBuilder<ClientResource> {
        var path = "/auth/clients/{clientKey}"
        path = path.replacingOccurrences(of: "{client_key}", with: "\(clientKey)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = clientResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ClientResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
