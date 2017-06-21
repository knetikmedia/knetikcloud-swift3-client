//
// UtilSecurityAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class UtilSecurityAPI: APIBase {
    /**
     Returns the authentication log for a user
     
     - parameter userId: (query) The user id (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLocationLog(userId: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceLocationLogResource?,_ error: Error?) -> Void)) {
        getUserLocationLogWithRequestBuilder(userId: userId, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns the authentication log for a user
     - GET /security/country-log
     - A log entry is recorded everytime a user requests a new token. Standard pagination available
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 3,
  "last" : true,
  "size" : 4,
  "total_elements" : 0,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 6,
  "number_of_elements" : 1,
  "content" : [ {
    "country" : "aeiou",
    "ip" : "aeiou",
    "time" : 4
  } ],
  "first" : true
}}]
     
     - parameter userId: (query) The user id (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)

     - returns: RequestBuilder<PageResourceLocationLogResource> 
     */
    open class func getUserLocationLogWithRequestBuilder(userId: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceLocationLogResource> {
        let path = "/security/country-log"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "user_id": userId?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceLocationLogResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns the authentication token details. Use /users endpoint for detailed user's info
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserTokenDetails(completion: @escaping ((_ data: TokenDetailsResource?,_ error: Error?) -> Void)) {
        getUserTokenDetailsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns the authentication token details. Use /users endpoint for detailed user's info
     - GET /me
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "user_id" : 8,
  "roles" : [ "aeiou" ]
}}]

     - returns: RequestBuilder<TokenDetailsResource> 
     */
    open class func getUserTokenDetailsWithRequestBuilder() -> RequestBuilder<TokenDetailsResource> {
        let path = "/me"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TokenDetailsResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
