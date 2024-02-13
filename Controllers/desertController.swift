//
//  desertController.swift
//  Loula's Taverna
//
//  Created by GUW06 on 2023-07-27.
//

import Foundation
import SwiftUI

class desertController: UIViewController{
    @IBOutlet weak var container: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let child=UIHostingController(rootView: desertUI())
        addChild(child)
        child.view.frame = container.bounds
        container.addSubview(child.view)
    }
   
}

