//
//  ContentView.swift
//  My Project
//
//  Created by saruttaya attramongkol on 20/12/2566 BE.
//

import SwiftUI

import Foundation
import GLKit

import Charts
import UIKit

struct ContentView: View {
    
//    @State var index = 0
    @State private var selectedTab: Tab = .house

    
    var body: some View {
        
        VStack{
            welcomeText()
            dashbord()
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            CustomTabBar(selectedTab: $selectedTab)

            
        }
        .padding(.top)
        .background(Color("Color_cornflower").ignoresSafeArea(.all, edges: .all))
        
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

// Title game
struct welcomeText : View {
    var body: some View{
        VStack {
            HStack {
                Text("Welcome To")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal)
            HStack {
                Text("Game Addicted Life!")
                    .font(.system(size: 37, weight: .semibold, design: .rounded))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal)
        }
        HStack{
            
        }
        
    }
}

//Dashbord
struct dashbord : View {
    var body: some View{
        VStack{
            HStack{
                Text("Dashbord")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("Color_cornflower"))
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal)
            HStack{
                Text("Today : ")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .foregroundColor(Color("Color_cornflower"))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal)
            HStack{
            }
            showdate()
            HStack{
                Text("Score : ")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .foregroundColor(Color("Color_cornflower"))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal)
            HStack{
            }
            bar_scoreTotal()
            chart_score_game()

        }
        .background(Color("Color_nude"))
        .clipShape(Rectangle())
        .cornerRadius(15)
        .padding()
    }
}

// Date time
struct showdate : View {
    var body: some View{
        HStack{
            Text(Date().displayFormat)
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .foregroundColor(.white)
                .layoutPriority(1)
                .lineLimit(2)
                .padding()
            // left space
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
        }
//        .padding(.horizontal)
        .background(Color("Color_pink").opacity(0.5))
        .clipShape(Rectangle())
        .cornerRadius(15)
        .padding()
    }
}

extension Date {
    var displayFormat: String{
        self.formatted(
            .dateTime
                .year()
                .month(.wide)
                .day(.twoDigits)
                .day()
            )
    }
}

//Score Game

var scoreGame1 = 30
var scoreGame2 = 50
var scoreGame3 = 45

var scoreTotal = scoreGame1 + scoreGame1 + scoreGame1


//Score Total

struct bar_scoreTotal: View {
  
    var body: some View{

        HStack{
            Text("Score Total : \(scoreTotal) Point")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .foregroundColor(.white)
                .layoutPriority(1)
                .lineLimit(2)
                .padding()
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
        }
        .background(Color("Color_pink").opacity(0.5))
        .clipShape(Rectangle())
        .cornerRadius(15)
        .padding()
    }
}

//data dianary score

struct ValuePerCategory{
    var Category: String
    var value: Int
}

let data: [ValuePerCategory] = [
    .init(Category: "Game 1", value: scoreGame1),
    .init(Category: "Game 2", value: scoreGame2),
    .init(Category: "Game 3", value: scoreGame3)
]


//Score Game

struct chart_score_game: View {
    
    var body: some View{
        
// แยกกราฟแต่ละแท่ง(สามารถเปลี่ยนสีแต่ละแท่งได้)
//        Chart{
//            BarMark(
//                x: .value("Game", "Game1"),
//                y: .value("score", scoreGame1)
//            )
//            .foregroundStyle(Color("Color_cornflower").opacity(0.8))
//
//            BarMark(
//                x: .value("Game", "Game2"),
//                y: .value("score", scoreGame2)
//            )
//            .foregroundStyle(Color("Color_cornflower").opacity(0.8))
//
//            BarMark(
//                x: .value("Game", "Game3"),
//                y: .value("score", scoreGame3)
//            )
//            .foregroundStyle(Color("Color_cornflower").opacity(0.8))
//
//        }
//        .background(Color("Color_pink").opacity(0.5))
//        .clipShape(Rectangle())
//        .cornerRadius(15)
//        .padding()
        
        
        Chart(data, id: \.Category){ item in
            BarMark(
                x: .value("game", item.Category),
                y: .value("score", item.value)
            )
            
            .foregroundStyle(Color("Color_cornflower").opacity(0.8))
        }
        .background(Color("Color_pink").opacity(0.5))
        .clipShape(Rectangle())
        .cornerRadius(15)
        .padding()
        
    }
}


//Sample Score Game

