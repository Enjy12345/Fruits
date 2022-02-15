//
//  ContentView.swift
//  Fruits
//
//  Created by enjykhaled on 13/02/2022.
//

import SwiftUI

struct ContentView: View
{
    //MARK: - Properties
    var fruit : [Fruit] = fruitData
    @State private var isShowingSettings: Bool = false
    //MARK: - Body
    var body: some View {
        NavigationView{
            List {
                ForEach (fruit.shuffled()){
                    item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                   
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })//:button
                    .sheet(isPresented: $isShowingSettings){
                        SettingView()
                    }
            )
        }//:Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitData)
    }
}
