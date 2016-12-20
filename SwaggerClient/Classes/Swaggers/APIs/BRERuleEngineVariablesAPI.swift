//
// BRERuleEngineVariablesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class BRERuleEngineVariablesAPI: APIBase {
    /**
     Get a list of variable types available
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getListUsingGET(completion: @escaping ((_ data: [VariableTypeResource]?,_ error: Error?) -> Void)) {
        getListUsingGETWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of variable types available
     - GET /bre/variable-types
     - Types include integer, string, user and invoice. These are used to qualify trigger parameters and action variables with strong typing.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ {
  "name" : "aeiou",
  "base" : "aeiou"
} ]}]

     - returns: RequestBuilder<[VariableTypeResource]> 
     */
    open class func getListUsingGETWithRequestBuilder() -> RequestBuilder<[VariableTypeResource]> {
        let path = "/bre/variable-types"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[VariableTypeResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
