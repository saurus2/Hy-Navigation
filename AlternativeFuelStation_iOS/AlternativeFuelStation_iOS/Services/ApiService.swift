//
//  ApiService.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import Foundation

class ApiServide {
    func fetchData(from url: URL, completion: @escaping (Data?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, _, error in guard let data = data, error == nil else {
            print("Error fetching data: \(error!)")
            completion(nil)
            return
            }
            completion(data)
        }.resume()
    }
}
