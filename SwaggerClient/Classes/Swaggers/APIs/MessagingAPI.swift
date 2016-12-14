//
// MessagingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class MessagingAPI: APIBase {
    /**
     Send a raw email to one or more users
     
     - parameter rawEmailResource: (body) The new raw email to be sent (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sendRawEmailUsingPOST(rawEmailResource: RawEmailResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        sendRawEmailUsingPOSTWithRequestBuilder(rawEmailResource: rawEmailResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Send a raw email to one or more users
     - POST /messaging/raw-email
     
     - parameter rawEmailResource: (body) The new raw email to be sent (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func sendRawEmailUsingPOSTWithRequestBuilder(rawEmailResource: RawEmailResource? = nil) -> RequestBuilder<Void> {
        let path = "/messaging/raw-email"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = rawEmailResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Send a raw SMS
     
     - parameter rawSMSResource: (body) The new raw SMS to be sent (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sendRawSMSUsingPOST(rawSMSResource: RawSMSResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        sendRawSMSUsingPOSTWithRequestBuilder(rawSMSResource: rawSMSResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Send a raw SMS
     - POST /messaging/raw-sms
     - Sends a raw SMS text message to one or more users. User's without registered mobile numbers will be skipped.
     
     - parameter rawSMSResource: (body) The new raw SMS to be sent (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func sendRawSMSUsingPOSTWithRequestBuilder(rawSMSResource: RawSMSResource? = nil) -> RequestBuilder<Void> {
        let path = "/messaging/raw-sms"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = rawSMSResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Send a new templated SMS
     
     - parameter templateSMSResource: (body) The new template SMS to be sent (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sendRawSMSUsingPOST1(templateSMSResource: TemplateSMSResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        sendRawSMSUsingPOST1WithRequestBuilder(templateSMSResource: templateSMSResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Send a new templated SMS
     - POST /messaging/templated-sms
     - Sends a templated SMS text message to one or more users. User's without registered mobile numbers will be skipped.
     
     - parameter templateSMSResource: (body) The new template SMS to be sent (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func sendRawSMSUsingPOST1WithRequestBuilder(templateSMSResource: TemplateSMSResource? = nil) -> RequestBuilder<Void> {
        let path = "/messaging/templated-sms"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = templateSMSResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Send a templated email to one or more users
     
     - parameter messageResource: (body) The new template email to be sent (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sendTemplateEmailUsingPOST(messageResource: TemplateEmailResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        sendTemplateEmailUsingPOSTWithRequestBuilder(messageResource: messageResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Send a templated email to one or more users
     - POST /messaging/templated-email
     
     - parameter messageResource: (body) The new template email to be sent (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func sendTemplateEmailUsingPOSTWithRequestBuilder(messageResource: TemplateEmailResource? = nil) -> RequestBuilder<Void> {
        let path = "/messaging/templated-email"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = messageResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
