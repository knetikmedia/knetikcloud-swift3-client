//
// CustomerserviceAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class CustomerserviceAPI: APIBase {
    /**
     Create a customer
     
     - parameter customer: (body) customer 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCustomerUsingPOST(customer: CustomerConfig, completion: @escaping ((_ error: Error?) -> Void)) {
        createCustomerUsingPOSTWithRequestBuilder(customer: customer).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Create a customer
     - POST /customers
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter customer: (body) customer 

     - returns: RequestBuilder<Void> 
     */
    open class func createCustomerUsingPOSTWithRequestBuilder(customer: CustomerConfig) -> RequestBuilder<Void> {
        let path = "/customers"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = customer.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search customers
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCustomersUsingGET(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: [CustomerResource]?,_ error: Error?) -> Void)) {
        getCustomersUsingGETWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search customers
     - GET /customers
     - Get a list of customers with optional filtering
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example=[ {
  "database" : {
    "mongo" : {
      "password" : "aeiou",
      "servers" : "aeiou",
      "db_name" : "aeiou",
      "options" : "aeiou",
      "username" : "aeiou"
    },
    "sql" : {
      "hostname" : "aeiou",
      "password" : "aeiou",
      "db_name" : "aeiou",
      "port" : 123,
      "connection_pool_size" : 123,
      "connection_string" : "aeiou",
      "username" : "aeiou"
    }
  },
  "aliases" : "aeiou",
  "name" : "aeiou"
} ]}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)

     - returns: RequestBuilder<[CustomerResource]> 
     */
    open class func getCustomersUsingGETWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<[CustomerResource]> {
        let path = "/customers"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[CustomerResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
