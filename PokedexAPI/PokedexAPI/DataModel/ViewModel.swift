//
//  ViewModel.swift
//  PokedexAPI
//
//  Created by user226741 on 9/26/22.
//

import Foundation

class ViewModel : ObservableObject {
    
    var urlAddr : String = "https://pokeapi.co/api/v2/pokemon?limit=10&offset=0"
    
    @Published var items : [PokemonModel] = []
    
    init () {
        fetchPokemons()
    }
    func fetchPokemons(){
            
            guard let url = URL(string: urlAddr) else {
                print("URL NOT FOUND")
                return
            }
            
           
            URLSession.shared.dataTask(with: url){ (data, res, error) in
                
                if error != nil {
                    print("error \(error!)")
                    return
                } //if
                
                do {
                    if let data  = data{
                        let result = try JSONDecoder().decode(PokemonData.self, from: data)
                        
                        self.items = result.results
                        print(" Count \(self.items.count) ")
                    }
                }// do
                catch {
                    print("fetch error \(error)")
                } // catch
                
            }.resume()
            
        }
}
