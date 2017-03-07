//
// ReportingSubscriptionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class ReportingSubscriptionsAPI: APIBase {
    /**
     Get a list of available subscription reports in most recent first order
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubscriptionReports(size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceBillingReport?,_ error: Error?) -> Void)) {
        getSubscriptionReportsWithRequestBuilder(size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of available subscription reports in most recent first order
     - GET /reporting/subscription
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 3,
  "last" : true,
  "size" : 9,
  "total_elements" : 0,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 2,
  "number_of_elements" : 9,
  "content" : [ {
    "last_known_failures" : [ "aeiou" ],
    "created" : 3,
    "id" : "aeiou",
    "statistics" : {
      "key" : 5
    }
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceBillingReport> 
     */
    open class func getSubscriptionReportsWithRequestBuilder(size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceBillingReport> {
        let path = "/reporting/subscription"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceBillingReport>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
