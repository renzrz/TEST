//
//  AboutSyaratService.swift
//  qwe
//
//  Created by Lorenzo Lo on 23/10/20.
//

import Foundation
import UIKit

class AboutSyaratService {
    
    func get(name:(String), email:(String), image:(UIImage) , callBack:(AboutSyarat?) -> Void) {
        let dataAboutSyarat = [AboutSyarat(name: "qwe", email: "qweqwe@gmail.com", image: UIImage(named: "qwe")!)
        ]
        
        if let foundDataAboutSyarat = dataAboutSyarat.first(where: {$0.name == name}) {
            callBack(foundDataAboutSyarat)
        } else {
            callBack(nil)
        }
    }
}
