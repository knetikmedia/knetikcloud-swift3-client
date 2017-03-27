//
// TaxesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class TaxesAPI: APIBase {
    /**
     Create a country tax
     
     - parameter taxResource: (body) The tax object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCountryTax(taxResource: CountryTaxResource? = nil, completion: @escaping ((_ data: CountryTaxResource?,_ error: Error?) -> Void)) {
        createCountryTaxWithRequestBuilder(taxResource: taxResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a country tax
     - POST /tax/countries
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "tax_shipping" : false,
  "rate" : 3.7426643289412254,
  "name" : "aeiou",
  "country_iso3" : "aeiou"
}}]
     
     - parameter taxResource: (body) The tax object (optional)

     - returns: RequestBuilder<CountryTaxResource> 
     */
    open class func createCountryTaxWithRequestBuilder(taxResource: CountryTaxResource? = nil) -> RequestBuilder<CountryTaxResource> {
        let path = "/tax/countries"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = taxResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CountryTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create a state tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter taxResource: (body) The tax object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createStateTax(countryCodeIso3: String, taxResource: StateTaxResource? = nil, completion: @escaping ((_ data: StateTaxResource?,_ error: Error?) -> Void)) {
        createStateTaxWithRequestBuilder(countryCodeIso3: countryCodeIso3, taxResource: taxResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create a state tax
     - POST /tax/countries/{country_code_iso3}/states
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "tax_shipping" : false,
  "rate" : 7.278628812885022,
  "federally_exempt" : false,
  "name" : "aeiou",
  "state_code" : "aeiou",
  "country_iso3" : "aeiou"
}}]
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter taxResource: (body) The tax object (optional)

     - returns: RequestBuilder<StateTaxResource> 
     */
    open class func createStateTaxWithRequestBuilder(countryCodeIso3: String, taxResource: StateTaxResource? = nil) -> RequestBuilder<StateTaxResource> {
        var path = "/tax/countries/{country_code_iso3}/states"
        path = path.replacingOccurrences(of: "{country_code_iso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = taxResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<StateTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete an existing tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteCountryTax(countryCodeIso3: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteCountryTaxWithRequestBuilder(countryCodeIso3: countryCodeIso3).execute { (response, error) -> Void in
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
    open class func deleteCountryTaxWithRequestBuilder(countryCodeIso3: String) -> RequestBuilder<Void> {
        var path = "/tax/countries/{country_code_iso3}"
        path = path.replacingOccurrences(of: "{country_code_iso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Delete an existing state tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteStateTax(countryCodeIso3: String, stateCode: String, completion: @escaping ((_ error: Error?) -> Void)) {
        deleteStateTaxWithRequestBuilder(countryCodeIso3: countryCodeIso3, stateCode: stateCode).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Delete an existing state tax
     - DELETE /tax/countries/{country_code_iso3}/states/{stateCode}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteStateTaxWithRequestBuilder(countryCodeIso3: String, stateCode: String) -> RequestBuilder<Void> {
        var path = "/tax/countries/{country_code_iso3}/states/{stateCode}"
        path = path.replacingOccurrences(of: "{country_code_iso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{state_code}", with: "\(stateCode)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCountryTax(countryCodeIso3: String, completion: @escaping ((_ data: CountryTaxResource?,_ error: Error?) -> Void)) {
        getCountryTaxWithRequestBuilder(countryCodeIso3: countryCodeIso3).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single tax
     - GET /tax/countries/{country_code_iso3}
     - examples: [{contentType=application/json, example={
  "tax_shipping" : false,
  "rate" : 7.869550967819565,
  "name" : "aeiou",
  "country_iso3" : "aeiou"
}}]
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 

     - returns: RequestBuilder<CountryTaxResource> 
     */
    open class func getCountryTaxWithRequestBuilder(countryCodeIso3: String) -> RequestBuilder<CountryTaxResource> {
        var path = "/tax/countries/{country_code_iso3}"
        path = path.replacingOccurrences(of: "{country_code_iso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CountryTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search taxes
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCountryTaxes(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceCountryTaxResource?,_ error: Error?) -> Void)) {
        getCountryTaxesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search taxes
     - GET /tax/countries
     - Get a list of taxes
     - examples: [{contentType=application/json, example={
  "number" : 6,
  "last" : true,
  "size" : 6,
  "total_elements" : 5,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 1,
  "number_of_elements" : 3,
  "content" : [ {
    "tax_shipping" : false,
    "rate" : 3.2121293634174783,
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
    open class func getCountryTaxesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceCountryTaxResource> {
        let path = "/tax/countries"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceCountryTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a single state tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStateTax(countryCodeIso3: String, stateCode: String, completion: @escaping ((_ data: StateTaxResource?,_ error: Error?) -> Void)) {
        getStateTaxWithRequestBuilder(countryCodeIso3: countryCodeIso3, stateCode: stateCode).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a single state tax
     - GET /tax/countries/{country_code_iso3}/states/{stateCode}
     - examples: [{contentType=application/json, example={
  "tax_shipping" : false,
  "rate" : 6.791520735699608,
  "federally_exempt" : false,
  "name" : "aeiou",
  "state_code" : "aeiou",
  "country_iso3" : "aeiou"
}}]
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 

     - returns: RequestBuilder<StateTaxResource> 
     */
    open class func getStateTaxWithRequestBuilder(countryCodeIso3: String, stateCode: String) -> RequestBuilder<StateTaxResource> {
        var path = "/tax/countries/{country_code_iso3}/states/{stateCode}"
        path = path.replacingOccurrences(of: "{country_code_iso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{state_code}", with: "\(stateCode)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<StateTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search taxes across all countries
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStateTaxesForCountries(size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceStateTaxResource?,_ error: Error?) -> Void)) {
        getStateTaxesForCountriesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search taxes across all countries
     - GET /tax/states
     - Get a list of taxes
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 6,
  "total_elements" : 3,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 3,
  "number_of_elements" : 3,
  "content" : [ {
    "tax_shipping" : false,
    "rate" : 1.1875336480498466,
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
    open class func getStateTaxesForCountriesWithRequestBuilder(size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceStateTaxResource> {
        let path = "/tax/states"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceStateTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List and search taxes within a country
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStateTaxesForCountry(countryCodeIso3: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: @escaping ((_ data: PageResourceStateTaxResource?,_ error: Error?) -> Void)) {
        getStateTaxesForCountryWithRequestBuilder(countryCodeIso3: countryCodeIso3, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     List and search taxes within a country
     - GET /tax/countries/{country_code_iso3}/states
     - Get a list of taxes
     - examples: [{contentType=application/json, example={
  "number" : 4,
  "last" : true,
  "size" : 4,
  "total_elements" : 0,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 1,
  "number_of_elements" : 0,
  "content" : [ {
    "tax_shipping" : false,
    "rate" : 1.7174145417215547,
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
    open class func getStateTaxesForCountryWithRequestBuilder(countryCodeIso3: String, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceStateTaxResource> {
        var path = "/tax/countries/{country_code_iso3}/states"
        path = path.replacingOccurrences(of: "{country_code_iso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "size": size?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "order": order
        ])
        

        let requestBuilder: RequestBuilder<PageResourceStateTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create or update a tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter taxResource: (body) The tax object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateCountryTax(countryCodeIso3: String, taxResource: CountryTaxResource? = nil, completion: @escaping ((_ data: CountryTaxResource?,_ error: Error?) -> Void)) {
        updateCountryTaxWithRequestBuilder(countryCodeIso3: countryCodeIso3, taxResource: taxResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create or update a tax
     - PUT /tax/countries/{country_code_iso3}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "tax_shipping" : false,
  "rate" : 3.6971347813615028,
  "name" : "aeiou",
  "country_iso3" : "aeiou"
}}]
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter taxResource: (body) The tax object (optional)

     - returns: RequestBuilder<CountryTaxResource> 
     */
    open class func updateCountryTaxWithRequestBuilder(countryCodeIso3: String, taxResource: CountryTaxResource? = nil) -> RequestBuilder<CountryTaxResource> {
        var path = "/tax/countries/{country_code_iso3}"
        path = path.replacingOccurrences(of: "{country_code_iso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = taxResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<CountryTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Create or update a state tax
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 
     - parameter taxResource: (body) The tax object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateStateTax(countryCodeIso3: String, stateCode: String, taxResource: StateTaxResource? = nil, completion: @escaping ((_ data: StateTaxResource?,_ error: Error?) -> Void)) {
        updateStateTaxWithRequestBuilder(countryCodeIso3: countryCodeIso3, stateCode: stateCode, taxResource: taxResource).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create or update a state tax
     - PUT /tax/countries/{country_code_iso3}/states/{stateCode}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "tax_shipping" : false,
  "rate" : 8.229615940530078,
  "federally_exempt" : false,
  "name" : "aeiou",
  "state_code" : "aeiou",
  "country_iso3" : "aeiou"
}}]
     
     - parameter countryCodeIso3: (path) The iso3 code of the country 
     - parameter stateCode: (path) The code of the state 
     - parameter taxResource: (body) The tax object (optional)

     - returns: RequestBuilder<StateTaxResource> 
     */
    open class func updateStateTaxWithRequestBuilder(countryCodeIso3: String, stateCode: String, taxResource: StateTaxResource? = nil) -> RequestBuilder<StateTaxResource> {
        var path = "/tax/countries/{country_code_iso3}/states/{stateCode}"
        path = path.replacingOccurrences(of: "{country_code_iso3}", with: "\(countryCodeIso3)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{state_code}", with: "\(stateCode)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = taxResource?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<StateTaxResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
