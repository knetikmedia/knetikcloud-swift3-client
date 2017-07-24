//
// Order.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Order: JSONEncodable {

    public enum Direction: String { 
        case asc = "ASC"
        case desc = "DESC"
    }
    public enum NullHandling: String { 
        case native = "NATIVE"
        case nullsFirst = "NULLS_FIRST"
        case nullsLast = "NULLS_LAST"
    }
    public var ascending: Bool?
    public var direction: Direction?
    public var ignoreCase: Bool?
    public var nullHandling: NullHandling?
    public var property: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["ascending"] = self.ascending
        nillableDictionary["direction"] = self.direction?.rawValue
        nillableDictionary["ignore_case"] = self.ignoreCase
        nillableDictionary["null_handling"] = self.nullHandling?.rawValue
        nillableDictionary["property"] = self.property

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
