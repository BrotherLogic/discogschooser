//
//  Folder.swift
//  DiscogsBrowser
//
//  Created by Simon Tucker on 01/09/2014.
//  Copyright (c) 2014 Brotherlogic. All rights reserved.
//

import Foundation

public class Folder: DiscogsObject, Updatable {
    
    var id = 0
    var name: String = ""
    
    public override init(json: String) {
        super.init(json: json)
        self.name = getJson("name") as String
        self.id = getJson("name") as Int
    }
    
    func update(){
        
    }
}