//
//  Collection.swift
//  DiscogsBrowser
//
//  Created by Simon Tucker on 01/09/2014.
//  Copyright (c) 2014 Brotherlogic. All rights reserved.
//

import Foundation

public class Collection: DiscogsObject, Updatable {
    
    public override init(json: String) {
        super.init(json:json);
    }
    
    func update(){
        //Update the folders and then the records
    }
    
}