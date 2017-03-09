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
  "grace_end" : 0,
  "bill_date" : 9,
  "item_id" : 9,
  "inventory_id" : 4,
  "recurring_price" : 7.406636823545202,
  "inventory_status" : "pending",
  "subscription_status" : 4,
  "credit" : 0.2424387933861949,
  "credit_log" : [ {
    "reason" : "aeiou",
    "amount" : 6.698636687054357,
    "inventory_id" : 7,
    "created_date" : 5,
    "id" : 7
  } ],
  "sku" : "aeiou",
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 7,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "payment_method" : {
    "payment_method_type" : {
      "name" : "aeiou",
      "id" : 6
    },
    "last4" : "aeiou",
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "verified" : true,
    "long_description" : "aeiou",
    "sort" : 0,
    "expiration_date" : 6,
    "token" : "aeiou",
    "expiration_year" : 8,
    "default" : true,
    "payment_type" : "card",
    "user_id" : 8,
    "expiration_month" : 0,
    "name" : "aeiou",
    "disabled" : false,
    "created_date" : 3,
    "id" : 2,
    "updated_date" : 4
  },
  "start_date" : 3
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
  "grace_end" : 7,
  "bill_date" : 8,
  "item_id" : 5,
  "inventory_id" : 1,
  "recurring_price" : 6.775436562665553,
  "inventory_status" : "pending",
  "subscription_status" : 4,
  "credit" : 7.567346019194,
  "credit_log" : [ {
    "reason" : "aeiou",
    "amount" : 5.576030547186219,
    "inventory_id" : 9,
    "created_date" : 4,
    "id" : 5
  } ],
  "sku" : "aeiou",
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 9,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "payment_method" : {
    "payment_method_type" : {
      "name" : "aeiou",
      "id" : 9
    },
    "last4" : "aeiou",
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "verified" : true,
    "long_description" : "aeiou",
    "sort" : 7,
    "expiration_date" : 2,
    "token" : "aeiou",
    "expiration_year" : 3,
    "default" : true,
    "payment_type" : "card",
    "user_id" : 2,
    "expiration_month" : 3,
    "name" : "aeiou",
    "disabled" : false,
    "created_date" : 7,
    "id" : 5,
    "updated_date" : 6
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
  "parent_invoice_id" : 5,
  "discount" : 5.367621854643964,
  "state_tax" : 7.450455104852799,
  "cart_id" : "aeiou",
  "name_prefix" : "aeiou",
  "billing_postal_code" : "aeiou",
  "shipping" : 4.298613228474154,
  "billing_state_name" : "aeiou",
  "billing_country_name" : "aeiou",
  "currency" : "aeiou",
  "current_fulfillment_status" : "aeiou",
  "grand_total" : 3.353891602680404,
  "id" : 5,
  "current_payment_status" : "aeiou",
  "billing_address1" : "aeiou",
  "invoice_number" : "aeiou",
  "billing_address2" : "aeiou",
  "email" : "aeiou",
  "vendor_name" : "aeiou",
  "billing_full_name" : "aeiou",
  "sort" : 6,
  "shipping_full_name" : "aeiou",
  "fed_tax" : 9.027199909582126,
  "payment_method_id" : 9,
  "phone" : "aeiou",
  "external_ref" : "aeiou",
  "shipping_address2" : "aeiou",
  "subtotal" : 2.437688637446013,
  "shipping_address1" : "aeiou",
  "vendor_id" : 8,
  "shipping_state_name" : "aeiou",
  "billing_city_name" : "aeiou",
  "phone_number" : "aeiou",
  "created_date" : 2,
  "shipping_country_name" : "aeiou",
  "updated_date" : 4,
  "items" : [ {
    "type_hint" : "aeiou",
    "total_price" : 8.999288784052196,
    "affiliate_id" : 4,
    "item_id" : 5,
    "system_price" : 0.6725472565513535,
    "item_name" : "aeiou",
    "original_unit_price" : 4.739613762549659,
    "unit_price" : 4.192107361609484,
    "qty" : 1,
    "invoice_id" : 7,
    "current_fulfillment_status" : "aeiou",
    "id" : 8,
    "sale_name" : "aeiou",
    "bundle_sku" : "aeiou",
    "original_total_price" : 2.5750352445393974,
    "sku" : "aeiou",
    "sku_description" : "aeiou"
  } ],
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 0,
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
