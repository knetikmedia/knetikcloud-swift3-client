//
// ReportingOrdersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

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
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInvoiceReports(currencyCode: String, granularity: Granularity_getInvoiceReports? = nil, filterPaymentStatus: String? = nil, filterFulfillmentStatus: String? = nil, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping ((_ data: PageResourceAggregateInvoiceReportResource?,_ error: Error?) -> Void)) {
        getInvoiceReportsWithRequestBuilder(currencyCode: currencyCode, granularity: granularity, filterPaymentStatus: filterPaymentStatus, filterFulfillmentStatus: filterFulfillmentStatus, startDate: startDate, endDate: endDate).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve invoice counts aggregated by time ranges
     - GET /reporting/orders/count/{currencyCode}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 2,
  "last" : true,
  "size" : 4,
  "total_elements" : 6,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 2,
  "number_of_elements" : 5,
  "content" : [ {
    "date" : "aeiou",
    "revenue" : 7.898372588844566,
    "user_count" : 3,
    "count" : 7
  } ],
  "first" : true
}}]
     
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter granularity: (query) The time duration to aggregate by (optional, default to day)
     - parameter filterPaymentStatus: (query) A payment status to filter results by, can be a comma separated list (optional)
     - parameter filterFulfillmentStatus: (query) An invoice fulfillment status to filter results by, can be a comma separated list (optional)
     - parameter startDate: (query) The start of the time range to return, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to return, unix timestamp in seconds. Default is end of time (optional)

     - returns: RequestBuilder<PageResourceAggregateInvoiceReportResource> 
     */
    open class func getInvoiceReportsWithRequestBuilder(currencyCode: String, granularity: Granularity_getInvoiceReports? = nil, filterPaymentStatus: String? = nil, filterFulfillmentStatus: String? = nil, startDate: Int64? = nil, endDate: Int64? = nil) -> RequestBuilder<PageResourceAggregateInvoiceReportResource> {
        var path = "/reporting/orders/count/{currencyCode}"
        path = path.replacingOccurrences(of: "{currency_code}", with: "\(currencyCode)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "granularity": granularity?.rawValue, 
            "filter_payment_status": filterPaymentStatus, 
            "filter_fulfillment_status": filterFulfillmentStatus, 
            "start_date": startDate?.encodeToJSON(), 
            "end_date": endDate?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceAggregateInvoiceReportResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
