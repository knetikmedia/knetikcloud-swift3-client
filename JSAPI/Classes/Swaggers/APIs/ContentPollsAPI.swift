//
// ContentPollsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class ContentPollsAPI: APIBase {
    /**
     Add your vote to a poll
     - parameter id: (path) The poll id 
     - parameter answerKey: (body) The answer key (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func answerPoll(id: String, answerKey: StringWrapper? = nil, completion: @escaping ((_ data: PollResponseResource?, _ error: ErrorResponse?) -> Void)) {
        answerPollWithRequestBuilder(id: id, answerKey: answerKey).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add your vote to a poll
     - POST /media/polls/{id}/response
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "answered_date" : 0,
  "poll_id" : "poll_id",
  "answer" : "answer",
  "id" : "id",
  "user" : {
    "avatar_url" : "avatar_url",
    "id" : 1,
    "display_name" : "display_name",
    "username" : "username"
  }
}}]
     - parameter id: (path) The poll id 
     - parameter answerKey: (body) The answer key (optional)
     - returns: RequestBuilder<PollResponseResource> 
     */
    open class func answerPollWithRequestBuilder(id: String, answerKey: StringWrapper? = nil) -> RequestBuilder<PollResponseResource> {
        var path = "/media/polls/{id}/response"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = answerKey?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<PollResponseResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a new poll
     - parameter pollResource: (body) The poll object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPoll(pollResource: PollResource? = nil, completion: @escaping ((_ data: PollResource?, _ error: ErrorResponse?) -> Void)) {
        createPollWithRequestBuilder(pollResource: pollResource).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a new poll
     - POST /media/polls
     - Polls are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "template" : "template",
  "answers" : [ {
    "count" : 0,
    "text" : "text",
    "key" : "key"
  }, {
    "count" : 0,
    "text" : "text",
    "key" : "key"
  } ],
  "active" : false,
  "additional_properties" : {
    "key" : {
      "type" : "type"
    }
  },
  "created_date" : 6,
  "id" : "id",
  "text" : "text",
  "updated_date" : 1,
  "category" : {
    "name" : "name",
    "active" : false,
    "id" : "id"
  },
  "type" : "TEXT",
  "tags" : [ "tags", "tags" ]
}}]
     - parameter pollResource: (body) The poll object (optional)
     - returns: RequestBuilder<PollResource> 
     */
    open class func createPollWithRequestBuilder(pollResource: PollResource? = nil) -> RequestBuilder<PollResource> {
        let path = "/media/polls"
        let URLString = JSAPIAPI.basePath + path
        let parameters = pollResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<PollResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a poll template
     - parameter pollTemplateResource: (body) The poll template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPollTemplate(pollTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?, _ error: ErrorResponse?) -> Void)) {
        createPollTemplateWithRequestBuilder(pollTemplateResource: pollTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a poll template
     - POST /media/polls/templates
     - Poll templates define a type of poll and the properties they have
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "created_date" : 0,
  "id" : "id",
  "updated_date" : 6,
  "properties" : [ {
    "name" : "name",
    "type" : "type",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ],
      "property_type" : "property_type",
      "property_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ]
    },
    "required" : false
  }, {
    "name" : "name",
    "type" : "type",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ],
      "property_type" : "property_type",
      "property_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ]
    },
    "required" : false
  } ]
}}]
     - parameter pollTemplateResource: (body) The poll template resource object (optional)
     - returns: RequestBuilder<TemplateResource> 
     */
    open class func createPollTemplateWithRequestBuilder(pollTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/media/polls/templates"
        let URLString = JSAPIAPI.basePath + path
        let parameters = pollTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete an existing poll
     - parameter id: (path) The poll id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePoll(id: String, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deletePollWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Delete an existing poll
     - DELETE /media/polls/{id}
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The poll id 
     - returns: RequestBuilder<Void> 
     */
    open class func deletePollWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        var path = "/media/polls/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete a poll template
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePollTemplate(id: String, cascade: String? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deletePollTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Delete a poll template
     - DELETE /media/polls/templates/{id}
     - If cascade = 'detach', it will force delete the template even if it's attached to other objects
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func deletePollTemplateWithRequestBuilder(id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/media/polls/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "cascade": cascade
        ])

        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single poll
     - parameter id: (path) The poll id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPoll(id: String, completion: @escaping ((_ data: PollResource?, _ error: ErrorResponse?) -> Void)) {
        getPollWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a single poll
     - GET /media/polls/{id}

     - examples: [{contentType=application/json, example={
  "template" : "template",
  "answers" : [ {
    "count" : 0,
    "text" : "text",
    "key" : "key"
  }, {
    "count" : 0,
    "text" : "text",
    "key" : "key"
  } ],
  "active" : false,
  "additional_properties" : {
    "key" : {
      "type" : "type"
    }
  },
  "created_date" : 6,
  "id" : "id",
  "text" : "text",
  "updated_date" : 1,
  "category" : {
    "name" : "name",
    "active" : false,
    "id" : "id"
  },
  "type" : "TEXT",
  "tags" : [ "tags", "tags" ]
}}]
     - parameter id: (path) The poll id 
     - returns: RequestBuilder<PollResource> 
     */
    open class func getPollWithRequestBuilder(id: String) -> RequestBuilder<PollResource> {
        var path = "/media/polls/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<PollResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get poll answer
     - parameter id: (path) The poll id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPollAnswer(id: String, completion: @escaping ((_ data: PollResponseResource?, _ error: ErrorResponse?) -> Void)) {
        getPollAnswerWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get poll answer
     - GET /media/polls/{id}/response
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "answered_date" : 0,
  "poll_id" : "poll_id",
  "answer" : "answer",
  "id" : "id",
  "user" : {
    "avatar_url" : "avatar_url",
    "id" : 1,
    "display_name" : "display_name",
    "username" : "username"
  }
}}]
     - parameter id: (path) The poll id 
     - returns: RequestBuilder<PollResponseResource> 
     */
    open class func getPollAnswerWithRequestBuilder(id: String) -> RequestBuilder<PollResponseResource> {
        var path = "/media/polls/{id}/response"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<PollResponseResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single poll template
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPollTemplate(id: String, completion: @escaping ((_ data: TemplateResource?, _ error: ErrorResponse?) -> Void)) {
        getPollTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a single poll template
     - GET /media/polls/templates/{id}
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "created_date" : 0,
  "id" : "id",
  "updated_date" : 6,
  "properties" : [ {
    "name" : "name",
    "type" : "type",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ],
      "property_type" : "property_type",
      "property_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ]
    },
    "required" : false
  }, {
    "name" : "name",
    "type" : "type",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ],
      "property_type" : "property_type",
      "property_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ]
    },
    "required" : false
  } ]
}}]
     - parameter id: (path) The id of the template 
     - returns: RequestBuilder<TemplateResource> 
     */
    open class func getPollTemplateWithRequestBuilder(id: String) -> RequestBuilder<TemplateResource> {
        var path = "/media/polls/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search poll templates
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPollTemplates(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceTemplateResource?, _ error: ErrorResponse?) -> Void)) {
        getPollTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List and search poll templates
     - GET /media/polls/templates
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 1,
  "last" : true,
  "size" : 5,
  "total_elements" : 2,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  }, {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 7,
  "number_of_elements" : 5,
  "content" : [ {
    "name" : "name",
    "created_date" : 0,
    "id" : "id",
    "updated_date" : 6,
    "properties" : [ {
      "name" : "name",
      "type" : "type",
      "field_list" : {
        "property_definition_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ],
        "property_type" : "property_type",
        "property_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ]
      },
      "required" : false
    }, {
      "name" : "name",
      "type" : "type",
      "field_list" : {
        "property_definition_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ],
        "property_type" : "property_type",
        "property_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ]
      },
      "required" : false
    } ]
  }, {
    "name" : "name",
    "created_date" : 0,
    "id" : "id",
    "updated_date" : 6,
    "properties" : [ {
      "name" : "name",
      "type" : "type",
      "field_list" : {
        "property_definition_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ],
        "property_type" : "property_type",
        "property_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ]
      },
      "required" : false
    }, {
      "name" : "name",
      "type" : "type",
      "field_list" : {
        "property_definition_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ],
        "property_type" : "property_type",
        "property_fields" : [ {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        }, {
          "inner_type" : "integer",
          "valid_values" : [ "valid_values", "valid_values" ],
          "name" : "name",
          "description" : "description",
          "type" : "integer",
          "inner_type_fields" : [ null, null ],
          "required" : false
        } ]
      },
      "required" : false
    } ]
  } ],
  "first" : true
}}]
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - returns: RequestBuilder<PageResourceTemplateResource> 
     */
    open class func getPollTemplatesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTemplateResource> {
        let path = "/media/polls/templates"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourceTemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search polls
     - parameter filterCategory: (query) Filter for polls from a specific category by id (optional)
     - parameter filterTagset: (query) Filter for polls with specified tags (separated by comma) (optional)
     - parameter filterText: (query) Filter for polls whose text contains a string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPolls(filterCategory: String? = nil, filterTagset: String? = nil, filterText: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourcePollResource?, _ error: ErrorResponse?) -> Void)) {
        getPollsWithRequestBuilder(filterCategory: filterCategory, filterTagset: filterTagset, filterText: filterText, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List and search polls
     - GET /media/polls
     - Get a list of polls with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.

     - examples: [{contentType=application/json, example={
  "number" : 5,
  "last" : true,
  "size" : 2,
  "total_elements" : 7,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  }, {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 9,
  "number_of_elements" : 5,
  "content" : [ {
    "template" : "template",
    "answers" : [ {
      "count" : 0,
      "text" : "text",
      "key" : "key"
    }, {
      "count" : 0,
      "text" : "text",
      "key" : "key"
    } ],
    "active" : false,
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "created_date" : 6,
    "id" : "id",
    "text" : "text",
    "updated_date" : 1,
    "category" : {
      "name" : "name",
      "active" : false,
      "id" : "id"
    },
    "type" : "TEXT",
    "tags" : [ "tags", "tags" ]
  }, {
    "template" : "template",
    "answers" : [ {
      "count" : 0,
      "text" : "text",
      "key" : "key"
    }, {
      "count" : 0,
      "text" : "text",
      "key" : "key"
    } ],
    "active" : false,
    "additional_properties" : {
      "key" : {
        "type" : "type"
      }
    },
    "created_date" : 6,
    "id" : "id",
    "text" : "text",
    "updated_date" : 1,
    "category" : {
      "name" : "name",
      "active" : false,
      "id" : "id"
    },
    "type" : "TEXT",
    "tags" : [ "tags", "tags" ]
  } ],
  "first" : true
}}]
     - parameter filterCategory: (query) Filter for polls from a specific category by id (optional)
     - parameter filterTagset: (query) Filter for polls with specified tags (separated by comma) (optional)
     - parameter filterText: (query) Filter for polls whose text contains a string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - returns: RequestBuilder<PageResourcePollResource> 
     */
    open class func getPollsWithRequestBuilder(filterCategory: String? = nil, filterTagset: String? = nil, filterText: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourcePollResource> {
        let path = "/media/polls"
        let URLString = JSAPIAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filter_category": filterCategory, 
            "filter_tagset": filterTagset, 
            "filter_text": filterText, 
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])

        let requestBuilder: RequestBuilder<PageResourcePollResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update an existing poll
     - parameter id: (path) The poll id 
     - parameter pollResource: (body) The poll object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updatePoll(id: String, pollResource: PollResource? = nil, completion: @escaping ((_ data: PollResource?, _ error: ErrorResponse?) -> Void)) {
        updatePollWithRequestBuilder(id: id, pollResource: pollResource).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update an existing poll
     - PUT /media/polls/{id}
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "template" : "template",
  "answers" : [ {
    "count" : 0,
    "text" : "text",
    "key" : "key"
  }, {
    "count" : 0,
    "text" : "text",
    "key" : "key"
  } ],
  "active" : false,
  "additional_properties" : {
    "key" : {
      "type" : "type"
    }
  },
  "created_date" : 6,
  "id" : "id",
  "text" : "text",
  "updated_date" : 1,
  "category" : {
    "name" : "name",
    "active" : false,
    "id" : "id"
  },
  "type" : "TEXT",
  "tags" : [ "tags", "tags" ]
}}]
     - parameter id: (path) The poll id 
     - parameter pollResource: (body) The poll object (optional)
     - returns: RequestBuilder<PollResource> 
     */
    open class func updatePollWithRequestBuilder(id: String, pollResource: PollResource? = nil) -> RequestBuilder<PollResource> {
        var path = "/media/polls/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = pollResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<PollResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update a poll template
     - parameter id: (path) The id of the template 
     - parameter pollTemplateResource: (body) The poll template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updatePollTemplate(id: String, pollTemplateResource: TemplateResource? = nil, completion: @escaping ((_ data: TemplateResource?, _ error: ErrorResponse?) -> Void)) {
        updatePollTemplateWithRequestBuilder(id: id, pollTemplateResource: pollTemplateResource).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a poll template
     - PUT /media/polls/templates/{id}
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "created_date" : 0,
  "id" : "id",
  "updated_date" : 6,
  "properties" : [ {
    "name" : "name",
    "type" : "type",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ],
      "property_type" : "property_type",
      "property_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ]
    },
    "required" : false
  }, {
    "name" : "name",
    "type" : "type",
    "field_list" : {
      "property_definition_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ],
      "property_type" : "property_type",
      "property_fields" : [ {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      }, {
        "inner_type" : "integer",
        "valid_values" : [ "valid_values", "valid_values" ],
        "name" : "name",
        "description" : "description",
        "type" : "integer",
        "inner_type_fields" : [ null, null ],
        "required" : false
      } ]
    },
    "required" : false
  } ]
}}]
     - parameter id: (path) The id of the template 
     - parameter pollTemplateResource: (body) The poll template resource object (optional)
     - returns: RequestBuilder<TemplateResource> 
     */
    open class func updatePollTemplateWithRequestBuilder(id: String, pollTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        var path = "/media/polls/templates/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = pollTemplateResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TemplateResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
