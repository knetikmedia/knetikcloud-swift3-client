//
// PaymentsPayPalClassicAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class PaymentsPayPalClassicAPI: APIBase {
    /**
     Create a PayPal Classic billing agreement for the user
     
     - parameter request: (body) The request to create a PayPal billing agreement (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createBillingAgreementUrlUsingPOST(request: CreateBillingAgreementRequest? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        createBillingAgreementUrlUsingPOSTWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a PayPal Classic billing agreement for the user
     - POST /payment/provider/paypal/classic/agreements/start
     - Returns the token that should be used to forward the user to PayPal so they can accept the agreement.
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter request: (body) The request to create a PayPal billing agreement (optional)

     - returns: RequestBuilder<String> 
     */
    open class func createBillingAgreementUrlUsingPOSTWithRequestBuilder(request: CreateBillingAgreementRequest? = nil) -> RequestBuilder<String> {
        let path = "/payment/provider/paypal/classic/agreements/start"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a payment token for PayPal express checkout
     
     - parameter request: (body) The request to create a PayPal payment token (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func expressCheckoutUsingPOST(request: CreatePayPalPaymentRequest? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        expressCheckoutUsingPOSTWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a payment token for PayPal express checkout
     - POST /payment/provider/paypal/classic/checkout/start
     - Returns the token that should be used to forward the user to PayPal so they can complete the checkout.
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter request: (body) The request to create a PayPal payment token (optional)

     - returns: RequestBuilder<String> 
     */
    open class func expressCheckoutUsingPOSTWithRequestBuilder(request: CreatePayPalPaymentRequest? = nil) -> RequestBuilder<String> {
        let path = "/payment/provider/paypal/classic/checkout/start"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Finalizes a billing agreement after the user has accepted through PayPal
     
     - parameter request: (body) The request to finalize a PayPal billing agreement (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func finalizeBillingAgreementUsingPOST(request: FinalizeBillingAgreementRequest? = nil, completion: @escaping ((_ data: Int32?,_ error: Error?) -> Void)) {
        finalizeBillingAgreementUsingPOSTWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Finalizes a billing agreement after the user has accepted through PayPal
     - POST /payment/provider/paypal/classic/agreements/finish
     - Returns the ID of the new payment method created for the user for the billing agreement.
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example=123}]
     
     - parameter request: (body) The request to finalize a PayPal billing agreement (optional)

     - returns: RequestBuilder<Int32> 
     */
    open class func finalizeBillingAgreementUsingPOSTWithRequestBuilder(request: FinalizeBillingAgreementRequest? = nil) -> RequestBuilder<Int32> {
        let path = "/payment/provider/paypal/classic/agreements/finish"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Int32>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Finalizes a payment after the user has completed checkout with PayPal
     
     - parameter request: (body) The request to finalize the payment (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func finalizeCheckoutUsingPOST(request: FinalizePayPalPaymentRequest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        finalizeCheckoutUsingPOSTWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Finalizes a payment after the user has completed checkout with PayPal
     - POST /payment/provider/paypal/classic/checkout/finish
     - The invoice will be marked paid/failed by asynchronous IPN callback.
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter request: (body) The request to finalize the payment (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func finalizeCheckoutUsingPOSTWithRequestBuilder(request: FinalizePayPalPaymentRequest? = nil) -> RequestBuilder<Void> {
        let path = "/payment/provider/paypal/classic/checkout/finish"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
