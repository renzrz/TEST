//
//  AboutSyaratPresenter.swift
//  qwe
//
//  Created by Lorenzo Lo on 23/10/20.
//

import Foundation
import UIKit

protocol AboutSyaratViewDelegate: NSObjectProtocol {
    func displayAboutSyarat(name:(String), email: (String), image: (UIImage))
}

class AboutSyaratPresenter {
    private let aboutSyaratService:AboutSyaratService
    weak private var aboutSyaratViewDelegate : AboutSyaratViewDelegate?
    
    init(aboutSyaratService:AboutSyaratService){
        self.aboutSyaratService = aboutSyaratService
    }
    
    func setViewDelegate(aboutSyaratViewDelegate:AboutSyaratViewDelegate?){
        self.aboutSyaratViewDelegate = aboutSyaratViewDelegate
    }
    
    func aboutSyaratSelected(name:(String), email:(String), image:(UIImage)){

        aboutSyaratService.get(name: name, email: email, image: image) { [weak self] aboutSyarat in

            if let aboutSyarat = aboutSyarat {
                self?.aboutSyaratViewDelegate?.displayAboutSyarat(name: aboutSyarat.name, email: aboutSyarat.email, image: aboutSyarat.image)
            }
        }
    }
}
