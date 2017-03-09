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
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserLocationLog(userId: Int32? = nil, completion: @escaping ((_ data: PageResourceLocationLogResource?,_ error: Error?) -> Void)) {
        getUserLocationLogWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
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
  "number" : 6,
  "last" : true,
  "size" : 6,
  "total_elements" : 8,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 5,
  "number_of_elements" : 1,
  "content" : [ {
    "country" : "aeiou",
    "ip" : "aeiou",
    "time" : 3
  } ],
  "first" : true
}}]
     
     - parameter userId: (query) The user id (optional)

     - returns: RequestBuilder<PageResourceLocationLogResource> 
     */
    open class func getUserLocationLogWithRequestBuilder(userId: Int32? = nil) -> RequestBuilder<PageResourceLocationLogResource> {
        let path = "/security/country-log"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "user_id": userId?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceLocationLogResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

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
  "user_id" : 3,
  "roles" : [ "aeiou" ]
}}]

     - returns: RequestBuilder<TokenDetailsResource> 
     */
    open class func getUserTokenDetailsWithRequestBuilder() -> RequestBuilder<TokenDetailsResource> {
        let path = "/me"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TokenDetailsResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
