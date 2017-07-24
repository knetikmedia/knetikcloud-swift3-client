//
// TemplatesPropertiesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class TemplatesPropertiesAPI: APIBase {
    /**
     Get details for a template property type
     
     - parameter type: (path) type 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTemplatePropertyType(type: String, completion: @escaping ((_ data: PropertyFieldListResource?,_ error: Error?) -> Void)) {
        getTemplatePropertyTypeWithRequestBuilder(type: type).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get details for a template property type
     - GET /templates/properties/{type}
     - examples: [{contentType=application/json, example={
  "property_definition_fields" : [ {
    "inner_type" : "integer",
    "valid_values" : [ "aeiou" ],
    "name" : "aeiou",
    "description" : "aeiou",
    "type" : "integer",
    "inner_type_fields" : [ "" ],
    "required" : false
  } ],
  "property_type" : "aeiou",
  "property_fields" : [ "" ]
}}]
     
     - parameter type: (path) type 

     - returns: RequestBuilder<PropertyFieldListResource> 
     */
    open class func getTemplatePropertyTypeWithRequestBuilder(type: String) -> RequestBuilder<PropertyFieldListResource> {
        var path = "/templates/properties/{type}"
        path = path.replacingOccurrences(of: "{type}", with: "\(type)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PropertyFieldListResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List template property types
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTemplatePropertyTypes(completion: @escaping ((_ data: [PropertyFieldListResource]?,_ error: Error?) -> Void)) {
        getTemplatePropertyTypesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List template property types
     - GET /templates/properties
     - examples: [{contentType=application/json, example=[ {
  "property_definition_fields" : [ {
    "inner_type" : "integer",
    "valid_values" : [ "aeiou" ],
    "name" : "aeiou",
    "description" : "aeiou",
    "type" : "integer",
    "inner_type_fields" : [ "" ],
    "required" : false
  } ],
  "property_type" : "aeiou",
  "property_fields" : [ "" ]
} ]}]

     - returns: RequestBuilder<[PropertyFieldListResource]> 
     */
    open class func getTemplatePropertyTypesWithRequestBuilder() -> RequestBuilder<[PropertyFieldListResource]> {
        let path = "/templates/properties"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[PropertyFieldListResource]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
