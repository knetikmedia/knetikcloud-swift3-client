//
// UsersSubscriptionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class UsersSubscriptionsAPI: APIBase {
    /**
     Get details about a user's subscription
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserSubscriptionDetails(userId: Int32, inventoryId: Int32, completion: @escaping ((_ data: InventorySubscriptionResource?,_ error: Error?) -> Void)) {
        getUserSubscriptionDetailsWithRequestBuilder(userId: userId, inventoryId: inventoryId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get details about a user's subscription
     - GET /users/{userId}/subscriptions/{inventoryId}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "grace_end" : 4,
  "bill_date" : 3,
  "item_id" : 7,
  "inventory_id" : 7,
  "recurring_price" : 0.4649394787748362,
  "inventory_status" : "pending",
  "subscription_status" : 3,
  "credit" : 2.229968728845231,
  "credit_log" : [ {
    "reason" : "aeiou",
    "amount" : 6.185303431210459,
    "inventory_id" : 8,
    "created_date" : 9,
    "id" : 3
  } ],
  "sku" : "aeiou",
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 6,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "payment_method" : {
    "payment_method_type" : {
      "name" : "aeiou",
      "id" : 5
    },
    "last4" : "aeiou",
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "verified" : true,
    "long_description" : "aeiou",
    "sort" : 2,
    "expiration_date" : 5,
    "token" : "aeiou",
    "expiration_year" : 6,
    "default" : true,
    "payment_type" : "card",
    "user_id" : 7,
    "expiration_month" : 4,
    "name" : "aeiou",
    "disabled" : false,
    "created_date" : 2,
    "id" : 7,
    "updated_date" : 6
  },
  "start_date" : 5
}}]
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 

     - returns: RequestBuilder<InventorySubscriptionResource> 
     */
    open class func getUserSubscriptionDetailsWithRequestBuilder(userId: Int32, inventoryId: Int32) -> RequestBuilder<InventorySubscriptionResource> {
        var path = "/users/{userId}/subscriptions/{inventoryId}"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{inventory_id}", with: "\(inventoryId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<InventorySubscriptionResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get details about a user's subscriptions
     
     - parameter userId: (path) The id of the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUsersSubscriptionDetails(userId: Int32, completion: @escaping ((_ data: [InventorySubscriptionResource]?,_ error: Error?) -> Void)) {
        getUsersSubscriptionDetailsWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get details about a user's subscriptions
     - GET /users/{userId}/subscriptions
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ {
  "grace_end" : 1,
  "bill_date" : 9,
  "item_id" : 3,
  "inventory_id" : 9,
  "recurring_price" : 3.1479141774898833,
  "inventory_status" : "pending",
  "subscription_status" : 3,
  "credit" : 2.438450896191673,
  "credit_log" : [ {
    "reason" : "aeiou",
    "amount" : 6.34866743028208,
    "inventory_id" : 6,
    "created_date" : 8,
    "id" : 7
  } ],
  "sku" : "aeiou",
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 0,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "payment_method" : {
    "payment_method_type" : {
      "name" : "aeiou",
      "id" : 0
    },
    "last4" : "aeiou",
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "verified" : true,
    "long_description" : "aeiou",
    "sort" : 8,
    "expiration_date" : 7,
    "token" : "aeiou",
    "expiration_year" : 1,
    "default" : true,
    "payment_type" : "card",
    "user_id" : 9,
    "expiration_month" : 6,
    "name" : "aeiou",
    "disabled" : false,
    "created_date" : 2,
    "id" : 4,
    "updated_date" : 5
  },
  "start_date" : 4
} ]}]
     
     - parameter userId: (path) The id of the user 

     - returns: RequestBuilder<[InventorySubscriptionResource]> 
     */
    open class func getUsersSubscriptionDetailsWithRequestBuilder(userId: Int32) -> RequestBuilder<[InventorySubscriptionResource]> {
        var path = "/users/{userId}/subscriptions"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[InventorySubscriptionResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Reactivate a subscription and charge fee
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter reactivateSubscriptionRequest: (body) The reactivate subscription request object inventory (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func reactivateUserSubscription(userId: Int32, inventoryId: Int32, reactivateSubscriptionRequest: ReactivateSubscriptionRequest? = nil, completion: @escaping ((_ data: InvoiceResource?,_ error: Error?) -> Void)) {
        reactivateUserSubscriptionWithRequestBuilder(userId: userId, inventoryId: inventoryId, reactivateSubscriptionRequest: reactivateSubscriptionRequest).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Reactivate a subscription and charge fee
     - POST /users/{userId}/subscriptions/{inventoryId}/reactivate
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "shipping_city_name" : "aeiou",
  "order_notes" : "aeiou",
  "parent_invoice_id" : 0,
  "discount" : 9.149506445042567,
  "state_tax" : 7.23870313247199,
  "cart_id" : "aeiou",
  "name_prefix" : "aeiou",
  "billing_postal_code" : "aeiou",
  "shipping" : 3.370483273107853,
  "billing_state_name" : "aeiou",
  "billing_country_name" : "aeiou",
  "currency" : "aeiou",
  "current_fulfillment_status" : "aeiou",
  "grand_total" : 1.8146539903993086,
  "id" : 1,
  "current_payment_status" : "aeiou",
  "billing_address1" : "aeiou",
  "invoice_number" : "aeiou",
  "billing_address2" : "aeiou",
  "email" : "aeiou",
  "vendor_name" : "aeiou",
  "billing_full_name" : "aeiou",
  "sort" : 4,
  "shipping_full_name" : "aeiou",
  "fed_tax" : 2.6753928290296702,
  "payment_method_id" : 0,
  "phone" : "aeiou",
  "external_ref" : "aeiou",
  "shipping_address2" : "aeiou",
  "subtotal" : 9.696630966061056,
  "shipping_address1" : "aeiou",
  "vendor_id" : 0,
  "shipping_state_name" : "aeiou",
  "billing_city_name" : "aeiou",
  "phone_number" : "aeiou",
  "created_date" : 9,
  "shipping_country_name" : "aeiou",
  "updated_date" : 8,
  "items" : [ {
    "type_hint" : "aeiou",
    "total_price" : 3.3772179231544843,
    "affiliate_id" : 2,
    "item_id" : 0,
    "system_price" : 6.497100721378468,
    "item_name" : "aeiou",
    "original_unit_price" : 8.728857290850359,
    "unit_price" : 0.8683608123860886,
    "qty" : 6,
    "invoice_id" : 6,
    "current_fulfillment_status" : "aeiou",
    "id" : 1,
    "sale_name" : "aeiou",
    "bundle_sku" : "aeiou",
    "original_total_price" : 4.40441080753682,
    "sku" : "aeiou",
    "sku_description" : "aeiou"
  } ],
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 9,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "shipping_postal_code" : "aeiou"
}}]
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter reactivateSubscriptionRequest: (body) The reactivate subscription request object inventory (optional)

     - returns: RequestBuilder<InvoiceResource> 
     */
    open class func reactivateUserSubscriptionWithRequestBuilder(userId: Int32, inventoryId: Int32, reactivateSubscriptionRequest: ReactivateSubscriptionRequest? = nil) -> RequestBuilder<InvoiceResource> {
        var path = "/users/{userId}/subscriptions/{inventoryId}/reactivate"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{inventory_id}", with: "\(inventoryId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = reactivateSubscriptionRequest?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<InvoiceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set a new date to bill a subscription on
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter billDate: (body) The new bill date. Unix timestamp in seconds 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setSubscriptionBillDate(userId: Int32, inventoryId: Int32, billDate: Int64, completion: @escaping ((_ error: Error?) -> Void)) {
        setSubscriptionBillDateWithRequestBuilder(userId: userId, inventoryId: inventoryId, billDate: billDate).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set a new date to bill a subscription on
     - PUT /users/{userId}/subscriptions/{inventoryId}/bill-date
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter billDate: (body) The new bill date. Unix timestamp in seconds 

     - returns: RequestBuilder<Void> 
     */
    open class func setSubscriptionBillDateWithRequestBuilder(userId: Int32, inventoryId: Int32, billDate: Int64) -> RequestBuilder<Void> {
        var path = "/users/{userId}/subscriptions/{inventoryId}/bill-date"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{inventory_id}", with: "\(inventoryId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = billDate.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set the payment method to use for a subscription
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter paymentMethodId: (body) The id of the payment method (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setSubscriptionPaymentMethod(userId: Int32, inventoryId: Int32, paymentMethodId: Int32? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        setSubscriptionPaymentMethodWithRequestBuilder(userId: userId, inventoryId: inventoryId, paymentMethodId: paymentMethodId).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set the payment method to use for a subscription
     - PUT /users/{userId}/subscriptions/{inventoryId}/payment-method
     - May send null to use floating default
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter paymentMethodId: (body) The id of the payment method (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func setSubscriptionPaymentMethodWithRequestBuilder(userId: Int32, inventoryId: Int32, paymentMethodId: Int32? = nil) -> RequestBuilder<Void> {
        var path = "/users/{userId}/subscriptions/{inventoryId}/payment-method"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{inventory_id}", with: "\(inventoryId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = paymentMethodId?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set the status of a subscription
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter status: (body) The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: (&#39;current&#39;, &#39;canceled&#39;, &#39;stopped&#39;, &#39;payment_failed&#39;, &#39;suspended&#39;) 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setSubscriptionStatus(userId: Int32, inventoryId: Int32, status: String, completion: @escaping ((_ error: Error?) -> Void)) {
        setSubscriptionStatusWithRequestBuilder(userId: userId, inventoryId: inventoryId, status: status).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set the status of a subscription
     - PUT /users/{userId}/subscriptions/{inventoryId}/status
     - The body is a json string (put in quotes) that should match a desired invoice status type. Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter status: (body) The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: (&#39;current&#39;, &#39;canceled&#39;, &#39;stopped&#39;, &#39;payment_failed&#39;, &#39;suspended&#39;) 

     - returns: RequestBuilder<Void> 
     */
    open class func setSubscriptionStatusWithRequestBuilder(userId: Int32, inventoryId: Int32, status: String) -> RequestBuilder<Void> {
        var path = "/users/{userId}/subscriptions/{inventoryId}/status"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{inventory_id}", with: "\(inventoryId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = status.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set a new subscription plan for a user
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter planId: (body) The id of the new plan. Must be from the same subscription (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setUserSubscriptionPlan(userId: Int32, inventoryId: Int32, planId: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        setUserSubscriptionPlanWithRequestBuilder(userId: userId, inventoryId: inventoryId, planId: planId).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set a new subscription plan for a user
     - PUT /users/{userId}/subscriptions/{inventoryId}/plan
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter planId: (body) The id of the new plan. Must be from the same subscription (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func setUserSubscriptionPlanWithRequestBuilder(userId: Int32, inventoryId: Int32, planId: String? = nil) -> RequestBuilder<Void> {
        var path = "/users/{userId}/subscriptions/{inventoryId}/plan"
        path = path.replacingOccurrences(of: "{user_id}", with: "\(userId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{inventory_id}", with: "\(inventoryId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = planId?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
