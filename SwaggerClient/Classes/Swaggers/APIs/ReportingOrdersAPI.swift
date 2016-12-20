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
    public enum Granularity_getDailyInvoicesUsingGET: String { 
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
    open class func getDailyInvoicesUsingGET(currencyCode: String, granularity: Granularity_getDailyInvoicesUsingGET? = nil, filterPaymentStatus: String? = nil, filterFulfillmentStatus: String? = nil, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping ((_ data: PageResourceAggregateInvoiceReportResource?,_ error: Error?) -> Void)) {
        getDailyInvoicesUsingGETWithRequestBuilder(currencyCode: currencyCode, granularity: granularity, filterPaymentStatus: filterPaymentStatus, filterFulfillmentStatus: filterFulfillmentStatus, startDate: startDate, endDate: endDate).execute { (response, error) -> Void in
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
    "revenue" : 1.3579000000000001069366817318950779736042022705078125,
    "user_count" : 123456789,
    "count" : 123456789
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
    open class func getDailyInvoicesUsingGETWithRequestBuilder(currencyCode: String, granularity: Granularity_getDailyInvoicesUsingGET? = nil, filterPaymentStatus: String? = nil, filterFulfillmentStatus: String? = nil, startDate: Int64? = nil, endDate: Int64? = nil) -> RequestBuilder<PageResourceAggregateInvoiceReportResource> {
        var path = "/reporting/orders/count/{currencyCode}"
        path = path.replacingOccurrences(of: "{currencyCode}", with: "\(currencyCode)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "granularity": granularity?.rawValue,
            "filter_payment_status": filterPaymentStatus,
            "filter_fulfillment_status": filterFulfillmentStatus,
            "start_date": startDate?.encodeToJSON(),
            "end_date": endDate?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceAggregateInvoiceReportResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
