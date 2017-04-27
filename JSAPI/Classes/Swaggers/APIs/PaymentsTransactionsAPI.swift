//
// PaymentsTransactionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class PaymentsTransactionsAPI: APIBase {
    /**
     Get the details for a single transaction
     
     - parameter id: (path) id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTransaction(id: Int32, completion: @escaping ((_ data: TransactionResource?,_ error: Error?) -> Void)) {
        getTransactionWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get the details for a single transaction
     - GET /transactions/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "transaction_id" : "aeiou",
  "type_hint" : "aeiou",
  "source" : "digital",
  "type" : "aeiou",
  "currency_code" : "aeiou",
  "is_refunded" : false,
  "response" : "aeiou",
  "invoice_id" : 4,
  "details" : "aeiou",
  "id" : 3,
  "create_date" : 5,
  "value" : 3.3152391198996933,
  "successful" : false
}}]
     
     - parameter id: (path) id 

     - returns: RequestBuilder<TransactionResource> 
     */
    open class func getTransactionWithRequestBuilder(id: Int32) -> RequestBuilder<TransactionResource> {
        var path = "/transactions/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TransactionResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search transactions
     
     - parameter filterInvoice: (query) Filter for transactions from a specific invoice (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTransactions(filterInvoice: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceTransactionResource?,_ error: Error?) -> Void)) {
        getTransactionsWithRequestBuilder(filterInvoice: filterInvoice, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search transactions
     - GET /transactions
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 8,
  "last" : true,
  "size" : 5,
  "total_elements" : 7,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 9,
  "number_of_elements" : 1,
  "content" : [ {
    "transaction_id" : "aeiou",
    "type_hint" : "aeiou",
    "source" : "digital",
    "type" : "aeiou",
    "currency_code" : "aeiou",
    "is_refunded" : false,
    "response" : "aeiou",
    "invoice_id" : 9,
    "details" : "aeiou",
    "id" : 6,
    "create_date" : 6,
    "value" : 0.5205533754740488,
    "successful" : false
  } ],
  "first" : true
}}]
     
     - parameter filterInvoice: (query) Filter for transactions from a specific invoice (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceTransactionResource> 
     */
    open class func getTransactionsWithRequestBuilder(filterInvoice: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTransactionResource> {
        let path = "/transactions"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_invoice": filterInvoice?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceTransactionResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Refund a payment transaction, in full or in part
     
     - parameter id: (path) The id of the transaction to refund 
     - parameter request: (body) Request containing refund details (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func refundTransaction(id: Int32, request: RefundRequest? = nil, completion: @escaping ((_ data: RefundResource?,_ error: Error?) -> Void)) {
        refundTransactionWithRequestBuilder(id: id, request: request).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Refund a payment transaction, in full or in part
     - POST /transactions/{id}/refunds
     - Will not allow for refunding more than the full amount even with multiple partial refunds. Money is refunded to the payment method used to make the original payment. Payment method must support refunds.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "transaction_id" : 1,
  "amount" : 0.1497961053941732,
  "refund_transaction_id" : 4
}}]
     
     - parameter id: (path) The id of the transaction to refund 
     - parameter request: (body) Request containing refund details (optional)

     - returns: RequestBuilder<RefundResource> 
     */
    open class func refundTransactionWithRequestBuilder(id: Int32, request: RefundRequest? = nil) -> RequestBuilder<RefundResource> {
        var path = "/transactions/{id}/refunds"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<RefundResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
