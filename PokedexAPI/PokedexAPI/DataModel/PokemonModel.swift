//
//  PokemonModel.swift
//  PokedexAPI
//
//  Created by user226741 on 9/26/22.
//

import Foundation


struct PokemonModel: Codable {
    
    var name : String = ""
    var url : String = ""
}

struct PokemonData : Codable{
    var count : Int = 0
   // var next : String = ""
    //var previous : String = ""
    var results : [PokemonModel] = []
}
