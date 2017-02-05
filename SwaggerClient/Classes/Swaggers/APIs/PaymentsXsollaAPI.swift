//
// PaymentsXsollaAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class PaymentsXsollaAPI: APIBase {
    /**
     Create a payment token that should be used to forward the user to Xsolla so they can complete payment
     
     - parameter request: (body) The payment request to be sent to XSolla (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createTokenUrlUsingPOST(request: XsollaPaymentRequest? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        createTokenUrlUsingPOSTWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a payment token that should be used to forward the user to Xsolla so they can complete payment
     - POST /payment/provider/xsolla/payment
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter request: (body) The payment request to be sent to XSolla (optional)

     - returns: RequestBuilder<String> 
     */
    open class func createTokenUrlUsingPOSTWithRequestBuilder(request: XsollaPaymentRequest? = nil) -> RequestBuilder<String> {
        let path = "/payment/provider/xsolla/payment"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Receives payment response from Xsolla
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func receiveNotificationUsingPOST(completion: @escaping ((_ error: Error?) -> Void)) {
        receiveNotificationUsingPOSTWithRequestBuilder().execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Receives payment response from Xsolla
     - POST /payment/provider/xsolla/notifications
     - Only used by XSolla to call back to JSAPI after processing user payment action

     - returns: RequestBuilder<Void> 
     */
    open class func receiveNotificationUsingPOSTWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/payment/provider/xsolla/notifications"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
