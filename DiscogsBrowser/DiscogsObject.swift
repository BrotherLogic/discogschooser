//
//  DiscogsObject.swift
//  DiscogsBrowser
//
//  Created by Simon Tucker on 01/09/2014.
//  Copyright (c) 2014 Brotherlogic. All rights reserved.
//

import Foundation

public class DiscogsObject {
    
    var jsonMap = Dictionary<String,AnyObject>();
    
    init(json: String) {
        var e: NSError?
        var data: NSData!=json.dataUsingEncoding(NSUTF8StringEncoding)
        self.jsonMap = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(0), error: &e) as Dictionary<String,AnyObject>
    }
    
    convenience init(fromFile filePath: String) {
        var err: NSError?
        let json = NSString.stringWithContentsOfFile(filePath, encoding:NSUTF8StringEncoding, error:&err ) as String
        self.init(json:json)
    }
    
    func getJson(key: String) -> AnyObject? {
        return jsonMap[key];
    }
    
    func writeToFile(filePath: String) {
        //Write out the file as JSON
        NSOutputStream *outStream = NSOutputStream.outputStreamToFileAtPath(filePath, append: false)
        
    }
}

protocol Updatable {
    func update()
}