//
//  ReservationController.swift
//  Loula's Taverna
//
//  Created by GUW06 on 2023-07-12.
//

import Foundation
import UIKit
import SwiftUI

class ReservationController: UIViewController {
    
    @IBOutlet weak var reserveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reserveButton.clipsToBounds = true
        reserveButton.layer.cornerRadius = reserveButton.frame.height/2
    }

    @IBAction func urlRedirect(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.loulastaverna.com/reserve")! as URL, options: [:], completionHandler: nil)
    }
    
}
