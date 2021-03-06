//
// Payments_AppleAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class Payments_AppleAPI: APIBase {
    /**
     Pay invoice with Apple receipt
     - parameter request: (body) The request for paying an invoice through an Apple receipt (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func verifyAppleReceipt(request: ApplyPaymentRequest? = nil, completion: @escaping ((_ data: String?, _ error: ErrorResponse?) -> Void)) {
        verifyAppleReceiptWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Pay invoice with Apple receipt
     - POST /payment/provider/apple/receipt
     - Mark an invoice paid using Apple payment receipt. A receipt will only be accepted once and the details of the transaction must match the invoice, including the product_id matching the sku text of the item in the invoice. Returns the transaction ID if successful. <br><br><b>Permissions Needed:</b> ANY
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=""}]
     - parameter request: (body) The request for paying an invoice through an Apple receipt (optional)
     - returns: RequestBuilder<String> 
     */
    open class func verifyAppleReceiptWithRequestBuilder(request: ApplyPaymentRequest? = nil) -> RequestBuilder<String> {
        let path = "/payment/provider/apple/receipt"
        let URLString = JSAPIAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<String>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
