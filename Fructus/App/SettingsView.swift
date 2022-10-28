//
//  SettingsView.swift
//  Fructus
//
//  Created by Iqbal Nur Haq on 26/10/22.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: -PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    
    //MARK: -BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK: - SECTION 1
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                            
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }
                        
                    }
                    
                    
                    //MARK: -SECTION 2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        
                        SetttingsRowView(name: "Developer", content: "Jhon / Jane")
                        SetttingsRowView(name: "Design", content: "Robert Petras")
                        SetttingsRowView(name: "Compatibility", content: "IOS 14")
                        SetttingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SetttingsRowView(name: "Twitter", linkLabel: "@IqbalNurHaq", linkDestination: "apple.com")
                        SetttingsRowView(name: "SwiftUI", content: "2.0")
                        SetttingsRowView(name: "Version", content: "1.1.0")
                        
                        
                    }
                }
                .navigationBarTitle(
                    Text("Settings"),
                    displayMode: .large
                )
                .navigationBarItems(
                    trailing: Button(
                        action: {
                            presentationMode.wrappedValue.dismiss()
                        }
                    ){
                        Image(systemName: "xmark")
                    }
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
