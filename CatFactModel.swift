//
//  CatFactModel.swift
//  Homework_21
//
//  Created by salome on 20.11.23.
//

public struct CatFact: Codable {
    public let fact: String
}

public struct CatFactResponse: Codable {
    public let data: [CatFact]
}
