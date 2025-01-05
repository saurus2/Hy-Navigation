//
//  NRELService.swift
//  AlternativeFuelStation_iOS
//
//  Created by Choi Jihyeok on 1/5/25.
//

import Foundation

class NRELService {
    func fetchStationData(completion: @escaping ([HydrogenStation]?) -> Void) {
        let urlStr = "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?api_key=mCewwTIsGq1RAqMPeL3STTVqFfoD7LjFf6HMWtUL"
        guard let url = URL(string: urlStr) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in guard let data = data, error == nil else {
            print("Error fetching station data: \(error!)")
            completion(nil)
            return
        }
            do {
                let stations = try JSONDecoder().decode([HydrogenStation].self, from: data)
                completion(stations)
            } catch {
                print("Decoding error: \(error)")
                completion(nil)
            }
        }.resume()
    }
}
