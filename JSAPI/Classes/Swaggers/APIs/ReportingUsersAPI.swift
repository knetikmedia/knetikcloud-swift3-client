//
// ReportingUsersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class ReportingUsersAPI: APIBase {
    /**
     * enum for parameter granularity
     */
    public enum Granularity_getUserRegistrations: String { 
        case millisecond = "millisecond"
        case second = "second"
        case minute = "minute"
        case hour = "hour"
        case day = "day"
        case week = "week"
        case month = "month"
        case year = "year"
    }

    /**
     Get user registration info
     
     - parameter granularity: (query) The time duration to aggregate by (optional, default to day)
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserRegistrations(granularity: Granularity_getUserRegistrations? = nil, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping ((_ data: PageResourceAggregateCountResource?,_ error: Error?) -> Void)) {
        getUserRegistrationsWithRequestBuilder(granularity: granularity, startDate: startDate, endDate: endDate).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get user registration info
     - GET /reporting/users/registrations
     - Get user registration counts grouped by time range
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 3,
  "last" : true,
  "size" : 4,
  "total_elements" : 9,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 9,
  "number_of_elements" : 4,
  "content" : [ {
    "date" : "aeiou",
    "count" : 0
  } ],
  "first" : true
}}]
     
     - parameter granularity: (query) The time duration to aggregate by (optional, default to day)
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)

     - returns: RequestBuilder<PageResourceAggregateCountResource> 
     */
    open class func getUserRegistrationsWithRequestBuilder(granularity: Granularity_getUserRegistrations? = nil, startDate: Int64? = nil, endDate: Int64? = nil) -> RequestBuilder<PageResourceAggregateCountResource> {
        let path = "/reporting/users/registrations"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "granularity": granularity?.rawValue, 
            "start_date": startDate?.encodeToJSON(), 
            "end_date": endDate?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceAggregateCountResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
