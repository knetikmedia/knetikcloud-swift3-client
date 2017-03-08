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
    open class func createPaymentMethod(userId: Int32, paymentMethod: PaymentMethodResource? = nil, completion: @escaping ((_ data: PaymentMethodResource?,_ error: Error?) -> Void)) {
        createPaymentMethodWithRequestBuilder(userId: userId, paymentMethod: paymentMethod).execute { (response, error) -> Void in
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
    "id" : 5
  },
  "last4" : "aeiou",
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "verified" : true,
  "long_description" : "aeiou",
  "sort" : 9,
  "expiration_date" : 3,
  "token" : "aeiou",
  "expiration_year" : 2,
  "default" : true,
  "payment_type" : "card",
  "user_id" : 0,
  "expiration_month" : 3,
  "name" : "aeiou",
  "disabled" : false,
  "created_date" : 9,
  "id" : 3,
  "updated_date" : 3
}}]
     
     - parameter userId: (path) ID of the user for whom the payment method is being created 
     - parameter paymentMethod: (body) Payment method being created (optional)

     - returns: RequestBuilder<PaymentMethodResource> 
     */
    open class func createPaymentMethodWithRequestBuilder(userId: Int32, paymentMethod: PaymentMethodResource? = nil) -> RequestBuilder<PaymentMethodResource> {
        var path = "/users/{userId}/payment-methods"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = paymentMethod?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PaymentMethodResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete an existing payment method for a user
     
     - parameter userId: (path) ID of the user for whom the payment method is being updated 
     - parameter id: (path) ID of the payment method being deleted 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePaymentMethod(userId: Int32, id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deletePaymentMethodWithRequestBuilder(userId: userId, id: id).execute { (response, error) -> Void in
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
    open class func deletePaymentMethodWithRequestBuilder(userId: Int32, id: Int32) -> RequestBuilder<Void> {
        var path = "/users/{userId}/payment-methods/{id}"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single payment method for a user
     
     - parameter userId: (path) ID of the user for whom the payment method is being retrieved 
     - parameter id: (path) ID of the payment method being retrieved 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPaymentMethod(userId: Int32, id: Int32, completion: @escaping ((_ data: PaymentMethodResource?,_ error: Error?) -> Void)) {
        getPaymentMethodWithRequestBuilder(userId: userId, id: id).execute { (response, error) -> Void in
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
    "id" : 7
  },
  "last4" : "aeiou",
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "verified" : true,
  "long_description" : "aeiou",
  "sort" : 3,
  "expiration_date" : 8,
  "token" : "aeiou",
  "expiration_year" : 2,
  "default" : true,
  "payment_type" : "card",
  "user_id" : 4,
  "expiration_month" : 6,
  "name" : "aeiou",
  "disabled" : false,
  "created_date" : 1,
  "id" : 4,
  "updated_date" : 3
}}]
     
     - parameter userId: (path) ID of the user for whom the payment method is being retrieved 
     - parameter id: (path) ID of the payment method being retrieved 

     - returns: RequestBuilder<PaymentMethodResource> 
     */
    open class func getPaymentMethodWithRequestBuilder(userId: Int32, id: Int32) -> RequestBuilder<PaymentMethodResource> {
        var path = "/users/{userId}/payment-methods/{id}"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PaymentMethodResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all payment methods for a user
     
     - parameter userId: (path) ID of the user for whom the payment methods are being retrieved 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPaymentMethods(userId: Int32, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: [PaymentMethodResource]?,_ error: Error?) -> Void)) {
        getPaymentMethodsWithRequestBuilder(userId: userId, size: size, page: page, order: order).execute { (response, error) -> Void in
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
    "id" : 5
  },
  "last4" : "aeiou",
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "verified" : true,
  "long_description" : "aeiou",
  "sort" : 1,
  "expiration_date" : 8,
  "token" : "aeiou",
  "expiration_year" : 3,
  "default" : true,
  "payment_type" : "card",
  "user_id" : 3,
  "expiration_month" : 3,
  "name" : "aeiou",
  "disabled" : false,
  "created_date" : 0,
  "id" : 0,
  "updated_date" : 3
} ]}]
     
     - parameter userId: (path) ID of the user for whom the payment methods are being retrieved 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<[PaymentMethodResource]> 
     */
    open class func getPaymentMethodsWithRequestBuilder(userId: Int32, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<[PaymentMethodResource]> {
        var path = "/users/{userId}/payment-methods"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<[PaymentMethodResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Authorize payment of an invoice for later capture
     
     - parameter request: (body) Payment authorization request (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func paymentAuthorization(request: PaymentAuthorizationResource? = nil, completion: @escaping ((_ data: PaymentAuthorizationResource?,_ error: Error?) -> Void)) {
        paymentAuthorizationWithRequestBuilder(request: request).execute { (response, error) -> Void in
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
    "id" : 0
  },
  "created" : 2,
  "captured" : false,
  "details" : "{}",
  "id" : 5,
  "invoice" : 1
}}]
     
     - parameter request: (body) Payment authorization request (optional)

     - returns: RequestBuilder<PaymentAuthorizationResource> 
     */
    open class func paymentAuthorizationWithRequestBuilder(request: PaymentAuthorizationResource? = nil) -> RequestBuilder<PaymentAuthorizationResource> {
        let path = "/payment/authorizations"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PaymentAuthorizationResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Capture an existing invoice payment authorization
     
     - parameter id: (path) ID of the payment authorization to capture 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func paymentCapture(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        paymentCaptureWithRequestBuilder(id: id).execute { (response, error) -> Void in
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
    open class func paymentCaptureWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/payment/authorizations/{id}/capture"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update an existing payment method for a user
     
     - parameter userId: (path) ID of the user for whom the payment method is being updated 
     - parameter id: (path) ID of the payment method being updated 
     - parameter paymentMethod: (body) The updated payment method data (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updatePaymentMethod(userId: Int32, id: Int32, paymentMethod: PaymentMethodResource? = nil, completion: @escaping ((_ data: PaymentMethodResource?,_ error: Error?) -> Void)) {
        updatePaymentMethodWithRequestBuilder(userId: userId, id: id, paymentMethod: paymentMethod).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update an existing payment method for a user
     - PUT /users/{userId}/payment-methods/{id}
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
  "expiration_date" : 8,
  "token" : "aeiou",
  "expiration_year" : 0,
  "default" : true,
  "payment_type" : "card",
  "user_id" : 7,
  "expiration_month" : 0,
  "name" : "aeiou",
  "disabled" : false,
  "created_date" : 2,
  "id" : 2,
  "updated_date" : 2
}}]
     
     - parameter userId: (path) ID of the user for whom the payment method is being updated 
     - parameter id: (path) ID of the payment method being updated 
     - parameter paymentMethod: (body) The updated payment method data (optional)

     - returns: RequestBuilder<PaymentMethodResource> 
     */
    open class func updatePaymentMethodWithRequestBuilder(userId: Int32, id: Int32, paymentMethod: PaymentMethodResource? = nil) -> RequestBuilder<PaymentMethodResource> {
        var path = "/users/{userId}/payment-methods/{id}"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = paymentMethod?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PaymentMethodResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
