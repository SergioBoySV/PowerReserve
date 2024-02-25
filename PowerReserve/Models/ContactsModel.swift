//
//  Messaging.swift
//  PowerReserve
//
//  Created by Sergio Villarreal on 2/24/24.
//

import Foundation
import SwiftUI
import Contacts
//hello


func fetchSpecificContacts() async{
    
    //Run this in the background
    
    //Get access to contacts store
    let store = CNContactStore()
    
    let keys = [CNContactGivenNameKey,CNContactPhoneNumbersKey] as [CNKeyDescriptor]
    
    let predicate = CNContact.predicateForContacts(matchingName: "Kate")
    
    do{
        let contacts = try store.unifiedContacts(matching: predicate, keysToFetch: keys)
    }catch{
        
    }
}


func fetchAllContacts() async {
    
    //Run this in the b-ground async
    
    //Get access to the Contacts store
    let store = CNContactStore()
    
    //Specify which data keys we want to fetch
    let keys = [CNContactGivenNameKey, CNContactPhoneNumbersKey] as [CNKeyDescriptor]

    //Create fetch request
    let fetchRequest = CNContactFetchRequest(keysToFetch: keys)
    
    //Call method to fetch all contacts
    do{
        try store.enumerateContacts(with: fetchRequest, usingBlock: { contact, result in
            print(contact.givenName)
            for number in contact.phoneNumbers{
                
                //print("- \(number.label): \(number.value.stringValue)")
                
                switch number.label{
                    
                case CNLabelPhoneNumberMobile:
                    print("- Mobile: \(number.value.stringValue)")
                case CNLabelPhoneNumberMain:
                    print("- Main: \(number.value.stringValue)")
                default:
                    print("- Other: \(number.value.stringValue)")
                    
                }
                
            }
        })
        
    }catch {
        
        //if errors catch here.
        print("Error")
        
    }
    
}
