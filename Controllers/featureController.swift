//
//  featureController.swift
//  Loula's Taverna
//
//  Created by GUW06 on 2023-07-27.
//
import Foundation
import SwiftUI

class featureController: UIViewController{
    @IBOutlet weak var container: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let child=UIHostingController(rootView: featureUI())
        addChild(child)
        child.view.frame = container.bounds
        container.addSubview(child.view)
    }
   
}
