//
// MessagingAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class MessagingAPI: APIBase {
    /**
     Send a raw email to one or more users
     - parameter rawEmailResource: (body) The new raw email to be sent (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sendRawEmail(rawEmailResource: RawEmailResource? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        sendRawEmailWithRequestBuilder(rawEmailResource: rawEmailResource).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Send a raw email to one or more users
     - POST /messaging/raw-email
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter rawEmailResource: (body) The new raw email to be sent (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func sendRawEmailWithRequestBuilder(rawEmailResource: RawEmailResource? = nil) -> RequestBuilder<Void> {
        let path = "/messaging/raw-email"
        let URLString = JSAPIAPI.basePath + path
        let parameters = rawEmailResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Send a raw push notification
     - parameter rawPushResource: (body) The new raw push notification to be sent (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sendRawPush(rawPushResource: RawPushResource? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        sendRawPushWithRequestBuilder(rawPushResource: rawPushResource).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Send a raw push notification
     - POST /messaging/raw-push
     - Sends a raw push notification message to one or more users. User's without registered mobile device for the application will be skipped.
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter rawPushResource: (body) The new raw push notification to be sent (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func sendRawPushWithRequestBuilder(rawPushResource: RawPushResource? = nil) -> RequestBuilder<Void> {
        let path = "/messaging/raw-push"
        let URLString = JSAPIAPI.basePath + path
        let parameters = rawPushResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Send a raw SMS
     - parameter rawSMSResource: (body) The new raw SMS to be sent (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sendRawSMS(rawSMSResource: RawSMSResource? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        sendRawSMSWithRequestBuilder(rawSMSResource: rawSMSResource).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Send a raw SMS
     - POST /messaging/raw-sms
     - Sends a raw SMS text message to one or more users. User's without registered mobile numbers will be skipped.
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter rawSMSResource: (body) The new raw SMS to be sent (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func sendRawSMSWithRequestBuilder(rawSMSResource: RawSMSResource? = nil) -> RequestBuilder<Void> {
        let path = "/messaging/raw-sms"
        let URLString = JSAPIAPI.basePath + path
        let parameters = rawSMSResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Send a templated email to one or more users
     - parameter messageResource: (body) The new template email to be sent (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sendTemplatedEmail(messageResource: TemplateEmailResource? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        sendTemplatedEmailWithRequestBuilder(messageResource: messageResource).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Send a templated email to one or more users
     - POST /messaging/templated-email
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter messageResource: (body) The new template email to be sent (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func sendTemplatedEmailWithRequestBuilder(messageResource: TemplateEmailResource? = nil) -> RequestBuilder<Void> {
        let path = "/messaging/templated-email"
        let URLString = JSAPIAPI.basePath + path
        let parameters = messageResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Send a templated push notification
     - parameter templatePushResource: (body) The new templated push notification to be sent (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sendTemplatedPush(templatePushResource: TemplatePushResource? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        sendTemplatedPushWithRequestBuilder(templatePushResource: templatePushResource).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Send a templated push notification
     - POST /messaging/templated-push
     - Sends a templated push notification message to one or more users. User's without registered mobile device for the application will be skipped.
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter templatePushResource: (body) The new templated push notification to be sent (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func sendTemplatedPushWithRequestBuilder(templatePushResource: TemplatePushResource? = nil) -> RequestBuilder<Void> {
        let path = "/messaging/templated-push"
        let URLString = JSAPIAPI.basePath + path
        let parameters = templatePushResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Send a new templated SMS
     - parameter templateSMSResource: (body) The new template SMS to be sent (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sendTemplatedSMS(templateSMSResource: TemplateSMSResource? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        sendTemplatedSMSWithRequestBuilder(templateSMSResource: templateSMSResource).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Send a new templated SMS
     - POST /messaging/templated-sms
     - Sends a templated SMS text message to one or more users. User's without registered mobile numbers will be skipped.
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter templateSMSResource: (body) The new template SMS to be sent (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func sendTemplatedSMSWithRequestBuilder(templateSMSResource: TemplateSMSResource? = nil) -> RequestBuilder<Void> {
        let path = "/messaging/templated-sms"
        let URLString = JSAPIAPI.basePath + path
        let parameters = templateSMSResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
