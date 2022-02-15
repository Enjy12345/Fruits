//
//  SettingsRowView.swift
//  Fruits
//
//  Created by enjykhaled on 15/02/2022.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - properties
    var name: String
    var content : String? = nil
    var linkLabel:String? = nil
    var linkDestination: String? = nil
    //MARK: - Body
    var body: some View {
        
        VStack {
            Divider().padding(.vertical , 4)
            HStack{
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                }else if (linkLabel != nil && linkDestination != nil ){
                    Link(linkLabel! , destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
                else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }//:Hstack

    }
}
//MARK: - Preview
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Enjy khaled")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "website",linkLabel: "SwiftUI" , linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
