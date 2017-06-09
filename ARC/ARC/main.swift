//
//  main.swift
//  ARC
//
//  Created by Stanly Shiyanovskiy on 10.06.17.
//  Copyright © 2017 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation

class Person {
    weak var dog: Dog?
    
    deinit {
        print("Person is free")
    }
}

class Dog {
    var person: Person?
    
    deinit {
        print("Dog is free")
    }
}

let firstScope = true
let secondScope = true

//--------------------FIRST------------------------
if firstScope {
    
    //--------------------SECOND------------------------
    if secondScope {
        
        let person = Person()
        let dog = Dog()
        
        person.dog = dog
        dog.person = person
        
        print("secondScope has ended")
    }
    
    //--------------------SECOND ENDS------------------------
    
    print("firstScope has ended")
}

//--------------------FIRST ENDS------------------------

print("finish")
