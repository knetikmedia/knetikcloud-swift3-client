//
// TaxesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class TaxesAPI: APIBase {
    /**
     Create a tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter taxResource: (body) The tax object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createTaxUsingPOST(countryCodeIso3: String, taxResource: StateTaxResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        createTaxUsingPOSTWithRequestBuilder(countryCodeIso3: countryCodeIso3, taxResource: taxResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Create a tax
     - POST /tax/countries/{country_code_iso3}/states
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter taxResource: (body) The tax object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func createTaxUsingPOSTWithRequestBuilder(countryCodeIso3: String, taxResource: StateTaxResource? = nil) -> RequestBuilder<Void> {
        var path = "/tax/countries/{country_code_iso3}/states"
        path = path.replacingOccurrences(of: "{countryCodeIso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = taxResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an existing tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteTaxUsingDELETE(countryCodeIso3: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteTaxUsingDELETEWithRequestBuilder(countryCodeIso3: countryCodeIso3).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete an existing tax
     - DELETE /tax/countries/{country_code_iso3}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteTaxUsingDELETEWithRequestBuilder(countryCodeIso3: String) -> RequestBuilder<Void> {
        var path = "/tax/countries/{country_code_iso3}"
        path = path.replacingOccurrences(of: "{countryCodeIso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an existing tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteTaxUsingDELETE1(countryCodeIso3: String, stateCode: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteTaxUsingDELETE1WithRequestBuilder(countryCodeIso3: countryCodeIso3, stateCode: stateCode).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete an existing tax
     - DELETE /tax/countries/{country_code_iso3}/states/{stateCode}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteTaxUsingDELETE1WithRequestBuilder(countryCodeIso3: String, stateCode: String) -> RequestBuilder<Void> {
        var path = "/tax/countries/{country_code_iso3}/states/{stateCode}"
        path = path.replacingOccurrences(of: "{countryCodeIso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{stateCode}", with: "\(stateCode)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search taxes across all countries
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAllTaxesUsingGET(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceStateTaxResource?,_ error: Error?) -> Void)) {
        getAllTaxesUsingGETWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search taxes across all countries
     - GET /tax/states
     - Get a list of taxes
     - examples: [{contentType=application/json, example={
  "number" : 123,
  "last" : true,
  "size" : 123,
  "total_elements" : 123456789,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "aeiou",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "aeiou"
  } ],
  "total_pages" : 123,
  "number_of_elements" : 123,
  "content" : [ {
    "tax_shipping" : false,
    "rate" : 1.3579000000000001069366817318950779736042022705078125,
    "federally_exempt" : false,
    "name" : "aeiou",
    "state_code" : "aeiou",
    "country_iso3" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)

     - returns: RequestBuilder<PageResourceStateTaxResource> 
     */
    open class func getAllTaxesUsingGETWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceStateTaxResource> {
        let path = "/tax/states"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceStateTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a single tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTaxUsingGET(countryCodeIso3: String, completion: @escaping ((_ data: CountryTaxResource?,_ error: Error?) -> Void)) {
        getTaxUsingGETWithRequestBuilder(countryCodeIso3: countryCodeIso3).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single tax
     - GET /tax/countries/{country_code_iso3}
     - examples: [{contentType=application/json, example={
  "tax_shipping" : false,
  "rate" : 1.3579000000000001069366817318950779736042022705078125,
  "name" : "aeiou",
  "country_iso3" : "aeiou"
}}]
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 

     - returns: RequestBuilder<CountryTaxResource> 
     */
    open class func getTaxUsingGETWithRequestBuilder(countryCodeIso3: String) -> RequestBuilder<CountryTaxResource> {
        var path = "/tax/countries/{country_code_iso3}"
        path = path.replacingOccurrences(of: "{countryCodeIso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CountryTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTaxUsingGET1(countryCodeIso3: String, stateCode: String, completion: @escaping ((_ data: StateTaxResource?,_ error: Error?) -> Void)) {
        getTaxUsingGET1WithRequestBuilder(countryCodeIso3: countryCodeIso3, stateCode: stateCode).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single tax
     - GET /tax/countries/{country_code_iso3}/states/{stateCode}
     - examples: [{contentType=application/json, example={
  "tax_shipping" : false,
  "rate" : 1.3579000000000001069366817318950779736042022705078125,
  "federally_exempt" : false,
  "name" : "aeiou",
  "state_code" : "aeiou",
  "country_iso3" : "aeiou"
}}]
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 

     - returns: RequestBuilder<StateTaxResource> 
     */
    open class func getTaxUsingGET1WithRequestBuilder(countryCodeIso3: String, stateCode: String) -> RequestBuilder<StateTaxResource> {
        var path = "/tax/countries/{country_code_iso3}/states/{stateCode}"
        path = path.replacingOccurrences(of: "{countryCodeIso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{stateCode}", with: "\(stateCode)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<StateTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search taxes
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTaxesUsingGET(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceCountryTaxResource?,_ error: Error?) -> Void)) {
        getTaxesUsingGETWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search taxes
     - GET /tax/countries
     - Get a list of taxes
     - examples: [{contentType=application/json, example={
  "number" : 123,
  "last" : true,
  "size" : 123,
  "total_elements" : 123456789,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "aeiou",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "aeiou"
  } ],
  "total_pages" : 123,
  "number_of_elements" : 123,
  "content" : [ {
    "tax_shipping" : false,
    "rate" : 1.3579000000000001069366817318950779736042022705078125,
    "name" : "aeiou",
    "country_iso3" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)

     - returns: RequestBuilder<PageResourceCountryTaxResource> 
     */
    open class func getTaxesUsingGETWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceCountryTaxResource> {
        let path = "/tax/countries"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceCountryTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     List and search taxes within a country
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTaxesUsingGET1(countryCodeIso3: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceStateTaxResource?,_ error: Error?) -> Void)) {
        getTaxesUsingGET1WithRequestBuilder(countryCodeIso3: countryCodeIso3, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search taxes within a country
     - GET /tax/countries/{country_code_iso3}/states
     - Get a list of taxes
     - examples: [{contentType=application/json, example={
  "number" : 123,
  "last" : true,
  "size" : 123,
  "total_elements" : 123456789,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "aeiou",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "aeiou"
  } ],
  "total_pages" : 123,
  "number_of_elements" : 123,
  "content" : [ {
    "tax_shipping" : false,
    "rate" : 1.3579000000000001069366817318950779736042022705078125,
    "federally_exempt" : false,
    "name" : "aeiou",
    "state_code" : "aeiou",
    "country_iso3" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)

     - returns: RequestBuilder<PageResourceStateTaxResource> 
     */
    open class func getTaxesUsingGET1WithRequestBuilder(countryCodeIso3: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceStateTaxResource> {
        var path = "/tax/countries/{country_code_iso3}/states"
        path = path.replacingOccurrences(of: "{countryCodeIso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceStateTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Create a tax
     
     - parameter taxResource: (body) The tax object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateTaxUsingPOST(taxResource: CountryTaxResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateTaxUsingPOSTWithRequestBuilder(taxResource: taxResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Create a tax
     - POST /tax/countries
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter taxResource: (body) The tax object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateTaxUsingPOSTWithRequestBuilder(taxResource: CountryTaxResource? = nil) -> RequestBuilder<Void> {
        let path = "/tax/countries"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = taxResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create or update a tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter taxResource: (body) The tax object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateTaxUsingPUT(countryCodeIso3: String, taxResource: CountryTaxResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateTaxUsingPUTWithRequestBuilder(countryCodeIso3: countryCodeIso3, taxResource: taxResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Create or update a tax
     - PUT /tax/countries/{country_code_iso3}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter taxResource: (body) The tax object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateTaxUsingPUTWithRequestBuilder(countryCodeIso3: String, taxResource: CountryTaxResource? = nil) -> RequestBuilder<Void> {
        var path = "/tax/countries/{country_code_iso3}"
        path = path.replacingOccurrences(of: "{countryCodeIso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = taxResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create or update a tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 
     - parameter taxResource: (body) The tax object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateTaxUsingPUT1(countryCodeIso3: String, stateCode: String, taxResource: StateTaxResource? = nil, completion: @escaping ((_ error: Error?) -> Void)) {
        updateTaxUsingPUT1WithRequestBuilder(countryCodeIso3: countryCodeIso3, stateCode: stateCode, taxResource: taxResource).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Create or update a tax
     - PUT /tax/countries/{country_code_iso3}/states/{stateCode}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 
     - parameter taxResource: (body) The tax object (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func updateTaxUsingPUT1WithRequestBuilder(countryCodeIso3: String, stateCode: String, taxResource: StateTaxResource? = nil) -> RequestBuilder<Void> {
        var path = "/tax/countries/{country_code_iso3}/states/{stateCode}"
        path = path.replacingOccurrences(of: "{countryCodeIso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{stateCode}", with: "\(stateCode)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = taxResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}