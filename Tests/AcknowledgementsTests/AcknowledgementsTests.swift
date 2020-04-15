import XCTest
@testable import Acknowledgements

final class AcknowledgementsTests: XCTestCase {
    func testAcknowledgements() {
        let acknowledgement = Acknowledgement(name: "Acknowledgements", copyright: "2020 Gray Campbell", license: .MIT)
        
        XCTAssertEqual(acknowledgement.name, "Acknowledgements")
        XCTAssertEqual(acknowledgement.copyright, "2020 Gray Campbell")
        XCTAssertEqual(acknowledgement.license, .MIT)
        XCTAssertEqual(acknowledgement.fullText, "Acknowledgements\n\nCopyright © 2020 Gray Campbell\n\n\(License.MIT.text)")
    }
    
    func testLicenses() {
        let license = License(text: "License Text")
        
        XCTAssertEqual(license.text, "License Text")
    }
    
    static var allTests = [
        ("testAcknowledgements", testAcknowledgements),
        ("testLicenses", testLicenses)
    ]
}
