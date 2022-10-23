//
//  ContentView.swift
//  Fructus
//
//  Created by Iqbal Nur Haq on 22/10/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: -PROPERTIES
    var fruit: [Fruit] = fruitData
    
    
    //MARK: -BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruit.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitData)
    }
}
