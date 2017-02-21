//
//  Books.swift
//  MySampleApp
//
//  Created by Luke Worley on 2/19/17.
//
//

import AWSDynamoDB

class Book : AWSDynamoDBObjectModel, AWSDynamoDBModeling  {
    var Title:String?
    var Author:String?
    var Price:String?
    var ISBN:String?
    
    class func dynamoDBTableName() -> String {
        return "Book"
    }
    
    class func hashKeyAttribute() -> String {
        return "ISBN"
    }
}
