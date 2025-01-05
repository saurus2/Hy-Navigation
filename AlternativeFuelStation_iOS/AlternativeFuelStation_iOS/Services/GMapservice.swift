//
//  GMapservice.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import Foundation
import GoogleMaps

class GMapservice {
    func fetchNearbyPlaces(latitude: Double, longitude: Double, radius: Int, completion: @escaping ([String: Any]?) -> Void) {
        let baseURL = "https://maps.googleapis.com/maps/api/place/nearbysearch/json"
        let apiKey = "AIzaSyAMiG8AViwFVGsDis28K2qmKtJldcDVork"
        let urlStr = "\(baseURL)?location=\(latitude),\(longitude)&radius=\(radius)&key=\(apiKey)"
        
        guard let url = URL(string: urlStr) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in guard let data = data, error == nil else {
            print("Error fetching places: \(error!)")
            completion(nil)
            return
        }
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    completion(json)
                }
            } catch {
                print("JSON Parsing error: \(error)")
                completion(nil)
            }
        }.resume()
    }
}
