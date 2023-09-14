//
//  ContentView.swift
//  CircularProgressBar
//
//  Created by Furkan Deniz Albaylar on 14.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State var firstpercentage : Double = 0
    @State var secondpercentage : Double = 0
    @State var thirdpercentage : Double = 0
    
    var body: some View {
        ZStack {
            CircularView(lineWidth: 40, backGroundColor: Color.blue.opacity(0.2), foregroundColor: Color.blue, percentage: firstpercentage)
                .frame(width: 350,height: 350)
                .onTapGesture {
                    if self .firstpercentage == 0 {
                        self.firstpercentage = 50
                    }else {
                        self.firstpercentage = 0
                    }
                }
            CircularView(lineWidth: 40, backGroundColor: Color.blue.opacity(0.2), foregroundColor: Color.red, percentage: secondpercentage)
                .frame(width: 260,height: 260)
                .onTapGesture {
                    if self .secondpercentage == 0 {
                        self.secondpercentage = 75
                    }else {
                        self.secondpercentage = 0
                    }
                }
            CircularView(lineWidth: 40, backGroundColor: Color.blue.opacity(0.2), foregroundColor: Color.gray, percentage: thirdpercentage)
                .frame(width: 170,height: 170)
                .onTapGesture {
                    if self .thirdpercentage == 0 {
                        self.thirdpercentage = 100
                    }else {
                        self.thirdpercentage = 0
                    }
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
