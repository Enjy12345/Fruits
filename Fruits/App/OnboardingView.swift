//
//  OnboardingView.swift
//  Fruits
//
//  Created by enjykhaled on 13/02/2022.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Proprties
    var fruits: [Fruit] = fruitData
    //MARK: - Body
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){
                item in
                FruitCardView(fruit: item)
                
              
            }
            
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical , 20)
    }
}
//MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
    }
}
