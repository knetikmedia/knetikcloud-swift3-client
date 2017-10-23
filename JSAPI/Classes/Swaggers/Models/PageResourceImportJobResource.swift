//
// PageResourceImportJobResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class PageResourceImportJobResource: JSONEncodable {

    public var content: [ImportJobResource]?
    public var first: Bool?
    public var last: Bool?
    public var number: Int32?
    public var numberOfElements: Int32?
    public var size: Int32?
    public var sort: [Order]?
    public var totalElements: Int64?
    public var totalPages: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["content"] = self.content?.encodeToJSON()
        nillableDictionary["first"] = self.first
        nillableDictionary["last"] = self.last
        nillableDictionary["number"] = self.number?.encodeToJSON()
        nillableDictionary["number_of_elements"] = self.numberOfElements?.encodeToJSON()
        nillableDictionary["size"] = self.size?.encodeToJSON()
        nillableDictionary["sort"] = self.sort?.encodeToJSON()
        nillableDictionary["total_elements"] = self.totalElements?.encodeToJSON()
        nillableDictionary["total_pages"] = self.totalPages?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
