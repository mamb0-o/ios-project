//
//  secretController.swift
//  Loula's Taverna
//
//  Created by GUW06 on 2023-07-12.
//

import Foundation
import SwiftUI

class secretController: UIViewController {
    @IBOutlet weak var container: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let child=UIHostingController(rootView: secretCarousel())
        addChild(child)
        child.view.frame = container.bounds
        container.addSubview(child.view)
    }


}
