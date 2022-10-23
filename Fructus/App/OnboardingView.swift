//
//  OnboardingView.swift
//  Fructus
//
//  Created by Iqbal Nur Haq on 22/10/22.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: -PROPERTIES
    
    var fruits: [Fruit] = fruitData
    
    //MARK: -BODY
    var body: some View {
        TabView {
            ForEach(fruits[0..<5]){ item in
                FruitCardView(fruit: item)
            }
           
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
    }
}
