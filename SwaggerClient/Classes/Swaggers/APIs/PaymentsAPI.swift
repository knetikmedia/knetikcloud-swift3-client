//
// PaymentsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class PaymentsAPI: APIBase {
    /**
     Create a new payment method for a user
     
     - parameter userId: (path) ID of the user for whom the payment method is being created 
     - parameter paymentMethod: (body) Payment method being created (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPaymentMethodUsingPOST(userId: Int32, paymentMethod: PaymentMethodResource? = nil, completion: @escaping ((_ data: PaymentMethodResource?,_ error: Error?) -> Void)) {
        createPaymentMethodUsingPOSTWithRequestBuilder(userId: userId, paymentMethod: paymentMethod).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a new payment method for a user
     - POST /users/{userId}/payment-methods
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "payment_method_type" : {
    "name" : "aeiou",
    "id" : 123
  },
  "last4" : "aeiou",
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "verified" : true,
  "long_description" : "aeiou",
  "sort" : 123,
  "expiration_date" : 123456789,
  "token" : "aeiou",
  "expiration_year" : 123,
  "default" : true,
  "payment_type" : "aeiou",
  "user_id" : 123,
  "expiration_month" : 123,
  "name" : "aeiou",
  "disabled" : false,
  "created_date" : 123456789,
  "id" : 123456789,
  "updated_date" : 123456789
}}]
     
     - parameter userId: (path) ID of the user for whom the payment method is being created 
     - parameter paymentMethod: (body) Payment method being created (optional)

     - returns: RequestBuilder<PaymentMethodResource> 
     */
    open class func createPaymentMethodUsingPOSTWithRequestBuilder(userId: Int32, paymentMethod: PaymentMethodResource? = nil) -> RequestBuilder<PaymentMethodResource> {
        var path = "/users/{userId}/payment-methods"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = paymentMethod?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PaymentMethodResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an existing payment method for a user
     
     - parameter userId: (path) ID of the user for whom the payment method is being updated 
     - parameter id: (path) ID of the payment method being deleted 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePaymentMethodUsingDELETE(userId: Int32, id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deletePaymentMethodUsingDELETEWithRequestBuilder(userId: userId, id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete an existing payment method for a user
     - DELETE /users/{userId}/payment-methods/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter userId: (path) ID of the user for whom the payment method is being updated 
     - parameter id: (path) ID of the payment method being deleted 

     - returns: RequestBuilder<Void> 
     */
    open class func deletePaymentMethodUsingDELETEWithRequestBuilder(userId: Int32, id: Int32) -> RequestBuilder<Void> {
        var path = "/users/{userId}/payment-methods/{id}"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single payment method for a user
     
     - parameter userId: (path) ID of the user for whom the payment method is being retrieved 
     - parameter id: (path) ID of the payment method being retrieved 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPaymentMethodUsingGET(userId: Int32, id: Int32, completion: @escaping ((_ data: PaymentMethodResource?,_ error: Error?) -> Void)) {
        getPaymentMethodUsingGETWithRequestBuilder(userId: userId, id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single payment method for a user
     - GET /users/{userId}/payment-methods/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "payment_method_type" : {
    "name" : "aeiou",
    "id" : 123
  },
  "last4" : "aeiou",
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "verified" : true,
  "long_description" : "aeiou",
  "sort" : 123,
  "expiration_date" : 123456789,
  "token" : "aeiou",
  "expiration_year" : 123,
  "default" : true,
  "payment_type" : "aeiou",
  "user_id" : 123,
  "expiration_month" : 123,
  "name" : "aeiou",
  "disabled" : false,
  "created_date" : 123456789,
  "id" : 123456789,
  "updated_date" : 123456789
}}]
     
     - parameter userId: (path) ID of the user for whom the payment method is being retrieved 
     - parameter id: (path) ID of the payment method being retrieved 

     - returns: RequestBuilder<PaymentMethodResource> 
     */
    open class func getPaymentMethodUsingGETWithRequestBuilder(userId: Int32, id: Int32) -> RequestBuilder<PaymentMethodResource> {
        var path = "/users/{userId}/payment-methods/{id}"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PaymentMethodResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get all payment methods for a user
     
     - parameter userId: (path) ID of the user for whom the payment methods are being retrieved 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPaymentMethodsUsingGET(userId: Int32, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: [PaymentMethodResource]?,_ error: Error?) -> Void)) {
        getPaymentMethodsUsingGETWithRequestBuilder(userId: userId, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get all payment methods for a user
     - GET /users/{userId}/payment-methods
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ {
  "payment_method_type" : {
    "name" : "aeiou",
    "id" : 123
  },
  "last4" : "aeiou",
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "verified" : true,
  "long_description" : "aeiou",
  "sort" : 123,
  "expiration_date" : 123456789,
  "token" : "aeiou",
  "expiration_year" : 123,
  "default" : true,
  "payment_type" : "aeiou",
  "user_id" : 123,
  "expiration_month" : 123,
  "name" : "aeiou",
  "disabled" : false,
  "created_date" : 123456789,
  "id" : 123456789,
  "updated_date" : 123456789
} ]}]
     
     - parameter userId: (path) ID of the user for whom the payment methods are being retrieved 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<[PaymentMethodResource]> 
     */
    open class func getPaymentMethodsUsingGETWithRequestBuilder(userId: Int32, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<[PaymentMethodResource]> {
        var path = "/users/{userId}/payment-methods"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[PaymentMethodResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Authorize payment of an invoice for later capture
     
     - parameter request: (body) Payment authorization request (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func paymentAuthorizationUsingPOST(request: PaymentAuthorizationResource? = nil, completion: @escaping ((_ data: PaymentAuthorizationResource?,_ error: Error?) -> Void)) {
        paymentAuthorizationUsingPOSTWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Authorize payment of an invoice for later capture
     - POST /payment/authorizations
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "payment_type" : {
    "name" : "aeiou",
    "id" : 123
  },
  "created" : 123456789,
  "captured" : false,
  "details" : "{}",
  "id" : 123,
  "invoice" : 123
}}]
     
     - parameter request: (body) Payment authorization request (optional)

     - returns: RequestBuilder<PaymentAuthorizationResource> 
     */
    open class func paymentAuthorizationUsingPOSTWithRequestBuilder(request: PaymentAuthorizationResource? = nil) -> RequestBuilder<PaymentAuthorizationResource> {
        let path = "/payment/authorizations"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PaymentAuthorizationResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Capture an existing invoice payment authorization
     
     - parameter id: (path) ID of the payment authorization to capture 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func paymentCaptureUsingPOST(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        paymentCaptureUsingPOSTWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Capture an existing invoice payment authorization
     - POST /payment/authorizations/{id}/capture
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) ID of the payment authorization to capture 

     - returns: RequestBuilder<Void> 
     */
    open class func paymentCaptureUsingPOSTWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/payment/authorizations/{id}/capture"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an existing payment method for a user
     
     - parameter userId: (path) ID of the user for whom the payment method is being updated 
     - parameter id: (path) ID of the payment method being updated 
     - parameter paymentMethod: (body) The updated payment method data (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updatePaymentMethodUsingPUT(userId: Int32, id: Int32, paymentMethod: PaymentMethodResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updatePaymentMethodUsingPUTWithRequestBuilder(userId: userId, id: id, paymentMethod: paymentMethod).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update an existing payment method for a user
     - PUT /users/{userId}/payment-methods/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter userId: (path) ID of the user for whom the payment method is being updated 
     - parameter id: (path) ID of the payment method being updated 
     - parameter paymentMethod: (body) The updated payment method data (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updatePaymentMethodUsingPUTWithRequestBuilder(userId: Int32, id: Int32, paymentMethod: PaymentMethodResource? = nil) -> RequestBuilder<Void> {
        var path = "/users/{userId}/payment-methods/{id}"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = paymentMethod?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}