//
//  Car.swift
//  Class_Objects
//
//  Created by new on 07/09/2019.
//  Copyright © 2019 LearnAppMaking. All rights reserved.
//

import Foundation

enum CarTpe {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    var color = "Black"
    var numberOfSeats : Int = 5 //means this property will always hold an integer
    //note enums allows us to declare our data type in this case, our datatype is CarType below
    var typeOfCar : CarTpe = .Coupe //basically u use the dot notation to access all of the CarType enumeration type
    
    //create class constructor for the class so we can customize it.. basically what should happen when the class is called
    init(){
        
    }
    
    //this is useful when u want to have two ways of instantiating the Car class if you want to pass parameter or not
    convenience init (customersChoosenColor : String){
        self.init()
        color = customersChoosenColor
    }
    
    func drive(){
        print("Car is moving!")
    }
}
