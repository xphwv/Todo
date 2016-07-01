//
//  TodoTests.swift
//  TodoTests
//
//  Created by xupan on 16/6/15.
//  Copyright © 2016年 xphwv. All rights reserved.
//

import XCTest
@testable import Todo

class TodoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let urlStr="http://www.weather.com.cn/data/cityinfo/101010100.html";
        
        let url:NSURL=NSURL(string: urlStr)!;
        let request:NSURLRequest=NSURLRequest(URL: url);
        let session:NSURLSession=NSURLSession.sharedSession();
        let task = session.dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
            let string = NSString(data: data!, encoding: NSUTF8StringEncoding)
            print(string)
        })
        task.resume()
    }
    



    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
