//
// PaymentsFattMerchantAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class PaymentsFattMerchantAPI: APIBase {
    /**
     Create or update a FattMerchant payment method for a user
     - parameter request: (body) Request containing payment method information for user (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createOrUpdateFattMerchantPaymentMethod(request: FattMerchantPaymentMethodRequest? = nil, completion: @escaping ((_ data: PaymentMethodResource?, _ error: ErrorResponse?) -> Void)) {
        createOrUpdateFattMerchantPaymentMethodWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create or update a FattMerchant payment method for a user
     - PUT /payment/provider/fattmerchant/payment-methods
     - Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "payment_method_type" : {
    "name" : "name",
    "id" : 2
  },
  "last4" : "last4",
  "unique_key" : "unique_key",
  "verified" : true,
  "sort" : 7,
  "expiration_date" : 6,
  "token" : "token",
  "expiration_year" : 5,
  "default" : true,
  "payment_type" : "card",
  "user_id" : 3,
  "expiration_month" : 1,
  "name" : "name",
  "disabled" : false,
  "created_date" : 0,
  "id" : 5,
  "updated_date" : 9
}}]
     - parameter request: (body) Request containing payment method information for user (optional)
     - returns: RequestBuilder<PaymentMethodResource> 
     */
    open class func createOrUpdateFattMerchantPaymentMethodWithRequestBuilder(request: FattMerchantPaymentMethodRequest? = nil) -> RequestBuilder<PaymentMethodResource> {
        let path = "/payment/provider/fattmerchant/payment-methods"
        let URLString = JSAPIAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<PaymentMethodResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
