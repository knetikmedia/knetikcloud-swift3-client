//
// InvoicesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class InvoicesAPI: APIBase {
    /**
     Create an invoice
     
     - parameter req: (body) Invoice to be created (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createInvoice(req: InvoiceCreateRequest? = nil, completion: @escaping ((_ data: [InvoiceResource]?,_ error: Error?) -> Void)) {
        createInvoiceWithRequestBuilder(req: req).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create an invoice
     - POST /invoices
     - Create an invoice(s) by providing a cart GUID. Note that there may be multiple invoices created, one per vendor.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ {
  "shipping_city_name" : "aeiou",
  "order_notes" : "aeiou",
  "parent_invoice_id" : 6,
  "discount" : 4.687136887401016,
  "state_tax" : 5.1709920100897255,
  "cart_id" : "aeiou",
  "name_prefix" : "aeiou",
  "billing_postal_code" : "aeiou",
  "shipping" : 9.07933112116814,
  "billing_state_name" : "aeiou",
  "billing_country_name" : "aeiou",
  "currency" : "aeiou",
  "current_fulfillment_status" : "aeiou",
  "grand_total" : 3.404083445835223,
  "id" : 3,
  "current_payment_status" : "aeiou",
  "billing_address1" : "aeiou",
  "invoice_number" : "aeiou",
  "billing_address2" : "aeiou",
  "email" : "aeiou",
  "vendor_name" : "aeiou",
  "billing_full_name" : "aeiou",
  "sort" : 0,
  "shipping_full_name" : "aeiou",
  "fed_tax" : 6.345644018370567,
  "payment_method_id" : 3,
  "phone" : "aeiou",
  "external_ref" : "aeiou",
  "shipping_address2" : "aeiou",
  "subtotal" : 8.617341615173187,
  "shipping_address1" : "aeiou",
  "vendor_id" : 5,
  "shipping_state_name" : "aeiou",
  "billing_city_name" : "aeiou",
  "phone_number" : "aeiou",
  "created_date" : 0,
  "shipping_country_name" : "aeiou",
  "updated_date" : 2,
  "items" : [ {
    "type_hint" : "aeiou",
    "total_price" : 0.32782966282856707,
    "affiliate_id" : 9,
    "item_id" : 5,
    "system_price" : 4.0873349994453765,
    "item_name" : "aeiou",
    "original_unit_price" : 3.0329586016045793,
    "unit_price" : 8.376219400227054,
    "qty" : 0,
    "invoice_id" : 1,
    "current_fulfillment_status" : "aeiou",
    "id" : 1,
    "sale_name" : "aeiou",
    "bundle_sku" : "aeiou",
    "original_total_price" : 2.847009285579165,
    "sku" : "aeiou",
    "sku_description" : "aeiou"
  } ],
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 7,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "shipping_postal_code" : "aeiou"
} ]}]
     
     - parameter req: (body) Invoice to be created (optional)

     - returns: RequestBuilder<[InvoiceResource]> 
     */
    open class func createInvoiceWithRequestBuilder(req: InvoiceCreateRequest? = nil) -> RequestBuilder<[InvoiceResource]> {
        let path = "/invoices"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = req?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[InvoiceResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Lists available fulfillment statuses
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFulFillmentStatuses(completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        getFulFillmentStatusesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Lists available fulfillment statuses
     - GET /invoices/fulfillment-statuses
     - examples: [{contentType=application/json, example=[ "aeiou" ]}]

     - returns: RequestBuilder<[String]> 
     */
    open class func getFulFillmentStatusesWithRequestBuilder() -> RequestBuilder<[String]> {
        let path = "/invoices/fulfillment-statuses"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Retrieve an invoice
     
     - parameter id: (path) The id of the invoice 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInvoice(id: Int32, completion: @escaping ((_ data: InvoiceResource?,_ error: Error?) -> Void)) {
        getInvoiceWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve an invoice
     - GET /invoices/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "shipping_city_name" : "aeiou",
  "order_notes" : "aeiou",
  "parent_invoice_id" : 6,
  "discount" : 8.55867462546919,
  "state_tax" : 1.9992713348255176,
  "cart_id" : "aeiou",
  "name_prefix" : "aeiou",
  "billing_postal_code" : "aeiou",
  "shipping" : 0.562615041345077,
  "billing_state_name" : "aeiou",
  "billing_country_name" : "aeiou",
  "currency" : "aeiou",
  "current_fulfillment_status" : "aeiou",
  "grand_total" : 7.174044040715835,
  "id" : 4,
  "current_payment_status" : "aeiou",
  "billing_address1" : "aeiou",
  "invoice_number" : "aeiou",
  "billing_address2" : "aeiou",
  "email" : "aeiou",
  "vendor_name" : "aeiou",
  "billing_full_name" : "aeiou",
  "sort" : 3,
  "shipping_full_name" : "aeiou",
  "fed_tax" : 4.759959478640306,
  "payment_method_id" : 1,
  "phone" : "aeiou",
  "external_ref" : "aeiou",
  "shipping_address2" : "aeiou",
  "subtotal" : 1.9837212170731622,
  "shipping_address1" : "aeiou",
  "vendor_id" : 9,
  "shipping_state_name" : "aeiou",
  "billing_city_name" : "aeiou",
  "phone_number" : "aeiou",
  "created_date" : 4,
  "shipping_country_name" : "aeiou",
  "updated_date" : 6,
  "items" : [ {
    "type_hint" : "aeiou",
    "total_price" : 3.5419312512553827,
    "affiliate_id" : 4,
    "item_id" : 2,
    "system_price" : 1.1160154595170113,
    "item_name" : "aeiou",
    "original_unit_price" : 2.574089597678907,
    "unit_price" : 6.836815955599036,
    "qty" : 8,
    "invoice_id" : 8,
    "current_fulfillment_status" : "aeiou",
    "id" : 2,
    "sale_name" : "aeiou",
    "bundle_sku" : "aeiou",
    "original_total_price" : 5.060738569054929,
    "sku" : "aeiou",
    "sku_description" : "aeiou"
  } ],
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 5,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "shipping_postal_code" : "aeiou"
}}]
     
     - parameter id: (path) The id of the invoice 

     - returns: RequestBuilder<InvoiceResource> 
     */
    open class func getInvoiceWithRequestBuilder(id: Int32) -> RequestBuilder<InvoiceResource> {
        var path = "/invoices/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<InvoiceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List invoice logs
     
     - parameter id: (path) The id of the invoice 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInvoiceLogs(id: Int32, size: Int32? = nil, page: Int32? = nil, completion: @escaping ((_ data: PageResourceInvoiceLogEntry?,_ error: Error?) -> Void)) {
        getInvoiceLogsWithRequestBuilder(id: id, size: size, page: page).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List invoice logs
     - GET /invoices/{id}/logs
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 3,
  "last" : true,
  "size" : 6,
  "total_elements" : 2,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 0,
  "number_of_elements" : 0,
  "content" : [ {
    "date" : 1,
    "invoice_id" : 7,
    "message" : "aeiou",
    "type" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter id: (path) The id of the invoice 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceInvoiceLogEntry> 
     */
    open class func getInvoiceLogsWithRequestBuilder(id: Int32, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceInvoiceLogEntry> {
        var path = "/invoices/{id}/logs"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<PageResourceInvoiceLogEntry>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Retrieve invoices
     
     - parameter filterUser: (query) The id of a user to get invoices for. Automtically added if not being called with admin permissions. (optional)
     - parameter filterEmail: (query) Filters invoices by customer&#39;s email. Admins only. (optional)
     - parameter filterFulfillmentStatus: (query) Filters invoices by fulfillment status type. Can be a comma separated list of statuses (optional)
     - parameter filterPaymentStatus: (query) Filters invoices by payment status type. Can be a comma separated list of statuses (optional)
     - parameter filterItemName: (query) Filters invoices by item name containing the given string (optional)
     - parameter filterExternalRef: (query) Filters invoices by external reference. (optional)
     - parameter filterCreatedDate: (query) Filters invoices by creation date. Multiple values possible for range search. Format: filter_created_date&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_created_date&#x3D;GT,1452154258,LT,1554254874 (optional)
     - parameter filterVendorIds: (query) Filters invoices for ones from one of the vendors whose id is in the given comma separated list (optional)
     - parameter filterCurrency: (query) Filters invoices by currency. ISO3 currency code (optional)
     - parameter filterShippingStateName: (query) Filters invoices by shipping address: Exact match state name (optional)
     - parameter filterShippingCountryName: (query) Filters invoices by shipping address: Exact match country name (optional)
     - parameter filterShipping: (query) Filters invoices by shipping price (optional)
     - parameter filterVendorName: (query) Filters invoices by vendor name starting with given string (optional)
     - parameter filterSku: (query) Filters invoices by item sku (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getInvoices(filterUser: Int32? = nil, filterEmail: String? = nil, filterFulfillmentStatus: String? = nil, filterPaymentStatus: String? = nil, filterItemName: String? = nil, filterExternalRef: String? = nil, filterCreatedDate: String? = nil, filterVendorIds: String? = nil, filterCurrency: String? = nil, filterShippingStateName: String? = nil, filterShippingCountryName: String? = nil, filterShipping: Float? = nil, filterVendorName: String? = nil, filterSku: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceInvoiceResource?,_ error: Error?) -> Void)) {
        getInvoicesWithRequestBuilder(filterUser: filterUser, filterEmail: filterEmail, filterFulfillmentStatus: filterFulfillmentStatus, filterPaymentStatus: filterPaymentStatus, filterItemName: filterItemName, filterExternalRef: filterExternalRef, filterCreatedDate: filterCreatedDate, filterVendorIds: filterVendorIds, filterCurrency: filterCurrency, filterShippingStateName: filterShippingStateName, filterShippingCountryName: filterShippingCountryName, filterShipping: filterShipping, filterVendorName: filterVendorName, filterSku: filterSku, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Retrieve invoices
     - GET /invoices
     - Without INVOICES_ADMIN permission the results are automatically filtered for only the logged in user's invoices. It is recomended however that filter_user be added to avoid issues for admin users accidentally getting additional invoices.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 7,
  "last" : true,
  "size" : 6,
  "total_elements" : 4,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 4,
  "number_of_elements" : 1,
  "content" : [ {
    "shipping_city_name" : "aeiou",
    "order_notes" : "aeiou",
    "parent_invoice_id" : 7,
    "discount" : 9.264947538414429,
    "state_tax" : 3.1296858217614387,
    "cart_id" : "aeiou",
    "name_prefix" : "aeiou",
    "billing_postal_code" : "aeiou",
    "shipping" : 6.599651067342645,
    "billing_state_name" : "aeiou",
    "billing_country_name" : "aeiou",
    "currency" : "aeiou",
    "current_fulfillment_status" : "aeiou",
    "grand_total" : 0.433141737477134,
    "id" : 9,
    "current_payment_status" : "aeiou",
    "billing_address1" : "aeiou",
    "invoice_number" : "aeiou",
    "billing_address2" : "aeiou",
    "email" : "aeiou",
    "vendor_name" : "aeiou",
    "billing_full_name" : "aeiou",
    "sort" : 4,
    "shipping_full_name" : "aeiou",
    "fed_tax" : 7.120407563071551,
    "payment_method_id" : 4,
    "phone" : "aeiou",
    "external_ref" : "aeiou",
    "shipping_address2" : "aeiou",
    "subtotal" : 5.697050066211414,
    "shipping_address1" : "aeiou",
    "vendor_id" : 3,
    "shipping_state_name" : "aeiou",
    "billing_city_name" : "aeiou",
    "phone_number" : "aeiou",
    "created_date" : 1,
    "shipping_country_name" : "aeiou",
    "updated_date" : 5,
    "items" : [ {
      "type_hint" : "aeiou",
      "total_price" : 7.373668839064038,
      "affiliate_id" : 7,
      "item_id" : 3,
      "system_price" : 5.015492548267214,
      "item_name" : "aeiou",
      "original_unit_price" : 4.478741930718323,
      "unit_price" : 9.006176483874524,
      "qty" : 4,
      "invoice_id" : 7,
      "current_fulfillment_status" : "aeiou",
      "id" : 0,
      "sale_name" : "aeiou",
      "bundle_sku" : "aeiou",
      "original_total_price" : 8.56707022819038,
      "sku" : "aeiou",
      "sku_description" : "aeiou"
    } ],
    "user" : {
      "avatar_url" : "aeiou",
      "id" : 4,
      "display_name" : "aeiou",
      "username" : "aeiou"
    },
    "shipping_postal_code" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterUser: (query) The id of a user to get invoices for. Automtically added if not being called with admin permissions. (optional)
     - parameter filterEmail: (query) Filters invoices by customer&#39;s email. Admins only. (optional)
     - parameter filterFulfillmentStatus: (query) Filters invoices by fulfillment status type. Can be a comma separated list of statuses (optional)
     - parameter filterPaymentStatus: (query) Filters invoices by payment status type. Can be a comma separated list of statuses (optional)
     - parameter filterItemName: (query) Filters invoices by item name containing the given string (optional)
     - parameter filterExternalRef: (query) Filters invoices by external reference. (optional)
     - parameter filterCreatedDate: (query) Filters invoices by creation date. Multiple values possible for range search. Format: filter_created_date&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_created_date&#x3D;GT,1452154258,LT,1554254874 (optional)
     - parameter filterVendorIds: (query) Filters invoices for ones from one of the vendors whose id is in the given comma separated list (optional)
     - parameter filterCurrency: (query) Filters invoices by currency. ISO3 currency code (optional)
     - parameter filterShippingStateName: (query) Filters invoices by shipping address: Exact match state name (optional)
     - parameter filterShippingCountryName: (query) Filters invoices by shipping address: Exact match country name (optional)
     - parameter filterShipping: (query) Filters invoices by shipping price (optional)
     - parameter filterVendorName: (query) Filters invoices by vendor name starting with given string (optional)
     - parameter filterSku: (query) Filters invoices by item sku (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)

     - returns: RequestBuilder<PageResourceInvoiceResource> 
     */
    open class func getInvoicesWithRequestBuilder(filterUser: Int32? = nil, filterEmail: String? = nil, filterFulfillmentStatus: String? = nil, filterPaymentStatus: String? = nil, filterItemName: String? = nil, filterExternalRef: String? = nil, filterCreatedDate: String? = nil, filterVendorIds: String? = nil, filterCurrency: String? = nil, filterShippingStateName: String? = nil, filterShippingCountryName: String? = nil, filterShipping: Float? = nil, filterVendorName: String? = nil, filterSku: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceInvoiceResource> {
        let path = "/invoices"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_user": filterUser?.encodeToJSON(), 
            "filter_email": filterEmail, 
            "filter_fulfillment_status": filterFulfillmentStatus, 
            "filter_payment_status": filterPaymentStatus, 
            "filter_item_name": filterItemName, 
            "filter_external_ref": filterExternalRef, 
            "filter_created_date": filterCreatedDate, 
            "filter_vendor_ids": filterVendorIds, 
            "filter_currency": filterCurrency, 
            "filter_shipping_state_name": filterShippingStateName, 
            "filter_shipping_country_name": filterShippingCountryName, 
            "filter_shipping": filterShipping, 
            "filter_vendor_name": filterVendorName, 
            "filter_sku": filterSku, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceInvoiceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Lists available payment statuses
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPaymentStatuses(completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        getPaymentStatusesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Lists available payment statuses
     - GET /invoices/payment-statuses
     - examples: [{contentType=application/json, example=[ "aeiou" ]}]

     - returns: RequestBuilder<[String]> 
     */
    open class func getPaymentStatusesWithRequestBuilder() -> RequestBuilder<[String]> {
        let path = "/invoices/payment-statuses"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Trigger payment of an invoice
     
     - parameter id: (path) The id of the invoice 
     - parameter request: (body) Payment info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func payInvoice(id: Int32, request: PayBySavedMethodRequest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        payInvoiceWithRequestBuilder(id: id, request: request).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Trigger payment of an invoice
     - POST /invoices/{id}/payments
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the invoice 
     - parameter request: (body) Payment info (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func payInvoiceWithRequestBuilder(id: Int32, request: PayBySavedMethodRequest? = nil) -> RequestBuilder<Void> {
        var path = "/invoices/{id}/payments"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set the external reference of an invoice
     
     - parameter id: (path) The id of the invoice 
     - parameter externalRef: (body) External reference info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setExternalRef(id: Int32, externalRef: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        setExternalRefWithRequestBuilder(id: id, externalRef: externalRef).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set the external reference of an invoice
     - PUT /invoices/{id}/external-ref
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the invoice 
     - parameter externalRef: (body) External reference info (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func setExternalRefWithRequestBuilder(id: Int32, externalRef: String? = nil) -> RequestBuilder<Void> {
        var path = "/invoices/{id}/external-ref"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = externalRef?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set the fulfillment status of an invoice item
     
     - parameter id: (path) The id of the invoice 
     - parameter sku: (path) The sku of an item in the invoice 
     - parameter status: (body) The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  &#39;unfulfilled&#39;, &#39;fulfilled&#39;, &#39;not fulfillable&#39;, &#39;failed&#39;, &#39;processing&#39;, &#39;failed_permanent&#39;, &#39;delayed&#39; 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setInvoiceItemFulfillmentStatus(id: Int32, sku: String, status: String, completion: @escaping ((_ error: Error?) -> Void)) {
        setInvoiceItemFulfillmentStatusWithRequestBuilder(id: id, sku: sku, status: status).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set the fulfillment status of an invoice item
     - PUT /invoices/{id}/items/{sku}/fulfillment-status
     - This allows external fulfillment systems to report success or failure. Fulfillment status changes are restricted by a specific flow determining which status can lead to which.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the invoice 
     - parameter sku: (path) The sku of an item in the invoice 
     - parameter status: (body) The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  &#39;unfulfilled&#39;, &#39;fulfilled&#39;, &#39;not fulfillable&#39;, &#39;failed&#39;, &#39;processing&#39;, &#39;failed_permanent&#39;, &#39;delayed&#39; 

     - returns: RequestBuilder<Void> 
     */
    open class func setInvoiceItemFulfillmentStatusWithRequestBuilder(id: Int32, sku: String, status: String) -> RequestBuilder<Void> {
        var path = "/invoices/{id}/items/{sku}/fulfillment-status"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{sku}", with: "\(sku)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = status.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set the order notes of an invoice
     
     - parameter id: (path) The id of the invoice 
     - parameter orderNotes: (body) Payment status info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setOrderNotes(id: Int32, orderNotes: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        setOrderNotesWithRequestBuilder(id: id, orderNotes: orderNotes).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set the order notes of an invoice
     - PUT /invoices/{id}/order-notes
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the invoice 
     - parameter orderNotes: (body) Payment status info (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func setOrderNotesWithRequestBuilder(id: Int32, orderNotes: String? = nil) -> RequestBuilder<Void> {
        var path = "/invoices/{id}/order-notes"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = orderNotes?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set the payment status of an invoice
     
     - parameter id: (path) The id of the invoice 
     - parameter request: (body) Payment status info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setPaymentStatus(id: Int32, request: InvoicePaymentStatusRequest? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        setPaymentStatusWithRequestBuilder(id: id, request: request).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set the payment status of an invoice
     - PUT /invoices/{id}/payment-status
     - This may trigger fulfillment if setting the status to 'paid'. This is mainly intended to support external payment systems that cannot be incorporated into the payment method system. Payment status changes are restricted by a specific flow determining which status can lead to which.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the invoice 
     - parameter request: (body) Payment status info (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func setPaymentStatusWithRequestBuilder(id: Int32, request: InvoicePaymentStatusRequest? = nil) -> RequestBuilder<Void> {
        var path = "/invoices/{id}/payment-status"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Set or update billing info
     
     - parameter id: (path) The id of the invoice 
     - parameter billingInfoRequest: (body) Address info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateBillingInfo(id: Int32, billingInfoRequest: AddressResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateBillingInfoWithRequestBuilder(id: id, billingInfoRequest: billingInfoRequest).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Set or update billing info
     - PUT /invoices/{id}/billing-address
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the invoice 
     - parameter billingInfoRequest: (body) Address info (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateBillingInfoWithRequestBuilder(id: Int32, billingInfoRequest: AddressResource? = nil) -> RequestBuilder<Void> {
        var path = "/invoices/{id}/billing-address"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = billingInfoRequest?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
