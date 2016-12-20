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
    open class func listBillingReportsUsingGET(size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageBillingReport?,_ error: Error?) -> Void)) {
        listBillingReportsUsingGETWithRequestBuilder(size: size, page: page).execute { (response, error) -> Void in
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
  "number" : 123,
  "last" : true,
  "size" : 123,
  "total_elements" : 123456789,
  "sort" : { },
  "total_pages" : 123,
  "number_of_elements" : 123,
  "content" : [ {
    "last_known_failures" : [ "aeiou" ],
    "created" : 123456789,
    "id" : "aeiou",
    "statistics" : {
      "key" : 123
    }
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageBillingReport> 
     */
    open class func listBillingReportsUsingGETWithRequestBuilder(size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageBillingReport> {
        let path = "/reporting/subscription"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageBillingReport>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
