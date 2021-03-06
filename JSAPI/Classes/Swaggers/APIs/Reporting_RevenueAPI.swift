//
// Reporting_RevenueAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class Reporting_RevenueAPI: APIBase {
    /**
     Get item revenue info
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getItemRevenue(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping ((_ data: RevenueReportResource?, _ error: ErrorResponse?) -> Void)) {
        getItemRevenueWithRequestBuilder(currencyCode: currencyCode, startDate: startDate, endDate: endDate).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get item revenue info
     - GET /reporting/revenue/item-sales/{currency_code}
     - Get basic info about revenue from sales of items and bundles (not subscriptions, shipping, etc), summed up within a time range. <br><br><b>Permissions Needed:</b> REPORTING_REVENUE_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "sales_average" : 1.46581298050294517310021547018550336360931396484375,
  "sale_count" : 6,
  "sales_total" : 5.962133916683182377482808078639209270477294921875,
  "customer_count" : 0
}}]
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
     - returns: RequestBuilder<RevenueReportResource> 
     */
    open class func getItemRevenueWithRequestBuilder(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil) -> RequestBuilder<RevenueReportResource> {
        var path = "/reporting/revenue/item-sales/{currency_code}"
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
    open class func getRefundRevenue(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping ((_ data: RevenueReportResource?, _ error: ErrorResponse?) -> Void)) {
        getRefundRevenueWithRequestBuilder(currencyCode: currencyCode, startDate: startDate, endDate: endDate).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get refund revenue info
     - GET /reporting/revenue/refunds/{currency_code}
     - Get basic info about revenue loss from refunds (for all item types), summed up within a time range. <br><br><b>Permissions Needed:</b> REPORTING_REVENUE_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "sales_average" : 1.46581298050294517310021547018550336360931396484375,
  "sale_count" : 6,
  "sales_total" : 5.962133916683182377482808078639209270477294921875,
  "customer_count" : 0
}}]
     - parameter currencyCode: (path) The code for a currency to get refund data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
     - returns: RequestBuilder<RevenueReportResource> 
     */
    open class func getRefundRevenueWithRequestBuilder(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil) -> RequestBuilder<RevenueReportResource> {
        var path = "/reporting/revenue/refunds/{currency_code}"
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
    open class func getRevenueByCountry(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceRevenueCountryReportResource?, _ error: ErrorResponse?) -> Void)) {
        getRevenueByCountryWithRequestBuilder(currencyCode: currencyCode, startDate: startDate, endDate: endDate, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get revenue info by country
     - GET /reporting/revenue/countries/{currency_code}
     - Get basic info about revenue from sales of all types, summed up within a time range and split out by country. Sorted for largest revenue at the top. <br><br><b>Permissions Needed:</b> REPORTING_REVENUE_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 1,
  "last" : true,
  "size" : 5,
  "total_elements" : 2,
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
  "total_pages" : 7,
  "number_of_elements" : 5,
  "content" : [ {
    "volume" : 6,
    "country" : "country",
    "revenue" : 0.80082819046101150206595775671303272247314453125
  }, {
    "volume" : 6,
    "country" : "country",
    "revenue" : 0.80082819046101150206595775671303272247314453125
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
        var path = "/reporting/revenue/countries/{currency_code}"
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
    open class func getRevenueByItem(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceRevenueProductReportResource?, _ error: ErrorResponse?) -> Void)) {
        getRevenueByItemWithRequestBuilder(currencyCode: currencyCode, startDate: startDate, endDate: endDate, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get revenue info by item
     - GET /reporting/revenue/products/{currency_code}
     - Get basic info about revenue from sales of all types, summed up within a time range and split out by specific item. Sorted for largest revenue at the top. <br><br><b>Permissions Needed:</b> REPORTING_REVENUE_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
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
    "volume" : 1,
    "revenue" : 6.02745618307040320615897144307382404804229736328125,
    "item_id" : 0,
    "item_name" : "item_name"
  }, {
    "volume" : 1,
    "revenue" : 6.02745618307040320615897144307382404804229736328125,
    "item_id" : 0,
    "item_name" : "item_name"
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
        var path = "/reporting/revenue/products/{currency_code}"
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
    open class func getSubscriptionRevenue(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil, completion: @escaping ((_ data: RevenueReportResource?, _ error: ErrorResponse?) -> Void)) {
        getSubscriptionRevenueWithRequestBuilder(currencyCode: currencyCode, startDate: startDate, endDate: endDate).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get subscription revenue info
     - GET /reporting/revenue/subscription-sales/{currency_code}
     - Get basic info about revenue from sales of new subscriptions as well as recurring payemnts, summed up within a time range. <br><br><b>Permissions Needed:</b> REPORTING_REVENUE_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "sales_average" : 1.46581298050294517310021547018550336360931396484375,
  "sale_count" : 6,
  "sales_total" : 5.962133916683182377482808078639209270477294921875,
  "customer_count" : 0
}}]
     - parameter currencyCode: (path) The code for a currency to get sales data for 
     - parameter startDate: (query) The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
     - parameter endDate: (query) The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
     - returns: RequestBuilder<RevenueReportResource> 
     */
    open class func getSubscriptionRevenueWithRequestBuilder(currencyCode: String, startDate: Int64? = nil, endDate: Int64? = nil) -> RequestBuilder<RevenueReportResource> {
        var path = "/reporting/revenue/subscription-sales/{currency_code}"
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
