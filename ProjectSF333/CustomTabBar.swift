//
//  CustomTaabBar.swift
//  My Project
//
//  Created by saruttaya attramongkol on 30/12/2566 BE.
//

import SwiftUI

struct CustomTabBar: View {
    var body: some View{
        HStack{
            VStack{
                Image("game1").resizable().frame(width: 50, height: 50)
            }
            VStack{
                Image("game2").resizable().frame(width: 50, height: 50)
            }
            VStack{
                Image("game3").resizable().frame(width: 50, height: 50)
            }
//            .foregroundStyle(Color("Color_aero"))
//            Spacer()
        }
        .frame(width: 350, height: 70)
        .foregroundStyle(Color("Color_aero"))
        .background(Color("Color_yellow"))
        .cornerRadius(10)
        .padding()
    }
    
//    func cardThemeAdjuster(by offset: Int, symbol: String) -> some View {
//        Button(action: {
//            theme = currentTheme[offset].shuffled()
//        }) {
//            Image(symbol).resizable().frame(width: 50, height: 50)
//        }
    
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}


//ต้นฉบับ

//enum Tab: String, CaseIterable {
//    case house
//    case game1
//    case leaf
//}
//
//struct CustomTabBar: View {
//    @Binding var selectedTab: Tab
//    private var fillImage: String {
//        selectedTab.rawValue + ".fill"
//    }
//    
//    var body: some View {
//        VStack {
//            HStack{
//                ForEach(Tab.allCases, id: \.rawValue) { tab in
//                    Spacer()
//                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
//                        .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
////                        .foregroundStyle(Color("Color_aero"))
//                    Spacer()
//                }
//            }
//            .frame(width: nil, height: 60)
//            .background(.thinMaterial)
//            .cornerRadius(10)
//            .padding()
//        }
//    }
//}
//
//
//struct CustomTabBar_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTabBar(selectedTab: .constant(.house))
//    }
//}
//
