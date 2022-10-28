//
//  SetttingsRowView.swift
//  Fructus
//
//  Created by Iqbal Nur Haq on 29/10/22.
//

import SwiftUI

struct SetttingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil){
                    Text(content!)
                }else if(linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else{
                    EmptyView()
                }
                
            }
        }
    }
}

struct SetttingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SetttingsRowView(name: "Developer", content: "Jhon / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
