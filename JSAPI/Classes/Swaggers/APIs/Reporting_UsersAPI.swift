//
// Reporting_UsersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class Reporting_UsersAPI: APIBase {
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
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserRegistrations(granularity: Granularity_getUserRegistrations? = nil, startDate: Int64? = nil, endDate: Int64? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceAggregateCountResource?, _ error: ErrorResponse?) -> Void)) {
        getUserRegistrationsWithRequestBuilder(granularity: granularity, startDate: startDate, endDate: endDate, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get user registration info
     - GET /reporting/users/registrations
     - Get user registration counts grouped by time range. <br><br><b>Permissions Needed:</b> REPORTING_USER_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 6,
  "last" : true,
  "size" : 5,
  "total_elements" : 5,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  }, {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 2,
  "number_of_elements" : 1,
  "content" : [ {
    "date" : "date",
    "count" : 0
  }, {
    "date" : "date",
    "count" : 0
  } ],
  "first" : true
}}]
     - parameter granularity: (query) The time duration to aggregate by (optional, default to day)
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - returns: RequestBuilder<PageResourceAggregateCountResource> 
     */
    open class func getUserRegistrationsWithRequestBuilder(granularity: Granularity_getUserRegistrations? = nil, startDate: Int64? = nil, endDate: Int64? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceAggregateCountResource> {
        let path = "/reporting/users/registrations"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "granularity": granularity?.rawValue, 
            "start_date": startDate?.encodeToJSON(), 
            "end_date": endDate?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PageResourceAggregateCountResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
