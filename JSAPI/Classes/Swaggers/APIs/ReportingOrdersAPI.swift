//
// ReportingOrdersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class ReportingOrdersAPI: APIBase {
    /**
     * enum for parameter granularity
     */
    public enum Granularity_getInvoiceReports: String { 
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
     Retrieve invoice counts aggregated by time ranges
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter granularity: (query) The time duration to aggregate by (optional, default to day)
     - parameter filterPaymentStatus: (query) A payment status to filter results by, can be a comma separated list (optional)
     - parameter filterFulfillmentStatus: (query) An invoice fulfillment status to filter results by, can be a comma separated list (optional)
     - parameter startDate: (query) The start of the time range to return, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to return, unix timestamp in seconds. Default is end of time (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInvoiceReports(currencyCode: String, granularity: Granularity_getInvoiceReports? = nil, filterPaymentStatus: String? = nil, filterFulfillmentStatus: String? = nil, startDate: Int64? = nil, endDate: Int64? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceAggregateInvoiceReportResource?, _ error: ErrorResponse?) -> Void)) {
        getInvoiceReportsWithRequestBuilder(currencyCode: currencyCode, granularity: granularity, filterPaymentStatus: filterPaymentStatus, filterFulfillmentStatus: filterFulfillmentStatus, startDate: startDate, endDate: endDate, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve invoice counts aggregated by time ranges
     - GET /reporting/orders/count/{currency_code}

     - examples: [{contentType=application/json, example={
  "number" : 5,
  "last" : true,
  "size" : 2,
  "total_elements" : 7,
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
  "total_pages" : 9,
  "number_of_elements" : 5,
  "content" : [ {
    "date" : "date",
    "revenue" : 6.027456183070403,
    "user_count" : 1,
    "count" : 0
  }, {
    "date" : "date",
    "revenue" : 6.027456183070403,
    "user_count" : 1,
    "count" : 0
  } ],
  "first" : true
}}]
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter granularity: (query) The time duration to aggregate by (optional, default to day)
     - parameter filterPaymentStatus: (query) A payment status to filter results by, can be a comma separated list (optional)
     - parameter filterFulfillmentStatus: (query) An invoice fulfillment status to filter results by, can be a comma separated list (optional)
     - parameter startDate: (query) The start of the time range to return, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to return, unix timestamp in seconds. Default is end of time (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - returns: RequestBuilder<PageResourceAggregateInvoiceReportResource> 
     */
    open class func getInvoiceReportsWithRequestBuilder(currencyCode: String, granularity: Granularity_getInvoiceReports? = nil, filterPaymentStatus: String? = nil, filterFulfillmentStatus: String? = nil, startDate: Int64? = nil, endDate: Int64? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceAggregateInvoiceReportResource> {
        var path = "/reporting/orders/count/{currency_code}"
        path = path.replacingOccurrences(of: "{currency_code}", with: "\(currencyCode)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "granularity": granularity?.rawValue, 
            "filter_payment_status": filterPaymentStatus, 
            "filter_fulfillment_status": filterFulfillmentStatus, 
            "start_date": startDate?.encodeToJSON(), 
            "end_date": endDate?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PageResourceAggregateInvoiceReportResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
