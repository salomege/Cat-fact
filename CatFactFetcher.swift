//
//  CatFactFetcher.swift
//  Cat facts
//
//  Created by salome on 20.11.23.
//

CatFactsFetcher.swift:import Foundation

public class CatFactsFetcher {
    public static func fetch(completion: @escaping (Result<CatFactResponse, Error>) -> Void) {
        guard let url = URL(string: "https://catfact.ninja/facts?limit=1") else {
            completion(.failure(NSError(domain: "CatFactsFetcher", code: 0, userInfo: nil)))
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? NSError(domain: "CatFactsFetcher", code: 0, userInfo: nil)))
                return
            }

            do {
                let decoder = JSONDecoder()
                let catFactResponse = try decoder.decode(CatFactResponse.self, from: data)
                completion(.success(catFactResponse))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }   
