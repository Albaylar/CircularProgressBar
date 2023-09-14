//
//  CircularView.swift
//  CircularProgressBar
//
//  Created by Furkan Deniz Albaylar on 14.09.2023.
//

import SwiftUI

struct CircularView: View {
    let lineWidth : CGFloat
    let backGroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                CircularShape().stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backGroundColor)
                CircularShape(percent: percentage).stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(foregroundColor)
                
            }
            .animation(.easeIn(duration: 1.0), value: percentage)
            .padding()

        }
        
    }
}

struct CircularView_Previews: PreviewProvider {
    static var previews: some View {
        CircularView(lineWidth: 10, backGroundColor: .green, foregroundColor: .blue, percentage: 50)
    }
}
