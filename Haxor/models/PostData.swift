//
//  PostData.swift
//  Haxor
//
//  Created by Azzo Hiro on 07/07/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}



//
//struct Results: Decodable {
//    let hits: [Post]
//    
//    
//}
//struct Post: Decodable, Identifiable {
//    var id: String {
//        return objectID
//    }
//    
//    let objectID: String
//    let title: String
//    let points: Int
//    let url: String
//}
