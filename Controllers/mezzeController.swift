//
//  mezzeController.swift
//  Loula's Taverna
//
//  Created by GUW06 on 2023-07-25.
//

import Foundation
import SwiftUI

class mezzeController: UIViewController{
    @IBOutlet weak var container: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let child=UIHostingController(rootView: mezzeUi())
        addChild(child)
        child.view.frame = container.bounds
        container.addSubview(child.view)
    }
   
}
