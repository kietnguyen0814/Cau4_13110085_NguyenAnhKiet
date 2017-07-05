//
//  Cau4.swift
//  Cau4_13110085_NguyenAnhKiet
//
//  Created by Kiet Nguyen on 7/5/17.
//  Copyright © 2017 Kiet Nguyen. All rights reserved.
//

import Foundation

class A {
    let pro1: String
    let pro2: String
    let pro3: Bool
    
    //Designated Initializer
    init(pro1: String, pro2: String, pro3: Bool) {
        self.pro1 = pro1
        self.pro2 = pro2
        self.pro3 = pro3
    }
    
    //Convinience Initializer
    
    convenience init (pro1: String, pro2: String){
        self.init(pro1: pro1, pro2: pro1, pro3: false)
    }
}

class B : A {
    let pro4: String
    
    //Designated Initializer
    init(pro1: String, pro2: String, pro3: Bool, pro4: String) {
        self.pro4 = pro4
        super.init(pro1: pro1, pro2: pro2, pro3: pro3)
    }
    
    //Convinience Initializer
    convenience init (pro4: String, pro3: Bool) {
        self.init(pro1: pro4, pro2: pro4, pro3: pro3, pro4: "")
    }
}

class C : B {
    let pro5: String
    var pro6: String?
    
    //Designated Initializer
    init(pro1: String, pro2: String, pro3: Bool, pro4: String, pro5: String, pro6: String?) {
        self.pro5 = pro5
        self.pro6 = pro6
        super.init(pro1: pro1, pro2: pro2, pro3: pro3, pro4: pro4)
    }
    
    //Convinience Initializer
    convenience init(pro5: String, pro6: String) {
        self.init(pro1: pro6, pro2: pro5, pro3: false, pro4: "", pro5: "", pro6: "")
    }
}

class D : C {
    var pro7: Int?
    
    //Designated Initializer
    init(pro1: String, pro2: String, pro3: Bool, pro4: String, pro5: String, pro6: String?, pro7: Int?) {
        self.pro7 = pro7
        super.init(pro1: pro1, pro2: pro2, pro3: pro3, pro4: pro4, pro5: pro5, pro6: pro6)
    }
    
    //Convinience Initializer
    convenience init () {
        self.init(pro1: "", pro2: "", pro3: false, pro4: "", pro5: "", pro6: "", pro7: 13110085)
    }
}
