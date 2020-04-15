//
//  Acknowledgement.swift
//  
//
//  Created by Gray Campbell on 4/15/20.
//

import Foundation

// MARK: Properties & Initializers

/// An `Acknowledgement` that contains a name, copyright, and license.

public struct Acknowledgement {
    
    // MARK: Properties
    
    /// The name of the acknowledgement (i.e. the framework or service you are incorporating into your software).
    
    public let name: String
    
    /// The copyright notice (e.g. "Copyright © 2020 Gray Campbell").
    
    public let copyright: String
    
    /// The license provided by the framework or service (MIT, Apache 2.0, etc.).
    
    public let license: License
    
    /// The full text of the acknowledgement (includes name, copyright, and license text).
    
    public var fullText: String {
        return "\(self.name)\n\n\(self.copyright)\n\n\(self.license.text)"
    }
    
    /// An `Acknowledgement` for the Acknowledgements framework.
    ///
    /// `name = "Acknowledgements"`
    ///
    /// `copyright = "Copyright © 2020 Gray Campbell"`
    ///
    /// `license = .MIT`
    
    public static let acknowledgements = Acknowledgement(name: "Acknowledgements", copyright: "Copyright © 2020 Gray Campbell", license: .MIT)
    
    // MARK: Initializers
    
    /// Initializes and returns a new `Acknowledgement`.
    ///
    /// - Parameter name: The name of the acknowledgement (i.e. the framework or service you are incorporating into your software).
    /// - Parameter copyright: The copyright notice (e.g. "Copyright © 2020 Gray Campbell").
    /// - Parameter license: The license provided by the framework or service (MIT, Apache 2.0, etc.).
    
    public init(name: String, copyright: String, license: License) {
        self.name = name
        self.copyright = copyright
        self.license = license
    }
}
