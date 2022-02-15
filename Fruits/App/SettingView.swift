//
//  SettingView.swift
//  Fruits
//
//  Created by enjykhaled on 15/02/2022.
//

import SwiftUI

struct SettingView: View {
    //MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    //MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                //MARK: - Section 1
                    GroupBox(label:
                    SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical , 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width:80 , height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat , sodium and calories. None have cholestrol.Fruits are sources of many essential nutrients.")
                                .font(.footnote)
                         
                        }//:Hstack
                    }//:GroupBox
                    
                //MARK: - Section 2
                    GroupBox(
                        label:SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical , 4 )
                        Text("If you wish , you can restart the application by toggle the switch imn this box. That way it starts the onboarding and you will see the welcome screen again.")
                            .padding(.vertical , 4)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn:$isOnboarding){
                            if isOnboarding {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                                
                                } else {
                                Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                //MARK: - Section 3
                    GroupBox(
                    label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingsRowView(name: "Developer", content: "Enjy Khaled")
                        SettingsRowView(name: "Designer", content: "Enjy Khaled")
                        SettingsRowView(name: "Compatibility", content: "IOS 14")
                        SettingsRowView(name:"Website",linkLabel: "SwiftUI MasterClass" ,linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name:"SwiftUI" , content: "2.0")
                        SettingsRowView(name:"Version" , content: "1.1.0")
                        
                    }//:GroupBox
                    
                }//:Vstack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        }))
                .padding()
            }//:Scrollview
        }//:Navigationview
    }
}
//MARK: - Preview
struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.dark)
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
