//
//  PageScheme.swift
//  Loula's Taverna
//
//  Created by GUW06 on 2023-07-12.
//Scheme for 1610 Page

import Foundation

struct Page: Identifiable, Equatable{
    let id = UUID()
    var imageUrl: String
    var index: Int
    var text: String
    
    static var sample = Page(imageUrl: "Image 13", index: 0, text: "Experience the ultimate in exclusivity at 1610, a hidden gem nestled within our restaurant. Imagine having an entire private room all to yourself, where you and your guests can revel in an unforgettable celebration. With the ability to accommodate up to 20 people, it's the perfect venue for bachelor parties, birthdays, and any occasion worth commemorating. Indulge in delectable cuisine as you order from our extensive menu, expertly prepared by our talented chefs. Our dedicated bartenders will craft both classic and custom cocktails, ensuring your drink preferences are perfectly catered to. To learn more about this extraordinary experience or to reserve your spot, simply give us a call at 604-255-3787, send us an email at opa@loulastaverna.com, or visit us in person and inquire with our manager. Elevate your celebrations to new heights at 1610.")
    
    static var listSample: [Page] = [
    Page(imageUrl: "Image 13", index: 0, text: "Experience the ultimate in exclusivity at 1610, a hidden gem nestled within our restaurant. Imagine having an entire private room all to yourself, where you and your guests can revel in an unforgettable celebration. With the ability to accommodate up to 20 people, it's the perfect venue for bachelor parties, birthdays, and any occasion worth commemorating. Indulge in delectable cuisine as you order from our extensive menu, expertly prepared by our talented chefs. Our dedicated bartenders will craft both classic and custom cocktails, ensuring your drink preferences are perfectly catered to. To learn more about this extraordinary experience or to reserve your spot, simply give us a call at 604-255-3787, send us an email at opa@loulastaverna.com, or visit us in person and inquire with our manager. Elevate your celebrations to new heights at 1610."),
    Page(imageUrl: "Image 11", index: 1, text: ""),
    Page(imageUrl: "Image 15", index: 2, text: ""),
    Page(imageUrl: "Image 12", index: 3, text: ""),
    Page(imageUrl: "Image 14", index: 4, text: ""),
    ]
}
