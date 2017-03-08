//
// UsersAddressesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class UsersAddressesAPI: APIBase {
    /**
     Create a new address
     
     - parameter userId: (path) The id of the user 
     - parameter savedAddressResource: (body) The new address (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createAddress(userId: String, savedAddressResource: SavedAddressResource? = nil, completion: @escaping ((_ data: SavedAddressResource?,_ error: Error?) -> Void)) {
        createAddressWithRequestBuilder(userId: userId, savedAddressResource: savedAddressResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a new address
     - POST /users/{userId}/addresses
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "address2" : "aeiou",
  "city" : "aeiou",
  "address1" : "aeiou",
  "phone2" : "aeiou",
  "last_name" : "aeiou",
  "phone1" : "aeiou",
  "country_code" : "aeiou",
  "default" : true,
  "name" : "aeiou",
  "id" : 6,
  "postal_code" : "aeiou",
  "state_code" : "aeiou",
  "first_name" : "aeiou"
}}]
     
     - parameter userId: (path) The id of the user 
     - parameter savedAddressResource: (body) The new address (optional)

     - returns: RequestBuilder<SavedAddressResource> 
     */
    open class func createAddressWithRequestBuilder(userId: String, savedAddressResource: SavedAddressResource? = nil) -> RequestBuilder<SavedAddressResource> {
        var path = "/users/{userId}/addresses"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = savedAddressResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SavedAddressResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete an address
     
     - parameter userId: (path) The id of the user 
     - parameter id: (path) The id of the address 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAddress(userId: String, id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteAddressWithRequestBuilder(userId: userId, id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete an address
     - DELETE /users/{userId}/addresses/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter userId: (path) The id of the user 
     - parameter id: (path) The id of the address 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteAddressWithRequestBuilder(userId: String, id: Int32) -> RequestBuilder<Void> {
        var path = "/users/{userId}/addresses/{id}"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single address
     
     - parameter userId: (path) The id of the user 
     - parameter id: (path) The id of the address 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAddress(userId: String, id: Int32, completion: @escaping ((_ data: SavedAddressResource?,_ error: Error?) -> Void)) {
        getAddressWithRequestBuilder(userId: userId, id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single address
     - GET /users/{userId}/addresses/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "address2" : "aeiou",
  "city" : "aeiou",
  "address1" : "aeiou",
  "phone2" : "aeiou",
  "last_name" : "aeiou",
  "phone1" : "aeiou",
  "country_code" : "aeiou",
  "default" : true,
  "name" : "aeiou",
  "id" : 0,
  "postal_code" : "aeiou",
  "state_code" : "aeiou",
  "first_name" : "aeiou"
}}]
     
     - parameter userId: (path) The id of the user 
     - parameter id: (path) The id of the address 

     - returns: RequestBuilder<SavedAddressResource> 
     */
    open class func getAddressWithRequestBuilder(userId: String, id: Int32) -> RequestBuilder<SavedAddressResource> {
        var path = "/users/{userId}/addresses/{id}"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SavedAddressResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search addresses
     
     - parameter userId: (path) The id of the user 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAddresses(userId: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceSavedAddressResource?,_ error: Error?) -> Void)) {
        getAddressesWithRequestBuilder(userId: userId, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search addresses
     - GET /users/{userId}/addresses
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 3,
  "last" : true,
  "size" : 5,
  "total_elements" : 7,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 3,
  "number_of_elements" : 8,
  "content" : [ {
    "address2" : "aeiou",
    "city" : "aeiou",
    "address1" : "aeiou",
    "phone2" : "aeiou",
    "last_name" : "aeiou",
    "phone1" : "aeiou",
    "country_code" : "aeiou",
    "default" : true,
    "name" : "aeiou",
    "id" : 0,
    "postal_code" : "aeiou",
    "state_code" : "aeiou",
    "first_name" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter userId: (path) The id of the user 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceSavedAddressResource> 
     */
    open class func getAddressesWithRequestBuilder(userId: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceSavedAddressResource> {
        var path = "/users/{userId}/addresses"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceSavedAddressResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update an address
     
     - parameter userId: (path) The id of the user 
     - parameter id: (path) The id of the address 
     - parameter savedAddressResource: (body) The saved address resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateAddress(userId: String, id: Int32, savedAddressResource: SavedAddressResource? = nil, completion: @escaping ((_ data: SavedAddressResource?,_ error: Error?) -> Void)) {
        updateAddressWithRequestBuilder(userId: userId, id: id, savedAddressResource: savedAddressResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update an address
     - PUT /users/{userId}/addresses/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "address2" : "aeiou",
  "city" : "aeiou",
  "address1" : "aeiou",
  "phone2" : "aeiou",
  "last_name" : "aeiou",
  "phone1" : "aeiou",
  "country_code" : "aeiou",
  "default" : true,
  "name" : "aeiou",
  "id" : 4,
  "postal_code" : "aeiou",
  "state_code" : "aeiou",
  "first_name" : "aeiou"
}}]
     
     - parameter userId: (path) The id of the user 
     - parameter id: (path) The id of the address 
     - parameter savedAddressResource: (body) The saved address resource object (optional)

     - returns: RequestBuilder<SavedAddressResource> 
     */
    open class func updateAddressWithRequestBuilder(userId: String, id: Int32, savedAddressResource: SavedAddressResource? = nil) -> RequestBuilder<SavedAddressResource> {
        var path = "/users/{userId}/addresses/{id}"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = savedAddressResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SavedAddressResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
