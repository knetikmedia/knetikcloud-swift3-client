//
// GamificationMetricsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class GamificationMetricsAPI: APIBase {
    /**
     Add a metric
     
     - parameter metric: (body) The new metric (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addMetricUsingPOST(metric: MetricResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        addMetricUsingPOSTWithRequestBuilder(metric: metric).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Add a metric
     - POST /metrics
     - Post a new score/stat for an activity occurrence without ending the occurrence itself
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter metric: (body) The new metric (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func addMetricUsingPOSTWithRequestBuilder(metric: MetricResource? = nil) -> RequestBuilder<Void> {
        let path = "/metrics"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = metric?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
