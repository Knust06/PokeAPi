//
//  ContentView.swift
//  PokedexAPI
//
//  Created by user226741 on 9/26/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel : ViewModel
    var values = [10,20,30,50]
    @State private var selectedValue = 10
    
    var body: some View {
        VStack{
            NavigationView{
                
                VStack{
                    Section{
                        
                        Text("Selecionado: \(selectedValue)")
                        Picker("Pokemons na tela:", selection: $selectedValue){
                            ForEach(0..<100){
                                Text("\($0) pokemons")
                            }
                        }
                        .onChange(of: self.selectedValue) {_ in self.viewModel.fetchPokemons(urlAddr: "https://pokeapi.co/api/v2/pokemon?limit=\(selectedValue)&offset=0")  }
                        
                            VStack{
                                List {
                                    ForEach(viewModel.items, id:\.name){item in
                                        VStack{
                                            Text("\(item.name)")
                                        }
                                    }
                                    
                                }
                            }
                        
                    }
                    
                    
                    
                    
                    .navigationTitle("Pokemons")
                    
                    .toolbar {
                        
                        ToolbarItem(placement: .navigationBarTrailing){
                            Button{
                                self.viewModel.fetchPokemons(urlAddr: "https://pokeapi.co/api/v2/pokemon?limit=\(selectedValue)&offset=0")
                            } label: {
                                Label("Next", systemImage: "plus")
                            }
                        }//ToolbarItem
                        
                        
                    }//toolbar
                }
            }
            
        }
        
        
        
    }
    
    
}
