//
//  Record.swift
//  DiscogsBrowser
//
//  Created by Simon Tucker on 01/09/2014.
//  Copyright (c) 2014 Brotherlogic. All rights reserved.
//

import Foundation

public class Record: DiscogsObject {
    public var title: String = ""
    public var id: Int = 0
    
    public override init (json: String){
        super.init(json: json)
        self.title = getJson("title") as String
        self.id = getJson("id") as Int
    }
}