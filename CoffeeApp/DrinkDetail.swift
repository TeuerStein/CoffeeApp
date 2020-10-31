//
//  DrinkDetail.swift
//  CoffeeApp
//
//  Created by OLEKSANDR SOKOLOV on 31.10.2020.
//

import SwiftUI

struct DrinkDetail: View {
    
    var drink: Drink
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(drink.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Rectangle()
                .frame(height: 80)
                .opacity(0.25)
                .blur(radius: 10)
            
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text(drink.name)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
                    .padding(.leading)
                    .padding(.bottom)
                Spacer()
            }
        }
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[1])
    }
}
