//
// PaymentsStripeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class PaymentsStripeAPI: APIBase {
    /**
     Create a Stripe payment method for a user
     - parameter request: (body) The request to create a Stripe customer with payment info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createStripePaymentMethod(request: StripeCreatePaymentMethod? = nil, completion: @escaping ((_ data: PaymentMethodResource?, _ error: ErrorResponse?) -> Void)) {
        createStripePaymentMethodWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a Stripe payment method for a user
     - POST /payment/provider/stripe/payment-methods
     - Obtain a token from Stripe, following their examples and documentation. Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints. Ensure that Stripe itself has been configured with the webhook so that invoices are marked paid.
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "payment_method_type" : {
    "supports_refunds" : false,
    "supports_rebill" : false,
    "invoice_processing_hours" : 7,
    "supports_capture" : false,
    "name" : "name",
    "id" : 2,
    "supports_partial" : false
  },
  "last4" : "last4",
  "unique_key" : "unique_key",
  "verified" : true,
  "sort" : 9,
  "expiration_date" : 6,
  "token" : "token",
  "expiration_year" : 5,
  "default" : true,
  "payment_type" : "card",
  "user_id" : 2,
  "expiration_month" : 1,
  "name" : "name",
  "disabled" : false,
  "created_date" : 0,
  "id" : 5,
  "updated_date" : 3
}}]
     - parameter request: (body) The request to create a Stripe customer with payment info (optional)
     - returns: RequestBuilder<PaymentMethodResource> 
     */
    open class func createStripePaymentMethodWithRequestBuilder(request: StripeCreatePaymentMethod? = nil) -> RequestBuilder<PaymentMethodResource> {
        let path = "/payment/provider/stripe/payment-methods"
        let URLString = JSAPIAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<PaymentMethodResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Pay with a single use token
     - parameter request: (body) The request to pay an invoice (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func payStripeInvoice(request: StripePaymentRequest? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        payStripeInvoiceWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Pay with a single use token
     - POST /payment/provider/stripe/payments
     - Obtain a token from Stripe, following their examples and documentation. Pays an invoice without creating a payment method. Ensure that Stripe itself has been configured with the webhook so that invoices are marked paid.

     - parameter request: (body) The request to pay an invoice (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func payStripeInvoiceWithRequestBuilder(request: StripePaymentRequest? = nil) -> RequestBuilder<Void> {
        let path = "/payment/provider/stripe/payments"
        let URLString = JSAPIAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
