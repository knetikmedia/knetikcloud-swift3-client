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
    open class func createDevice(device: DeviceResource, completion: @escaping ((_ data: DeviceResource?,_ error: Error?) -> Void)) {
        createDeviceWithRequestBuilder(device: device).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a device
     - POST /devices
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "data" : {
    "key" : "aeiou"
  },
  "os" : "aeiou",
  "description" : "aeiou",
  "device_type" : "aeiou",
  "authorization" : "aeiou",
  "condition" : "New",
  "serial" : "aeiou",
  "mac_address" : "aeiou",
  "name" : "aeiou",
  "location" : "aeiou",
  "model" : "aeiou",
  "created_date" : 4,
  "id" : 0,
  "updated_date" : 9,
  "make" : "aeiou",
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 2,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "status" : "Active"
}}]
     
     - parameter device: (body) device 

     - returns: RequestBuilder<DeviceResource> 
     */
    open class func createDeviceWithRequestBuilder(device: DeviceResource) -> RequestBuilder<DeviceResource> {
        let path = "/devices"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = device.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DeviceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a device
     
     - parameter id: (path) id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDevice(id: Int32, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteDeviceWithRequestBuilder(id: id).execute { (response, error) -> Void in
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
    open class func deleteDeviceWithRequestBuilder(id: Int32) -> RequestBuilder<Void> {
        var path = "/devices/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single device
     
     - parameter id: (path) id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDevice(id: Int32, completion: @escaping ((_ data: DeviceResource?,_ error: Error?) -> Void)) {
        getDeviceWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single device
     - GET /devices/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "data" : {
    "key" : "aeiou"
  },
  "os" : "aeiou",
  "description" : "aeiou",
  "device_type" : "aeiou",
  "authorization" : "aeiou",
  "condition" : "New",
  "serial" : "aeiou",
  "mac_address" : "aeiou",
  "name" : "aeiou",
  "location" : "aeiou",
  "model" : "aeiou",
  "created_date" : 3,
  "id" : 6,
  "updated_date" : 1,
  "make" : "aeiou",
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 4,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "status" : "Active"
}}]
     
     - parameter id: (path) id 

     - returns: RequestBuilder<DeviceResource> 
     */
    open class func getDeviceWithRequestBuilder(id: Int32) -> RequestBuilder<DeviceResource> {
        var path = "/devices/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DeviceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search devices
     
     - parameter filterMake: (query) Filter for devices with specified make (optional)
     - parameter filterModel: (query) Filter for devices with specified model (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDevices(filterMake: String? = nil, filterModel: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceDeviceResource?,_ error: Error?) -> Void)) {
        getDevicesWithRequestBuilder(filterMake: filterMake, filterModel: filterModel, size: size, page: page, order: order).execute { (response, error) -> Void in
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
     - examples: [{contentType=application/json, example={
  "number" : 8,
  "last" : true,
  "size" : 9,
  "total_elements" : 5,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 3,
  "number_of_elements" : 4,
  "content" : [ {
    "data" : {
      "key" : "aeiou"
    },
    "os" : "aeiou",
    "description" : "aeiou",
    "device_type" : "aeiou",
    "authorization" : "aeiou",
    "condition" : "New",
    "serial" : "aeiou",
    "mac_address" : "aeiou",
    "name" : "aeiou",
    "location" : "aeiou",
    "model" : "aeiou",
    "created_date" : 4,
    "id" : 2,
    "updated_date" : 6,
    "make" : "aeiou",
    "user" : {
      "avatar_url" : "aeiou",
      "id" : 9,
      "display_name" : "aeiou",
      "username" : "aeiou"
    },
    "status" : "Active"
  } ],
  "first" : true
}}]
     
     - parameter filterMake: (query) Filter for devices with specified make (optional)
     - parameter filterModel: (query) Filter for devices with specified model (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceDeviceResource> 
     */
    open class func getDevicesWithRequestBuilder(filterMake: String? = nil, filterModel: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceDeviceResource> {
        let path = "/devices"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_make": filterMake, 
            "filter_model": filterModel, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceDeviceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a device
     
     - parameter device: (body) device 
     - parameter id: (path) id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateDevice(device: DeviceResource, id: Int32, completion: @escaping ((_ data: DeviceResource?,_ error: Error?) -> Void)) {
        updateDeviceWithRequestBuilder(device: device, id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update a device
     - PUT /devices/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "data" : {
    "key" : "aeiou"
  },
  "os" : "aeiou",
  "description" : "aeiou",
  "device_type" : "aeiou",
  "authorization" : "aeiou",
  "condition" : "New",
  "serial" : "aeiou",
  "mac_address" : "aeiou",
  "name" : "aeiou",
  "location" : "aeiou",
  "model" : "aeiou",
  "created_date" : 0,
  "id" : 9,
  "updated_date" : 8,
  "make" : "aeiou",
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 1,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "status" : "Active"
}}]
     
     - parameter device: (body) device 
     - parameter id: (path) id 

     - returns: RequestBuilder<DeviceResource> 
     */
    open class func updateDeviceWithRequestBuilder(device: DeviceResource, id: Int32) -> RequestBuilder<DeviceResource> {
        var path = "/devices/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = device.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DeviceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
