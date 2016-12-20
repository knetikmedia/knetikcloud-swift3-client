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
    public enum Granularity_executiveRevenueItemSalesUsingGET1: String { 
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
    open class func executiveRevenueItemSalesUsingGET1(granularity: Granularity_executiveRevenueItemSalesUsingGET1? = nil, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping ((_ data: PageResourceAggregateCountResource?,_ error: Error?) -> Void)) {
        executiveRevenueItemSalesUsingGET1WithRequestBuilder(granularity: granularity, startDate: startDate, endDate: endDate).execute { (response, error) -> Void in
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
    "date" : "aeiou",
    "count" : 123456789
  } ],
  "first" : true
}}]
     
     - parameter granularity: (query) The time duration to aggregate by (optional, default to day)
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)

     - returns: RequestBuilder<PageResourceAggregateCountResource> 
     */
    open class func executiveRevenueItemSalesUsingGET1WithRequestBuilder(granularity: Granularity_executiveRevenueItemSalesUsingGET1? = nil, startDate: Int64? = nil, endDate: Int64? = nil) -> RequestBuilder<PageResourceAggregateCountResource> {
        let path = "/reporting/users/registrations"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "granularity": granularity?.rawValue,
            "start_date": startDate?.encodeToJSON(),
            "end_date": endDate?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceAggregateCountResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}