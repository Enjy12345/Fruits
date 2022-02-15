//
//  FruitDetailView.swift
//  Fruits
//
//  Created by enjykhaled on 14/02/2022.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - Properties
    var fruit :Fruit
    //MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical , showsIndicators:  false){
                VStack(alignment : .center  , spacing : 20 ){
                    //Header
                    FruitHeaderView(fruit: fruit) 
                    VStack(alignment: .leading, spacing: 20) {
                       
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //Nutrients
                        FruitNutrientsView(fruit: fruit)
                        //SubHeading
                        Text("Learn more about \(fruit.title)".uppercased())
                            .foregroundColor(fruit.gradientColors[1])
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //Link
                        SourceLink()
                            .padding(.top,10)
                            .padding(.bottom , 40)
                    }//:vstack
                    .padding(.horizontal , 20)
                    .frame(maxWidth: 640 , alignment: .center)
                }//:vstack
                .navigationBarTitle(fruit.title , displayMode: .inline)
                .navigationBarHidden(true)
            }//:scroll
            .edgesIgnoringSafeArea(.top)
            
        }//:navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
//MARK: - Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
