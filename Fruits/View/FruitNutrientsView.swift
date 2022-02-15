//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by enjykhaled on 14/02/2022.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - Properties
    var fruit: Fruit
    let nuitrents: [String] = ["Energy" , "Sugar" , "Fat" , "Protien" , "Vitamins" , "Minerals"]
    //MARK: - Body
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutritonal value per 100g"){
                ForEach(0..<nuitrents.count,id:\.self) { item in
                    Divider().padding(.vertical , 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nuitrents[item])
                        }//:group
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                        
                    }//:Hstack
                }
            }//:DisclosureGroup
        }//:Box
    }
}
//MARK: - Preview
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
