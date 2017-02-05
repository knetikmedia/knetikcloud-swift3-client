//
// PaymentsWalletsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class PaymentsWalletsAPI: APIBase {
    /**
     Retrieves a summation of wallet balances by currency code
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getWalletTotalsUsingGET(completion: @escaping ((_ data: PageResourceWalletTotalResponse?,_ error: Error?) -> Void)) {
        getWalletTotalsUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieves a summation of wallet balances by currency code
     - GET /wallets/totals
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
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
    "total" : 1.3579000000000001069366817318950779736042022705078125,
    "currency_code" : "aeiou"
  } ],
  "first" : true
}}]

     - returns: RequestBuilder<PageResourceWalletTotalResponse> 
     */
    open class func getWalletTotalsUsingGETWithRequestBuilder() -> RequestBuilder<PageResourceWalletTotalResponse> {
        let path = "/wallets/totals"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PageResourceWalletTotalResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns the user's wallet for the given currency code
     
     - parameter userId: (path) The ID of the user for whom wallet is being retrieved 
     - parameter currencyCode: (path) Currency code of the user&#39;s wallet 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getWalletUsingGET(userId: Int32, currencyCode: String, completion: @escaping ((_ data: SimpleWallet?,_ error: Error?) -> Void)) {
        getWalletUsingGETWithRequestBuilder(userId: userId, currencyCode: currencyCode).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Returns the user's wallet for the given currency code
     - GET /users/{userId}/wallets/{currencyCode}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "code" : "aeiou",
  "currency_name" : "aeiou",
  "balance" : 1.3579000000000001069366817318950779736042022705078125,
  "user_id" : 123,
  "id" : 123
}}]
     
     - parameter userId: (path) The ID of the user for whom wallet is being retrieved 
     - parameter currencyCode: (path) Currency code of the user&#39;s wallet 

     - returns: RequestBuilder<SimpleWallet> 
     */
    open class func getWalletUsingGETWithRequestBuilder(userId: Int32, currencyCode: String) -> RequestBuilder<SimpleWallet> {
        var path = "/users/{userId}/wallets/{currencyCode}"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{currencyCode}", with: "\(currencyCode)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SimpleWallet>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List all of a user's wallets
     
     - parameter userId: (path) The ID of the user for whom wallets are being retrieved 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getWalletsUsingGET(userId: Int32, completion: @escaping ((_ data: [SimpleWallet]?,_ error: Error?) -> Void)) {
        getWalletsUsingGETWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List all of a user's wallets
     - GET /users/{userId}/wallets
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example=[ {
  "code" : "aeiou",
  "currency_name" : "aeiou",
  "balance" : 1.3579000000000001069366817318950779736042022705078125,
  "user_id" : 123,
  "id" : 123
} ]}]
     
     - parameter userId: (path) The ID of the user for whom wallets are being retrieved 

     - returns: RequestBuilder<[SimpleWallet]> 
     */
    open class func getWalletsUsingGETWithRequestBuilder(userId: Int32) -> RequestBuilder<[SimpleWallet]> {
        var path = "/users/{userId}/wallets"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[SimpleWallet]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Retrieve a list of wallets across the system
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getWalletsUsingGET1(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceSimpleWallet?,_ error: Error?) -> Void)) {
        getWalletsUsingGET1WithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve a list of wallets across the system
     - GET /wallets
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
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
    "code" : "aeiou",
    "currency_name" : "aeiou",
    "balance" : 1.3579000000000001069366817318950779736042022705078125,
    "user_id" : 123,
    "id" : 123
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceSimpleWallet> 
     */
    open class func getWalletsUsingGET1WithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceSimpleWallet> {
        let path = "/wallets"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceSimpleWallet>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter filterSign
     */
    public enum FilterSign_transactionHistoryUsingGET: String { 
        case positive = "positive"
        case negative = "negative"
    }

    /**
     Retrieve wallet transactions across the system
     
     - parameter filterInvoice: (query) Filter for transactions from a specific invoice (optional)
     - parameter filterType: (query) Filter for transactions with specified type (optional)
     - parameter filterMaxDate: (query) Filter for transactions from no earlier than the specified date as a unix timestamp in seconds (optional)
     - parameter filterMinDate: (query) Filter for transactions from no later than the specified date as a unix timestamp in seconds (optional)
     - parameter filterSign: (query) Filter for transactions with amount with the given sign (optional)
     - parameter filterUserId: (query) Filter for transactions for specific userId (optional)
     - parameter filterUsername: (query) Filter for transactions for specific username that start with the given string (optional)
     - parameter filterDetails: (query) Filter for transactions for specific details that start with the given string (optional)
     - parameter filterCurrencyCode: (query) Filter for transactions for specific currency code (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func transactionHistoryUsingGET(filterInvoice: Int32? = nil, filterType: String? = nil, filterMaxDate: Int64? = nil, filterMinDate: Int64? = nil, filterSign: FilterSign_transactionHistoryUsingGET? = nil, filterUserId: Int32? = nil, filterUsername: String? = nil, filterDetails: String? = nil, filterCurrencyCode: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceWalletTransactionResource?,_ error: Error?) -> Void)) {
        transactionHistoryUsingGETWithRequestBuilder(filterInvoice: filterInvoice, filterType: filterType, filterMaxDate: filterMaxDate, filterMinDate: filterMinDate, filterSign: filterSign, filterUserId: filterUserId, filterUsername: filterUsername, filterDetails: filterDetails, filterCurrencyCode: filterCurrencyCode, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve wallet transactions across the system
     - GET /wallets/transactions
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
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
    "transaction_id" : "aeiou",
    "type_hint" : "aeiou",
    "source" : "aeiou",
    "type" : "aeiou",
    "currency_code" : "aeiou",
    "is_refunded" : false,
    "wallet_id" : 123,
    "balance" : 1.3579000000000001069366817318950779736042022705078125,
    "response" : "aeiou",
    "invoice_id" : 123,
    "details" : "aeiou",
    "id" : 123,
    "create_date" : 123456789,
    "user" : {
      "avatar_url" : "aeiou",
      "id" : 123,
      "display_name" : "aeiou",
      "username" : "aeiou"
    },
    "value" : 1.3579000000000001069366817318950779736042022705078125,
    "successful" : false
  } ],
  "first" : true
}}]
     
     - parameter filterInvoice: (query) Filter for transactions from a specific invoice (optional)
     - parameter filterType: (query) Filter for transactions with specified type (optional)
     - parameter filterMaxDate: (query) Filter for transactions from no earlier than the specified date as a unix timestamp in seconds (optional)
     - parameter filterMinDate: (query) Filter for transactions from no later than the specified date as a unix timestamp in seconds (optional)
     - parameter filterSign: (query) Filter for transactions with amount with the given sign (optional)
     - parameter filterUserId: (query) Filter for transactions for specific userId (optional)
     - parameter filterUsername: (query) Filter for transactions for specific username that start with the given string (optional)
     - parameter filterDetails: (query) Filter for transactions for specific details that start with the given string (optional)
     - parameter filterCurrencyCode: (query) Filter for transactions for specific currency code (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceWalletTransactionResource> 
     */
    open class func transactionHistoryUsingGETWithRequestBuilder(filterInvoice: Int32? = nil, filterType: String? = nil, filterMaxDate: Int64? = nil, filterMinDate: Int64? = nil, filterSign: FilterSign_transactionHistoryUsingGET? = nil, filterUserId: Int32? = nil, filterUsername: String? = nil, filterDetails: String? = nil, filterCurrencyCode: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceWalletTransactionResource> {
        let path = "/wallets/transactions"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_invoice": filterInvoice?.encodeToJSON(), 
            "filter_type": filterType, 
            "filter_max_date": filterMaxDate?.encodeToJSON(), 
            "filter_min_date": filterMinDate?.encodeToJSON(), 
            "filter_sign": filterSign?.rawValue, 
            "filter_user_id": filterUserId?.encodeToJSON(), 
            "filter_username": filterUsername, 
            "filter_details": filterDetails, 
            "filter_currency_code": filterCurrencyCode, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceWalletTransactionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Updates the balance for a user's wallet
     
     - parameter userId: (path) The ID of the user for whom wallet is being modified 
     - parameter currencyCode: (path) Currency code of the user&#39;s wallet 
     - parameter request: (body) The requested balance modification to be made to the user&#39;s wallet (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateBalanceUsingPUT(userId: Int32, currencyCode: String, request: WalletAlterRequest? = nil, completion: @escaping ((_ data: WalletTransactionResource?,_ error: Error?) -> Void)) {
        updateBalanceUsingPUTWithRequestBuilder(userId: userId, currencyCode: currencyCode, request: request).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Updates the balance for a user's wallet
     - PUT /users/{userId}/wallets/{currencyCode}/balance
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "transaction_id" : "aeiou",
  "type_hint" : "aeiou",
  "source" : "aeiou",
  "type" : "aeiou",
  "currency_code" : "aeiou",
  "is_refunded" : false,
  "wallet_id" : 123,
  "balance" : 1.3579000000000001069366817318950779736042022705078125,
  "response" : "aeiou",
  "invoice_id" : 123,
  "details" : "aeiou",
  "id" : 123,
  "create_date" : 123456789,
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 123,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "value" : 1.3579000000000001069366817318950779736042022705078125,
  "successful" : false
}}]
     
     - parameter userId: (path) The ID of the user for whom wallet is being modified 
     - parameter currencyCode: (path) Currency code of the user&#39;s wallet 
     - parameter request: (body) The requested balance modification to be made to the user&#39;s wallet (optional)

     - returns: RequestBuilder<WalletTransactionResource> 
     */
    open class func updateBalanceUsingPUTWithRequestBuilder(userId: Int32, currencyCode: String, request: WalletAlterRequest? = nil) -> RequestBuilder<WalletTransactionResource> {
        var path = "/users/{userId}/wallets/{currencyCode}/balance"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{currencyCode}", with: "\(currencyCode)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<WalletTransactionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Retrieve a user's wallet transactions
     
     - parameter userId: (path) The ID of the user for whom wallet transactions are being retrieved 
     - parameter currencyCode: (path) Currency code of the user&#39;s wallet 
     - parameter filterType: (query) Filter for transactions with specified type (optional)
     - parameter filterMaxDate: (query) Filter for transactions from no earlier than the specified date as a unix timestamp in seconds (optional)
     - parameter filterMinDate: (query) Filter for transactions from no later than the specified date as a unix timestamp in seconds (optional)
     - parameter filterSign: (query) Filter for transactions with amount with the given sign.  Allowable values: (&#39;positive&#39;, &#39;negative&#39;) (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userTransactionHistoryUsingGET(userId: Int32, currencyCode: String, filterType: String? = nil, filterMaxDate: Int64? = nil, filterMinDate: Int64? = nil, filterSign: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceWalletTransactionResource?,_ error: Error?) -> Void)) {
        userTransactionHistoryUsingGETWithRequestBuilder(userId: userId, currencyCode: currencyCode, filterType: filterType, filterMaxDate: filterMaxDate, filterMinDate: filterMinDate, filterSign: filterSign, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve a user's wallet transactions
     - GET /users/{userId}/wallets/{currencyCode}/transactions
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
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
    "transaction_id" : "aeiou",
    "type_hint" : "aeiou",
    "source" : "aeiou",
    "type" : "aeiou",
    "currency_code" : "aeiou",
    "is_refunded" : false,
    "wallet_id" : 123,
    "balance" : 1.3579000000000001069366817318950779736042022705078125,
    "response" : "aeiou",
    "invoice_id" : 123,
    "details" : "aeiou",
    "id" : 123,
    "create_date" : 123456789,
    "user" : {
      "avatar_url" : "aeiou",
      "id" : 123,
      "display_name" : "aeiou",
      "username" : "aeiou"
    },
    "value" : 1.3579000000000001069366817318950779736042022705078125,
    "successful" : false
  } ],
  "first" : true
}}]
     
     - parameter userId: (path) The ID of the user for whom wallet transactions are being retrieved 
     - parameter currencyCode: (path) Currency code of the user&#39;s wallet 
     - parameter filterType: (query) Filter for transactions with specified type (optional)
     - parameter filterMaxDate: (query) Filter for transactions from no earlier than the specified date as a unix timestamp in seconds (optional)
     - parameter filterMinDate: (query) Filter for transactions from no later than the specified date as a unix timestamp in seconds (optional)
     - parameter filterSign: (query) Filter for transactions with amount with the given sign.  Allowable values: (&#39;positive&#39;, &#39;negative&#39;) (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceWalletTransactionResource> 
     */
    open class func userTransactionHistoryUsingGETWithRequestBuilder(userId: Int32, currencyCode: String, filterType: String? = nil, filterMaxDate: Int64? = nil, filterMinDate: Int64? = nil, filterSign: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceWalletTransactionResource> {
        var path = "/users/{userId}/wallets/{currencyCode}/transactions"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{currencyCode}", with: "\(currencyCode)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_type": filterType, 
            "filter_max_date": filterMaxDate?.encodeToJSON(), 
            "filter_min_date": filterMinDate?.encodeToJSON(), 
            "filter_sign": filterSign, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceWalletTransactionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
