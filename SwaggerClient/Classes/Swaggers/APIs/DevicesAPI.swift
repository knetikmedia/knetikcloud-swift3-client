//
// DevicesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class DevicesAPI: APIBase {
    /**
     Create a device
     
     - parameter device: (body) device 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createDeviceUsingPOST(device: DeviceResource, completion: @escaping ((_ data: DeviceResource?,_ error: Error?) -> Void)) {
        createDeviceUsingPOSTWithRequestBuilder(device: device).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a device
     - POST /devices
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter device: (body) device 

     - returns: RequestBuilder<DeviceResource> 
     */
    open class func createDeviceUsingPOSTWithRequestBuilder(device: DeviceResource) -> RequestBuilder<DeviceResource> {
        let path = "/devices"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = device.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<DeviceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a device
     
     - parameter id: (path) id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDeviceUsingDELETE(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteDeviceUsingDELETEWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete a device
     - DELETE /devices/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) id 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteDeviceUsingDELETEWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/devices/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single device
     
     - parameter id: (path) id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDeviceUsingGET(id: Int32, completion: @escaping ((_ data: DeviceResource?,_ error: Error?) -> Void)) {
        getDeviceUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single device
     - GET /devices/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter id: (path) id 

     - returns: RequestBuilder<DeviceResource> 
     */
    open class func getDeviceUsingGETWithRequestBuilder(id: Int32) -> RequestBuilder<DeviceResource> {
        var path = "/devices/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<DeviceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search devices
     
     - parameter filterMake: (query) Filter for devices with specified make (optional)
     - parameter filterModel: (query) Filter for devices with specified model (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDevicesUsingGET(filterMake: String? = nil, filterModel: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageDeviceResource?,_ error: Error?) -> Void)) {
        getDevicesUsingGETWithRequestBuilder(filterMake: filterMake, filterModel: filterModel, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search devices
     - GET /devices
     - Get a list of devices with optional filtering
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{output=none}]
     
     - parameter filterMake: (query) Filter for devices with specified make (optional)
     - parameter filterModel: (query) Filter for devices with specified model (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)

     - returns: RequestBuilder<PageDeviceResource> 
     */
    open class func getDevicesUsingGETWithRequestBuilder(filterMake: String? = nil, filterModel: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageDeviceResource> {
        let path = "/devices"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "filter_make": filterMake,
            "filter_model": filterModel,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageDeviceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update a device
     
     - parameter device: (body) device 
     - parameter id: (path) id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateDeviceUsingPUT(device: DeviceResource, id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        updateDeviceUsingPUTWithRequestBuilder(device: device, id: id).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Update a device
     - PUT /devices/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter device: (body) device 
     - parameter id: (path) id 

     - returns: RequestBuilder<Void> 
     */
    open class func updateDeviceUsingPUTWithRequestBuilder(device: DeviceResource, id: Int32) -> RequestBuilder<Void> {
        var path = "/devices/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = device.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
