//
// ReportingUsageAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class ReportingUsageAPI: APIBase {
    /**
     * enum for parameter method
     */
    public enum Method_getUsageByDay: String { 
        case _get = "GET"
        case head = "HEAD"
        case post = "POST"
        case put = "PUT"
        case patch = "PATCH"
        case delete = "DELETE"
        case options = "OPTIONS"
        case trace = "TRACE"
    }

    /**
     Returns aggregated endpoint usage information by day
     
     - parameter startDate: (query) The beginning of the range being requested, unix timestamp in seconds 
     - parameter endDate: (query) The ending of the range being requested, unix timestamp in seconds 
     - parameter combineEndpoints: (query) Whether to combine counts from different endpoint. Removes the url and method from the result object (optional, default to false)
     - parameter method: (query) Filter for a certain endpoint method.  Must include url as well to work (optional)
     - parameter url: (query) Filter for a certain endpoint.  Must include method as well to work (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUsageByDay(startDate: Int64, endDate: Int64, combineEndpoints: Bool? = nil, method: Method_getUsageByDay? = nil, url: String? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceUsageInfo?,_ error: Error?) -> Void)) {
        getUsageByDayWithRequestBuilder(startDate: startDate, endDate: endDate, combineEndpoints: combineEndpoints, method: method, url: url, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns aggregated endpoint usage information by day
     - GET /reporting/usage/day
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 4,
  "last" : true,
  "size" : 2,
  "total_elements" : 9,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 9,
  "number_of_elements" : 8,
  "content" : [ {
    "date" : 7,
    "method" : "aeiou",
    "count" : 6,
    "url" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter startDate: (query) The beginning of the range being requested, unix timestamp in seconds 
     - parameter endDate: (query) The ending of the range being requested, unix timestamp in seconds 
     - parameter combineEndpoints: (query) Whether to combine counts from different endpoint. Removes the url and method from the result object (optional, default to false)
     - parameter method: (query) Filter for a certain endpoint method.  Must include url as well to work (optional)
     - parameter url: (query) Filter for a certain endpoint.  Must include method as well to work (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceUsageInfo> 
     */
    open class func getUsageByDayWithRequestBuilder(startDate: Int64, endDate: Int64, combineEndpoints: Bool? = nil, method: Method_getUsageByDay? = nil, url: String? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceUsageInfo> {
        let path = "/reporting/usage/day"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "start_date": startDate.encodeToJSON(), 
            "end_date": endDate.encodeToJSON(), 
            "combine_endpoints": combineEndpoints, 
            "method": method?.rawValue, 
            "url": url, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceUsageInfo>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter method
     */
    public enum Method_getUsageByHour: String { 
        case _get = "GET"
        case head = "HEAD"
        case post = "POST"
        case put = "PUT"
        case patch = "PATCH"
        case delete = "DELETE"
        case options = "OPTIONS"
        case trace = "TRACE"
    }

    /**
     Returns aggregated endpoint usage information by hour
     
     - parameter startDate: (query) The beginning of the range being requested, unix timestamp in seconds 
     - parameter endDate: (query) The ending of the range being requested, unix timestamp in seconds 
     - parameter combineEndpoints: (query) Whether to combine counts from different endpoint. Removes the url and method from the result object (optional, default to false)
     - parameter method: (query) Filter for a certain endpoint method.  Must include url as well to work (optional)
     - parameter url: (query) Filter for a certain endpoint.  Must include method as well to work (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUsageByHour(startDate: Int64, endDate: Int64, combineEndpoints: Bool? = nil, method: Method_getUsageByHour? = nil, url: String? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceUsageInfo?,_ error: Error?) -> Void)) {
        getUsageByHourWithRequestBuilder(startDate: startDate, endDate: endDate, combineEndpoints: combineEndpoints, method: method, url: url, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns aggregated endpoint usage information by hour
     - GET /reporting/usage/hour
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 1,
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
  "total_pages" : 3,
  "number_of_elements" : 3,
  "content" : [ {
    "date" : 5,
    "method" : "aeiou",
    "count" : 5,
    "url" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter startDate: (query) The beginning of the range being requested, unix timestamp in seconds 
     - parameter endDate: (query) The ending of the range being requested, unix timestamp in seconds 
     - parameter combineEndpoints: (query) Whether to combine counts from different endpoint. Removes the url and method from the result object (optional, default to false)
     - parameter method: (query) Filter for a certain endpoint method.  Must include url as well to work (optional)
     - parameter url: (query) Filter for a certain endpoint.  Must include method as well to work (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceUsageInfo> 
     */
    open class func getUsageByHourWithRequestBuilder(startDate: Int64, endDate: Int64, combineEndpoints: Bool? = nil, method: Method_getUsageByHour? = nil, url: String? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceUsageInfo> {
        let path = "/reporting/usage/hour"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "start_date": startDate.encodeToJSON(), 
            "end_date": endDate.encodeToJSON(), 
            "combine_endpoints": combineEndpoints, 
            "method": method?.rawValue, 
            "url": url, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceUsageInfo>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter method
     */
    public enum Method_getUsageByMinute: String { 
        case _get = "GET"
        case head = "HEAD"
        case post = "POST"
        case put = "PUT"
        case patch = "PATCH"
        case delete = "DELETE"
        case options = "OPTIONS"
        case trace = "TRACE"
    }

    /**
     Returns aggregated endpoint usage information by minute
     
     - parameter startDate: (query) The beginning of the range being requested, unix timestamp in seconds 
     - parameter endDate: (query) The ending of the range being requested, unix timestamp in seconds 
     - parameter combineEndpoints: (query) Whether to combine counts from different endpoint. Removes the url and method from the result object (optional, default to false)
     - parameter method: (query) Filter for a certain endpoint method.  Must include url as well to work (optional)
     - parameter url: (query) Filter for a certain endpoint.  Must include method as well to work (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUsageByMinute(startDate: Int64, endDate: Int64, combineEndpoints: Bool? = nil, method: Method_getUsageByMinute? = nil, url: String? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceUsageInfo?,_ error: Error?) -> Void)) {
        getUsageByMinuteWithRequestBuilder(startDate: startDate, endDate: endDate, combineEndpoints: combineEndpoints, method: method, url: url, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns aggregated endpoint usage information by minute
     - GET /reporting/usage/minute
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 9,
  "last" : true,
  "size" : 6,
  "total_elements" : 1,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 1,
  "number_of_elements" : 0,
  "content" : [ {
    "date" : 5,
    "method" : "aeiou",
    "count" : 2,
    "url" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter startDate: (query) The beginning of the range being requested, unix timestamp in seconds 
     - parameter endDate: (query) The ending of the range being requested, unix timestamp in seconds 
     - parameter combineEndpoints: (query) Whether to combine counts from different endpoint. Removes the url and method from the result object (optional, default to false)
     - parameter method: (query) Filter for a certain endpoint method.  Must include url as well to work (optional)
     - parameter url: (query) Filter for a certain endpoint.  Must include method as well to work (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceUsageInfo> 
     */
    open class func getUsageByMinuteWithRequestBuilder(startDate: Int64, endDate: Int64, combineEndpoints: Bool? = nil, method: Method_getUsageByMinute? = nil, url: String? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceUsageInfo> {
        let path = "/reporting/usage/minute"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "start_date": startDate.encodeToJSON(), 
            "end_date": endDate.encodeToJSON(), 
            "combine_endpoints": combineEndpoints, 
            "method": method?.rawValue, 
            "url": url, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceUsageInfo>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter method
     */
    public enum Method_getUsageByMonth: String { 
        case _get = "GET"
        case head = "HEAD"
        case post = "POST"
        case put = "PUT"
        case patch = "PATCH"
        case delete = "DELETE"
        case options = "OPTIONS"
        case trace = "TRACE"
    }

    /**
     Returns aggregated endpoint usage information by month
     
     - parameter startDate: (query) The beginning of the range being requested, unix timestamp in seconds 
     - parameter endDate: (query) The ending of the range being requested, unix timestamp in seconds 
     - parameter combineEndpoints: (query) Whether to combine counts from different endpoint. Removes the url and method from the result object (optional, default to false)
     - parameter method: (query) Filter for a certain endpoint method.  Must include url as well to work (optional)
     - parameter url: (query) Filter for a certain endpoint.  Must include method as well to work (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUsageByMonth(startDate: Int64, endDate: Int64, combineEndpoints: Bool? = nil, method: Method_getUsageByMonth? = nil, url: String? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceUsageInfo?,_ error: Error?) -> Void)) {
        getUsageByMonthWithRequestBuilder(startDate: startDate, endDate: endDate, combineEndpoints: combineEndpoints, method: method, url: url, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns aggregated endpoint usage information by month
     - GET /reporting/usage/month
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 3,
  "last" : true,
  "size" : 4,
  "total_elements" : 2,
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
    "date" : 2,
    "method" : "aeiou",
    "count" : 8,
    "url" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter startDate: (query) The beginning of the range being requested, unix timestamp in seconds 
     - parameter endDate: (query) The ending of the range being requested, unix timestamp in seconds 
     - parameter combineEndpoints: (query) Whether to combine counts from different endpoint. Removes the url and method from the result object (optional, default to false)
     - parameter method: (query) Filter for a certain endpoint method.  Must include url as well to work (optional)
     - parameter url: (query) Filter for a certain endpoint.  Must include method as well to work (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceUsageInfo> 
     */
    open class func getUsageByMonthWithRequestBuilder(startDate: Int64, endDate: Int64, combineEndpoints: Bool? = nil, method: Method_getUsageByMonth? = nil, url: String? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceUsageInfo> {
        let path = "/reporting/usage/month"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "start_date": startDate.encodeToJSON(), 
            "end_date": endDate.encodeToJSON(), 
            "combine_endpoints": combineEndpoints, 
            "method": method?.rawValue, 
            "url": url, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceUsageInfo>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter method
     */
    public enum Method_getUsageByYear: String { 
        case _get = "GET"
        case head = "HEAD"
        case post = "POST"
        case put = "PUT"
        case patch = "PATCH"
        case delete = "DELETE"
        case options = "OPTIONS"
        case trace = "TRACE"
    }

    /**
     Returns aggregated endpoint usage information by year
     
     - parameter startDate: (query) The beginning of the range being requested, unix timestamp in seconds 
     - parameter endDate: (query) The ending of the range being requested, unix timestamp in seconds 
     - parameter combineEndpoints: (query) Whether to combine counts from different endpoints. Removes the url and method from the result object (optional, default to false)
     - parameter method: (query) Filter for a certain endpoint method.  Must include url as well to work (optional)
     - parameter url: (query) Filter for a certain endpoint.  Must include method as well to work (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUsageByYear(startDate: Int64, endDate: Int64, combineEndpoints: Bool? = nil, method: Method_getUsageByYear? = nil, url: String? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceUsageInfo?,_ error: Error?) -> Void)) {
        getUsageByYearWithRequestBuilder(startDate: startDate, endDate: endDate, combineEndpoints: combineEndpoints, method: method, url: url, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns aggregated endpoint usage information by year
     - GET /reporting/usage/year
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 8,
  "last" : true,
  "size" : 0,
  "total_elements" : 3,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 7,
  "number_of_elements" : 7,
  "content" : [ {
    "date" : 4,
    "method" : "aeiou",
    "count" : 8,
    "url" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter startDate: (query) The beginning of the range being requested, unix timestamp in seconds 
     - parameter endDate: (query) The ending of the range being requested, unix timestamp in seconds 
     - parameter combineEndpoints: (query) Whether to combine counts from different endpoints. Removes the url and method from the result object (optional, default to false)
     - parameter method: (query) Filter for a certain endpoint method.  Must include url as well to work (optional)
     - parameter url: (query) Filter for a certain endpoint.  Must include method as well to work (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceUsageInfo> 
     */
    open class func getUsageByYearWithRequestBuilder(startDate: Int64, endDate: Int64, combineEndpoints: Bool? = nil, method: Method_getUsageByYear? = nil, url: String? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceUsageInfo> {
        let path = "/reporting/usage/year"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "start_date": startDate.encodeToJSON(), 
            "end_date": endDate.encodeToJSON(), 
            "combine_endpoints": combineEndpoints, 
            "method": method?.rawValue, 
            "url": url, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceUsageInfo>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns list of endpoints called (method and url)
     
     - parameter startDate: (query) The beginning of the range being requested, unix timestamp in seconds 
     - parameter endDate: (query) The ending of the range being requested, unix timestamp in seconds 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUsageEndpoints(startDate: Int64, endDate: Int64, completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        getUsageEndpointsWithRequestBuilder(startDate: startDate, endDate: endDate).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns list of endpoints called (method and url)
     - GET /reporting/usage/endpoints
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ "aeiou" ]}]
     
     - parameter startDate: (query) The beginning of the range being requested, unix timestamp in seconds 
     - parameter endDate: (query) The ending of the range being requested, unix timestamp in seconds 

     - returns: RequestBuilder<[String]> 
     */
    open class func getUsageEndpointsWithRequestBuilder(startDate: Int64, endDate: Int64) -> RequestBuilder<[String]> {
        let path = "/reporting/usage/endpoints"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "start_date": startDate.encodeToJSON(), 
            "end_date": endDate.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<[String]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
