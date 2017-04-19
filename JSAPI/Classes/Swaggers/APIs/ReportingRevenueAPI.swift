//
// ReportingRevenueAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class ReportingRevenueAPI: APIBase {
    /**
     Get item revenue info
     
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getItemRevenue(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping ((_ data: RevenueReportResource?,_ error: Error?) -> Void)) {
        getItemRevenueWithRequestBuilder(currencyCode: currencyCode, startDate: startDate, endDate: endDate).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get item revenue info
     - GET /reporting/revenue/item-sales/{currencyCode}
     - Get basic info about revenue from sales of items and bundles (not subscriptions, shipping, etc), summed up within a time range
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "sales_average" : 5.506842975713427,
  "sale_count" : 6,
  "sales_total" : 8.788596931736096,
  "customer_count" : 5
}}]
     
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)

     - returns: RequestBuilder<RevenueReportResource> 
     */
    open class func getItemRevenueWithRequestBuilder(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil) -> RequestBuilder<RevenueReportResource> {
        var path = "/reporting/revenue/item-sales/{currencyCode}"
        path = path.replacingOccurrences(of: "{currency_code}", with: "\(currencyCode)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "start_date": startDate?.encodeToJSON(), 
            "end_date": endDate?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<RevenueReportResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get refund revenue info
     
     - parameter currencyCode: (path) The code for a currency to get refund data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRefundRevenue(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping ((_ data: RevenueReportResource?,_ error: Error?) -> Void)) {
        getRefundRevenueWithRequestBuilder(currencyCode: currencyCode, startDate: startDate, endDate: endDate).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get refund revenue info
     - GET /reporting/revenue/refunds/{currencyCode}
     - Get basic info about revenue loss from refunds (for all item types), summed up within a time range.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "sales_average" : 5.054881900495911,
  "sale_count" : 3,
  "sales_total" : 1.0911546812862183,
  "customer_count" : 7
}}]
     
     - parameter currencyCode: (path) The code for a currency to get refund data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)

     - returns: RequestBuilder<RevenueReportResource> 
     */
    open class func getRefundRevenueWithRequestBuilder(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil) -> RequestBuilder<RevenueReportResource> {
        var path = "/reporting/revenue/refunds/{currencyCode}"
        path = path.replacingOccurrences(of: "{currency_code}", with: "\(currencyCode)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "start_date": startDate?.encodeToJSON(), 
            "end_date": endDate?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<RevenueReportResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get revenue info by country
     
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRevenueByCountry(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceRevenueCountryReportResource?,_ error: Error?) -> Void)) {
        getRevenueByCountryWithRequestBuilder(currencyCode: currencyCode, startDate: startDate, endDate: endDate, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get revenue info by country
     - GET /reporting/revenue/countries/{currencyCode}
     - Get basic info about revenue from sales of all types, summed up within a time range and split out by country. Sorted for largest revenue at the top
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
  "total_pages" : 7,
  "number_of_elements" : 9,
  "content" : [ {
    "volume" : 3,
    "country" : "aeiou",
    "revenue" : 6.1616065797342126
  } ],
  "first" : true
}}]
     
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceRevenueCountryReportResource> 
     */
    open class func getRevenueByCountryWithRequestBuilder(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceRevenueCountryReportResource> {
        var path = "/reporting/revenue/countries/{currencyCode}"
        path = path.replacingOccurrences(of: "{currency_code}", with: "\(currencyCode)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "start_date": startDate?.encodeToJSON(), 
            "end_date": endDate?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceRevenueCountryReportResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get revenue info by item
     
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRevenueByItem(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceRevenueProductReportResource?,_ error: Error?) -> Void)) {
        getRevenueByItemWithRequestBuilder(currencyCode: currencyCode, startDate: startDate, endDate: endDate, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get revenue info by item
     - GET /reporting/revenue/products/{currencyCode}
     - Get basic info about revenue from sales of all types, summed up within a time range and split out by specific item. Sorted for largest revenue at the top
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 8,
  "last" : true,
  "size" : 5,
  "total_elements" : 9,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 7,
  "number_of_elements" : 8,
  "content" : [ {
    "volume" : 6,
    "revenue" : 9.491881164687827,
    "item_id" : 4,
    "item_name" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceRevenueProductReportResource> 
     */
    open class func getRevenueByItemWithRequestBuilder(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceRevenueProductReportResource> {
        var path = "/reporting/revenue/products/{currencyCode}"
        path = path.replacingOccurrences(of: "{currency_code}", with: "\(currencyCode)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "start_date": startDate?.encodeToJSON(), 
            "end_date": endDate?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceRevenueProductReportResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get subscription revenue info
     
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSubscriptionRevenue(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping ((_ data: RevenueReportResource?,_ error: Error?) -> Void)) {
        getSubscriptionRevenueWithRequestBuilder(currencyCode: currencyCode, startDate: startDate, endDate: endDate).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get subscription revenue info
     - GET /reporting/revenue/subscription-sales/{currencyCode}
     - Get basic info about revenue from sales of new subscriptions as well as recurring payemnts, summed up within a time range
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "sales_average" : 4.4202627700257215,
  "sale_count" : 6,
  "sales_total" : 7.256287439481277,
  "customer_count" : 9
}}]
     
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)

     - returns: RequestBuilder<RevenueReportResource> 
     */
    open class func getSubscriptionRevenueWithRequestBuilder(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil) -> RequestBuilder<RevenueReportResource> {
        var path = "/reporting/revenue/subscription-sales/{currencyCode}"
        path = path.replacingOccurrences(of: "{currency_code}", with: "\(currencyCode)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "start_date": startDate?.encodeToJSON(), 
            "end_date": endDate?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<RevenueReportResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
