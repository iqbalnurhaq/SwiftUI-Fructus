//
//  ContentView.swift
//  Fructus
//
//  Created by Iqbal Nur Haq on 22/10/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: -PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruit: [Fruit] = fruitData
    
    
    //MARK: -BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruit.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing: Button(action: {isShowingSettings = true}) {
                    Image(systemName: "slider.horizontal.3")
                }
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitData)
    }
}
