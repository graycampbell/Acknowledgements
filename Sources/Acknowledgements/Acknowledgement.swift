//
//  Acknowledgement.swift
//  
//
//  Created by Gray Campbell on 4/15/20.
//

import Foundation

// MARK: Properties & Initializers

public struct Acknowledgement {
    
    // MARK: Properties
    
    public let name: String
    public let copyright: String
    public let license: License
    
    public var fullText: String {
        return "\(self.name)\n\nCopyright © \(self.copyright)\n\n\(self.license.text)"
    }
    
    // MARK: Initializers
    
    public init(name: String, copyright: String, license: License) {
        self.name = name
        self.copyright = copyright
        self.license = license
    }
}
