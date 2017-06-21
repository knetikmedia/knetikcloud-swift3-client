//
// CurrenciesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class CurrenciesAPI: APIBase {
    /**
     Create a currency
     
     - parameter currency: (body) The currency object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCurrency(currency: CurrencyResource? = nil, completion: @escaping ((_ data: CurrencyResource?,_ error: Error?) -> Void)) {
        createCurrencyWithRequestBuilder(currency: currency).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a currency
     - POST /currencies
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "code" : "aeiou",
  "icon" : "aeiou",
  "name" : "aeiou",
  "active" : false,
  "created_date" : 0,
  "updated_date" : 7,
  "factor" : 8.226321164403453,
  "type" : "real"
}}]
     
     - parameter currency: (body) The currency object (optional)

     - returns: RequestBuilder<CurrencyResource> 
     */
    open class func createCurrencyWithRequestBuilder(currency: CurrencyResource? = nil) -> RequestBuilder<CurrencyResource> {
        let path = "/currencies"
        let URLString = JSAPIAPI.basePath + path
        let parameters = currency?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CurrencyResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a currency
     
     - parameter code: (path) The currency code 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteCurrency(code: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteCurrencyWithRequestBuilder(code: code).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a currency
     - DELETE /currencies/{code}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter code: (path) The currency code 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteCurrencyWithRequestBuilder(code: String) -> RequestBuilder<Void> {
        var path = "/currencies/{code}"
        path = path.replacingOccurrences(of: "{code}", with: "\(code)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search currencies
     
     - parameter filterEnabledCurrencies: (query) Filter for alternate currencies setup explicitely in system config (optional)
     - parameter filterType: (query) Filter currencies by type.  Allowable values: (&#39;virtual&#39;, &#39;real&#39;) (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCurrencies(filterEnabledCurrencies: Bool? = nil, filterType: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceCurrencyResource?,_ error: Error?) -> Void)) {
        getCurrenciesWithRequestBuilder(filterEnabledCurrencies: filterEnabledCurrencies, filterType: filterType, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search currencies
     - GET /currencies
     - examples: [{contentType=application/json, example={
  "number" : 9,
  "last" : true,
  "size" : 7,
  "total_elements" : 7,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 2,
  "number_of_elements" : 4,
  "content" : [ {
    "code" : "aeiou",
    "icon" : "aeiou",
    "name" : "aeiou",
    "active" : false,
    "created_date" : 2,
    "updated_date" : 5,
    "factor" : 7.414089625828875,
    "type" : "real"
  } ],
  "first" : true
}}]
     
     - parameter filterEnabledCurrencies: (query) Filter for alternate currencies setup explicitely in system config (optional)
     - parameter filterType: (query) Filter currencies by type.  Allowable values: (&#39;virtual&#39;, &#39;real&#39;) (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)

     - returns: RequestBuilder<PageResourceCurrencyResource> 
     */
    open class func getCurrenciesWithRequestBuilder(filterEnabledCurrencies: Bool? = nil, filterType: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceCurrencyResource> {
        let path = "/currencies"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_enabled_currencies": filterEnabledCurrencies, 
            "filter_type": filterType, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceCurrencyResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single currency
     
     - parameter code: (path) The currency code 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCurrency(code: String, completion: @escaping ((_ data: CurrencyResource?,_ error: Error?) -> Void)) {
        getCurrencyWithRequestBuilder(code: code).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single currency
     - GET /currencies/{code}
     - examples: [{contentType=application/json, example={
  "code" : "aeiou",
  "icon" : "aeiou",
  "name" : "aeiou",
  "active" : false,
  "created_date" : 1,
  "updated_date" : 5,
  "factor" : 5.980394575517922,
  "type" : "real"
}}]
     
     - parameter code: (path) The currency code 

     - returns: RequestBuilder<CurrencyResource> 
     */
    open class func getCurrencyWithRequestBuilder(code: String) -> RequestBuilder<CurrencyResource> {
        var path = "/currencies/{code}"
        path = path.replacingOccurrences(of: "{code}", with: "\(code)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CurrencyResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a currency
     
     - parameter code: (path) The currency code 
     - parameter currency: (body) The currency object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateCurrency(code: String, currency: CurrencyResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateCurrencyWithRequestBuilder(code: code, currency: currency).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a currency
     - PUT /currencies/{code}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter code: (path) The currency code 
     - parameter currency: (body) The currency object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateCurrencyWithRequestBuilder(code: String, currency: CurrencyResource? = nil) -> RequestBuilder<Void> {
        var path = "/currencies/{code}"
        path = path.replacingOccurrences(of: "{code}", with: "\(code)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = currency?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
