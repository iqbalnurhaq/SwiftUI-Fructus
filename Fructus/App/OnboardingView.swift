//
//  OnboardingView.swift
//  Fructus
//
//  Created by Iqbal Nur Haq on 22/10/22.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: -PROPERTIES
    
    //MARK: -BODY
    var body: some View {
        TabView {
            ForEach(0..<5){ item in
                FruitCardView()
            }
           
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
