//
// GamificationMetricsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class GamificationMetricsAPI: APIBase {
    /**
     Add a metric
     - parameter metric: (body) The new metric (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addMetric(metric: MetricResource? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        addMetricWithRequestBuilder(metric: metric).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Add a metric
     - POST /metrics
     - Post a new score/stat for an activity occurrence without ending the occurrence itself

     - parameter metric: (body) The new metric (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func addMetricWithRequestBuilder(metric: MetricResource? = nil) -> RequestBuilder<Void> {
        let path = "/metrics"
        let URLString = JSAPIAPI.basePath + path
        let parameters = metric?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
