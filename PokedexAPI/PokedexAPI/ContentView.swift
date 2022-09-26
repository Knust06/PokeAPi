//
//  ContentView.swift
//  PokedexAPI
//
//  Created by user226741 on 9/26/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel : ViewModel
    
    
    var body: some View {
        VStack{
            NavigationView{
                List {
                    ForEach(viewModel.items, id:\.name){item in
                        VStack{
                            Text("\(item.name)")
                        }
                    }
                }
                
            }
            
        }
        
       
        
    }
    
}

struct ButtonsTestView : View{
    
    var body: some View{
        
        
        Button("Next"){
            ViewModel().fetchPokemons()
            
        }
        
    }
