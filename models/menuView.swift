//
//  menuView.swift
//  Loula's Taverna
//
//  Created by GUW06 on 2023-07-25.
//

import Foundation
import Firebase

class menuView: ObservableObject{
    @Published var list=[menuModel]()
    
    func getMezeData(){
        
        let db=Firestore.firestore()
        
        db.collection("Mezze").getDocuments { snapshot, error in
            
            if error == nil {
                
                    if let snapshot = snapshot{
                        DispatchQueue.main.async {
                            self.list = snapshot.documents.map({ item in
                                return menuModel(id: item.documentID, name: item["name"] as? String ?? "")
                            })
                        }
                }
            }
        }
    }
    
    func getSaladsData(){
        
        let db=Firestore.firestore()
        
        db.collection("Salads").getDocuments { snapshot, error in
            
            if error == nil {
                
                    if let snapshot = snapshot{
                        DispatchQueue.main.async {
                            self.list = snapshot.documents.map({ item in
                                return menuModel(id: item.documentID, name: item["name"] as? String ?? "")
                            })
                        }
                }
            }
        }
    }
    
    func getPlatesData(){
        
        let db=Firestore.firestore()
        
        db.collection("Plates").getDocuments { snapshot, error in
            
            if error == nil {
                
                    if let snapshot = snapshot{
                        DispatchQueue.main.async {
                            self.list = snapshot.documents.map({ item in
                                return menuModel(id: item.documentID, name: item["name"] as? String ?? "")
                            })
                        }
                }
            }
        }
    }
    
    func getSidesData(){
        
        let db=Firestore.firestore()
        
        db.collection("Sides").getDocuments { snapshot, error in
            
            if error == nil {
                
                    if let snapshot = snapshot{
                        DispatchQueue.main.async {
                            self.list = snapshot.documents.map({ item in
                                return menuModel(id: item.documentID, name: item["name"] as? String ?? "")
                            })
                        }
                }
            }
        }
    }
    
    func getDesertsData(){
        
        let db=Firestore.firestore()
        
        db.collection("Desserts").getDocuments { snapshot, error in
            
            if error == nil {
                
                    if let snapshot = snapshot{
                        DispatchQueue.main.async {
                            self.list = snapshot.documents.map({ item in
                                return menuModel(id: item.documentID, name: item["name"] as? String ?? "")
                            })
                        }
                }
            }
        }
    }
    
    func getCocktailsData(){
        
        let db=Firestore.firestore()
        
        db.collection("Cocktails").getDocuments { snapshot, error in
            
            if error == nil {
                
                    if let snapshot = snapshot{
                        DispatchQueue.main.async {
                            self.list = snapshot.documents.map({ item in
                                return menuModel(id: item.documentID, name: item["name"] as? String ?? "")
                            })
                        }
                }
            }
        }
    }
    
    func getwhiteWineData(){
        
        let db=Firestore.firestore()
        
        db.collection("WhiteWine").getDocuments { snapshot, error in
            
            if error == nil {
                
                    if let snapshot = snapshot{
                        DispatchQueue.main.async {
                            self.list = snapshot.documents.map({ item in
                                return menuModel(id: item.documentID, name: item["name"] as? String ?? "")
                            })
                        }
                }
            }
        }
    }
    
    func getredWineData(){
        
        let db=Firestore.firestore()
        
        db.collection("RedWine").getDocuments { snapshot, error in
            
            if error == nil {
                
                    if let snapshot = snapshot{
                        DispatchQueue.main.async {
                            self.list = snapshot.documents.map({ item in
                                return menuModel(id: item.documentID, name: item["name"] as? String ?? "")
                            })
                        }
                }
            }
        }
    }
    
    func getbrWineData(){
        
        let db=Firestore.firestore()
        
        db.collection("bubblesRose").getDocuments { snapshot, error in
            
            if error == nil {
                
                    if let snapshot = snapshot{
                        DispatchQueue.main.async {
                            self.list = snapshot.documents.map({ item in
                                return menuModel(id: item.documentID, name: item["name"] as? String ?? "")
                            })
                        }
                }
            }
        }
    }
    
    func getbeerAndSoftData(){
        
        let db=Firestore.firestore()
        
        db.collection("beers&softdrinks").getDocuments { snapshot, error in
            
            if error == nil {
                
                    if let snapshot = snapshot{
                        DispatchQueue.main.async {
                            self.list = snapshot.documents.map({ item in
                                return menuModel(id: item.documentID, name: item["name"] as? String ?? "")
                            })
                        }
                }
            }
        }
    }
    
    func gethpFoodData(){
        
        let db=Firestore.firestore()
        
        db.collection("Hpfood").getDocuments { snapshot, error in
            
            if error == nil {
                
                    if let snapshot = snapshot{
                        DispatchQueue.main.async {
                            self.list = snapshot.documents.map({ item in
                                return menuModel(id: item.documentID, name: item["name"] as? String ?? "")
                            })
                        }
                }
            }
        }
    }
    
    func gethpDrinksData(){
        
        let db=Firestore.firestore()
        
        db.collection("Hpdrinks").getDocuments { snapshot, error in
            
            if error == nil {
                
                    if let snapshot = snapshot{
                        DispatchQueue.main.async {
                            self.list = snapshot.documents.map({ item in
                                return menuModel(id: item.documentID, name: item["name"] as? String ?? "")
                            })
                        }
                }
            }
        }
    }
    
    func getFeatureData(){
        
        let db=Firestore.firestore()
        
        db.collection("Feature").getDocuments { snapshot, error in
            
            if error == nil {
                
                    if let snapshot = snapshot{
                        DispatchQueue.main.async {
                            self.list = snapshot.documents.map({ item in
                                return menuModel(id: item.documentID, name: item["name"] as? String ?? "")
                            })
                        }
                }
            }
        }
    }
    
}

