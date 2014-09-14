//
//  RecordTest.swift
//  DiscogsBrowser
//
//  Created by Simon Tucker on 01/09/2014.
//  Copyright (c) 2014 Brotherlogic. All rights reserved.
//

import Foundation
import XCTest
import DiscogsBrowser

class RecordTest: XCTestCase {
    
    func testInit() {
        var err: NSError?
        let jsonString = NSString.stringWithContentsOfFile("DiscogsBrowserTests/record.json", encoding:NSUTF8StringEncoding, error:&err ) as String
        let record = Record(json: jsonString)
        XCTAssertEqual("Never Gonna Give You Up", record.title, "Titles do not match")
        XCTAssertEqual(249504, record.id, "Ids do not match")
    }
}