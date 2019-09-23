//
//  SelfDrivingCar.swift
//  Class_Objects
//
//  Created by new on 07/09/2019.
//  Copyright © 2019 LearnAppMaking. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car { //inherits from the Car class
    var destination : String? //optional string datatype which means our destination value could contain anything or not
    //so in order to use any variable declared as optional, you have to put exclamation mark at the end of the variable when used
    
    //note, using the exclamation mark after the variable is called force unwrapping
    //e.g : destination!
    
    //but whenever u use force unwrapping to use a variable like print(destination!) it may crash the app is the value of destination is nil or empty
    
    //but the only safest way to use an optional string variable is to wrap it in an if let statement like :
    
    //if let newConstant = optional_variable {//as we can see we didnt put exclamation at the end of the optional variable because we have saved the value using if let statement inside the newConstant variable
//        print("optional variable value is " +newConstant)
//    }
    
    //although the drive method exist in the base or supper class already (Car) class but then we also need the drive method in our self driving class to perform some other things when it is done doing or executing the block of code on the parent class (Car) using the super.method name to first execute the parent method
    override func drive() {
        super.drive()
        
        
        
        //this kind of if statement is called optional binding so that if the value of destination is set or not, it wont throw error
        if let userSetDestination = destination {//this line only gets executed when the destination is not nil
            //use this because of the optionals weve used and the exclamation mark so we can
//            execute this only when the destination value is not null
            print("driving towards " + userSetDestination);
        }
    }
}
