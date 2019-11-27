//
//  main.swift
//  day5memorymanagement
//
//  Created by Student016 on 12/11/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

print("Hello, World!")
class user
{
    var name:String
    var mac:MacBook?
    var IDnumber:IDcard?
    init (name:String)
    {
        self.name = name
        print(" username = \(self.name)initialized")
    }
    deinit{
        print("\(name) removed")
    }
}
class MacBook: NSObject {
    var serialNumber:String
    var owner:user?
    init(inSerialNumber:String){
        serialNumber = inSerialNumber
        print(" Mac Book = \(self.serialNumber) initialized")
    }
    deinit {
        print("\(serialNumber) removed")
        
    }
}

class IDcard
{
    var idNumber:String
    unowned var employee:user
    init(id:String,name:user)
    {
        idNumber = id
        employee = name
        print("\(idNumber) initialized")
    }
    deinit {
        print("\(idNumber) removed")
    }
}
