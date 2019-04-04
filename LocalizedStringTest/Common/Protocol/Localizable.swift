//
//  Localizable.swift
//  LocalizedStringTest
//
//  Created by Menahem Barouk on 04/04/2019.
//  Copyright © 2019 Menahem Barouk. All rights reserved.
//

import Foundation

protocol Localizable {
    // Properties for NSLocalizedString function
    var key      : String  { get }
    var tableName: String? { get }
    var bundle   : Bundle  { get }
    var value    : String  { get }
    var comment  : String  { get }
    
    // Property for localizable strings waiting for variables
    var arguments: [CVarArg] { get }
}

// MARK: - Default values of the Localizable protocol properties for the NSLocalizedString function
extension Localizable {
    var tableName: String? {
        return nil
    }
    var bundle: Bundle {
        return Bundle.main
    }
    var value: String {
        return String()
    }
    var comment: String {
        return String()
    }
}

// MARK: - Localized string property Extraction
extension Localizable {
    /// Default localized string, helper property
    fileprivate var defaultLocalizedString: String {
        return NSLocalizedString(key, tableName: tableName, bundle: bundle, value: value, comment: comment)
    }
    
    /// Public localized string property extracted
    var localizedString: String {
        return String(format: defaultLocalizedString, arguments: arguments)
    }
}

// MARK: - Default values where RawRepresentable protocol is implemented and RawRepresentable.RawValue == String
extension Localizable where Self: RawRepresentable, Self.RawValue == String {
    /// Default key value
    var key: String {
        return rawValue
    }
    
    /// Default arguments value
    var arguments: [CVarArg] {
        return []
    }
}

// MARK: - Localized string property Extraction where RawRepresentable protocol is implemented and RawRepresentable.RawValue == String
extension Localizable where Self: RawRepresentable, Self.RawValue == String {
    /// Localized string extracted
    var localizedString: String {
        return defaultLocalizedString
    }
}
