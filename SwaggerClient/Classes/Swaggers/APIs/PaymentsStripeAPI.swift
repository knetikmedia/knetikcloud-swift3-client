//
// PaymentsStripeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class PaymentsStripeAPI: APIBase {
    /**
     Create a Stripe payment method for a user
     
     - parameter request: (body) The request to create a Stripe customer with payment info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createStripePaymentMethod(request: StripeCreatePaymentMethod? = nil, completion: @escaping ((_ data: PaymentMethodResource?,_ error: Error?) -> Void)) {
        createStripePaymentMethodWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a Stripe payment method for a user
     - POST /payment/provider/stripe/payment-methods
     - Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "payment_method_type" : {
    "name" : "aeiou",
    "id" : 9
  },
  "last4" : "aeiou",
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "verified" : true,
  "long_description" : "aeiou",
  "sort" : 4,
  "expiration_date" : 4,
  "token" : "aeiou",
  "expiration_year" : 7,
  "default" : true,
  "payment_type" : "card",
  "user_id" : 5,
  "expiration_month" : 2,
  "name" : "aeiou",
  "disabled" : false,
  "created_date" : 4,
  "id" : 8,
  "updated_date" : 9
}}]
     
     - parameter request: (body) The request to create a Stripe customer with payment info (optional)

     - returns: RequestBuilder<PaymentMethodResource> 
     */
    open class func createStripePaymentMethodWithRequestBuilder(request: StripeCreatePaymentMethod? = nil) -> RequestBuilder<PaymentMethodResource> {
        let path = "/payment/provider/stripe/payment-methods"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PaymentMethodResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Pay with a single use token
     
     - parameter request: (body) The request to pay an invoice (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func payStripeInvoice(request: StripePaymentRequest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        payStripeInvoiceWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Pay with a single use token
     - POST /payment/provider/stripe/payments
     
     - parameter request: (body) The request to pay an invoice (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func payStripeInvoiceWithRequestBuilder(request: StripePaymentRequest? = nil) -> RequestBuilder<Void> {
        let path = "/payment/provider/stripe/payments"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
