//
// StoreBundlesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class StoreBundlesAPI: APIBase {
    /**
     Create a bundle item
     
     - parameter bundleItem: (body) The bundle item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createBundleItemUsingPOST(bundleItem: BundleItem? = nil, completion: @escaping ((_ data: BundleItem?,_ error: Error?) -> Void)) {
        createBundleItemUsingPOSTWithRequestBuilder(bundleItem: bundleItem).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a bundle item
     - POST /store/bundles
     - The SKU for the bundle itself must be unique and there can only be one SKU.  Extra notes for price_override:  The price of all the items (multiplied by the quantity) must equal the price of the bundle.  With individual prices set, items will be processed individually and can be refunded as such.  However, if all prices are set to null, the price of the bundle will be used and will be treated as one item.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter bundleItem: (body) The bundle item object (optional)

     - returns: RequestBuilder<BundleItem> 
     */
    open class func createBundleItemUsingPOSTWithRequestBuilder(bundleItem: BundleItem? = nil) -> RequestBuilder<BundleItem> {
        let path = "/store/bundles"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = bundleItem?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<BundleItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a bundle template
     
     - parameter bundleTemplateResource: (body) The new bundle template (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createBundleTemplateUsingPOST(bundleTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        createBundleTemplateUsingPOSTWithRequestBuilder(bundleTemplateResource: bundleTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a bundle template
     - POST /store/bundles/templates
     - Bundle Templates define a type of bundle and the properties they have.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter bundleTemplateResource: (body) The new bundle template (optional)

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func createBundleTemplateUsingPOSTWithRequestBuilder(bundleTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<ItemTemplateResource> {
        let path = "/store/bundles/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = bundleTemplateResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a bundle template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteBundleTemplateUsingDELETE(id: String, cascade: String? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteBundleTemplateUsingDELETEWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a bundle template
     - DELETE /store/bundles/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func deleteBundleTemplateUsingDELETEWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/store/bundles/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "cascade": cascade
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Delete a bundle item
     
     - parameter id: (path) The id of the bundle 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteStoreItemUsingDELETE(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteStoreItemUsingDELETEWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a bundle item
     - DELETE /store/bundles/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the bundle 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteStoreItemUsingDELETEWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/store/bundles/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single bundle template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBundleTemplateUsingGET(id: String, completion: @escaping ((_ data: ItemTemplateResource?,_ error: Error?) -> Void)) {
        getBundleTemplateUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single bundle template
     - GET /store/bundles/templates/{id}
     - Bundle Templates define a type of bundle and the properties they have.
     - examples: [{output=none}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<ItemTemplateResource> 
     */
    open class func getBundleTemplateUsingGETWithRequestBuilder(id: String) -> RequestBuilder<ItemTemplateResource> {
        var path = "/store/bundles/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search bundle templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBundleTemplatesUsingGET(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageItemTemplateResource?,_ error: Error?) -> Void)) {
        getBundleTemplatesUsingGETWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search bundle templates
     - GET /store/bundles/templates
     - examples: [{output=none}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)

     - returns: RequestBuilder<PageItemTemplateResource> 
     */
    open class func getBundleTemplatesUsingGETWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageItemTemplateResource> {
        let path = "/store/bundles/templates"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageItemTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a single bundle item
     
     - parameter id: (path) The id of the bundle 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStoreItemUsingGET(id: Int32, completion: @escaping ((_ data: BundleItem?,_ error: Error?) -> Void)) {
        getStoreItemUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single bundle item
     - GET /store/bundles/{id}
     - examples: [{output=none}]
     
     - parameter id: (path) The id of the bundle 

     - returns: RequestBuilder<BundleItem> 
     */
    open class func getStoreItemUsingGETWithRequestBuilder(id: Int32) -> RequestBuilder<BundleItem> {
        var path = "/store/bundles/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<BundleItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a bundle item
     
     - parameter id: (path) The id of the bundle 
     - parameter bundleItem: (body) The bundle item object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateBundleItemUsingPUT(id: Int32, bundleItem: BundleItem? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateBundleItemUsingPUTWithRequestBuilder(id: id, bundleItem: bundleItem).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a bundle item
     - PUT /store/bundles/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the bundle 
     - parameter bundleItem: (body) The bundle item object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateBundleItemUsingPUTWithRequestBuilder(id: Int32, bundleItem: BundleItem? = nil) -> RequestBuilder<Void> {
        var path = "/store/bundles/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = bundleItem?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a bundle template
     
     - parameter id: (path) The id of the template 
     - parameter bundleTemplateResource: (body) The bundle template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateBundleTemplateUsingPUT(id: String, bundleTemplateResource: ItemTemplateResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateBundleTemplateUsingPUTWithRequestBuilder(id: id, bundleTemplateResource: bundleTemplateResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a bundle template
     - PUT /store/bundles/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter bundleTemplateResource: (body) The bundle template resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateBundleTemplateUsingPUTWithRequestBuilder(id: String, bundleTemplateResource: ItemTemplateResource? = nil) -> RequestBuilder<Void> {
        var path = "/store/bundles/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = bundleTemplateResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
