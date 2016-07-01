//
//  TodoModuel.swift
//  Todo
//
//  Created by xupan on 16/6/20.
//  Copyright © 2016年 xphwv. All rights reserved.
//

import UIKit

class TodoModel: NSObject {
    var id:String
    var image:String
    var title:String
    var date:NSDate
    init(id:String,image:String,title:String,date:NSDate) {
        self.id=id;
        self.image=image;
        self.title=title;
        self.date=date;
    }
}
