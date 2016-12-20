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
    open class func getTransactionUsingGET(id: Int32, completion: @escaping ((_ data: TransactionResource?,_ error: Error?) -> Void)) {
        getTransactionUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
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
  "source" : "aeiou",
  "type" : "aeiou",
  "currency_code" : "aeiou",
  "is_refunded" : false,
  "response" : "aeiou",
  "invoice_id" : 123,
  "details" : "aeiou",
  "id" : 123,
  "create_date" : 123456789,
  "value" : 1.3579000000000001069366817318950779736042022705078125,
  "successful" : false
}}]
     
     - parameter id: (path) id 

     - returns: RequestBuilder<TransactionResource> 
     */
    open class func getTransactionUsingGETWithRequestBuilder(id: Int32) -> RequestBuilder<TransactionResource> {
        var path = "/transactions/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<TransactionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search transactions
     
     - parameter filterInvoice: (query) Filter for transactions from a specific invoice (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTransactionsUsingGET(filterInvoice: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageTransactionResource?,_ error: Error?) -> Void)) {
        getTransactionsUsingGETWithRequestBuilder(filterInvoice: filterInvoice, size: size, page: page, order: order).execute { (response, error) -> Void in
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
  "number" : 123,
  "last" : true,
  "size" : 123,
  "total_elements" : 123456789,
  "sort" : { },
  "total_pages" : 123,
  "number_of_elements" : 123,
  "content" : [ {
    "transaction_id" : "aeiou",
    "type_hint" : "aeiou",
    "source" : "aeiou",
    "type" : "aeiou",
    "currency_code" : "aeiou",
    "is_refunded" : false,
    "response" : "aeiou",
    "invoice_id" : 123,
    "details" : "aeiou",
    "id" : 123,
    "create_date" : 123456789,
    "value" : 1.3579000000000001069366817318950779736042022705078125,
    "successful" : false
  } ],
  "first" : true
}}]
     
     - parameter filterInvoice: (query) Filter for transactions from a specific invoice (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageTransactionResource> 
     */
    open class func getTransactionsUsingGETWithRequestBuilder(filterInvoice: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageTransactionResource> {
        let path = "/transactions"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_invoice": filterInvoice?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageTransactionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Refund a payment transaction, in full or in part
     
     - parameter id: (path) The id of the transaction to refund 
     - parameter request: (body) Request containing refund details (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func refundTransactionUsingPOST(id: Int32, request: RefundRequest? = nil, completion: @escaping ((_ data: RefundResource?,_ error: Error?) -> Void)) {
        refundTransactionUsingPOSTWithRequestBuilder(id: id, request: request).execute { (response, error) -> Void in
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
  "transaction_id" : 123,
  "amount" : 1.3579000000000001069366817318950779736042022705078125,
  "refund_transaction_id" : 123
}}]
     
     - parameter id: (path) The id of the transaction to refund 
     - parameter request: (body) Request containing refund details (optional)

     - returns: RequestBuilder<RefundResource> 
     */
    open class func refundTransactionUsingPOSTWithRequestBuilder(id: Int32, request: RefundRequest? = nil) -> RequestBuilder<RefundResource> {
        var path = "/transactions/{id}/refunds"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<RefundResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
