//
// PaymentsGoogleAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class PaymentsGoogleAPI: APIBase {
    /**
     Mark an invoice paid with Google
     
     - parameter request: (body) The request for paying an invoice through a Google in-app payment (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func handleGooglePayment(request: GooglePaymentRequest? = nil, completion: @escaping ((_ data: Int32?,_ error: Error?) -> Void)) {
        handleGooglePaymentWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Mark an invoice paid with Google
     - POST /payment/provider/google/payments
     - Mark an invoice paid with Google. Verifies signature from Google and treats the developerPayload field inside the json payload as the id of the invoice to pay. Returns the transaction ID if successful.
     - examples: [{contentType=application/json, example=8}]
     
     - parameter request: (body) The request for paying an invoice through a Google in-app payment (optional)

     - returns: RequestBuilder<Int32> 
     */
    open class func handleGooglePaymentWithRequestBuilder(request: GooglePaymentRequest? = nil) -> RequestBuilder<Int32> {
        let path = "/payment/provider/google/payments"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Int32>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
