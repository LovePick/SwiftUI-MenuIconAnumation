//
//  ContentView.swift
//  CoolMenuAnimation
//
//  Created by Supapon Pucknavin on 7/11/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State var isRotation = false
    @State var isHidden = false
    
    var body: some View {
        VStack(spacing: 14) {
            Rectangle()
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .rotationEffect(isRotation ? Angle(degrees: 48.0) : Angle(degrees: 0.0), anchor: .leading)
            
            Rectangle()
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .scaleEffect(x: isHidden ? 0 : 1,
                             y: isHidden ? 0 : 1,
                             anchor: .leading )
                .opacity(isHidden ? 0 : 1)
                
            
            Rectangle()
                .frame(width: 64, height: 10)
                .cornerRadius(4)
                .rotationEffect(isRotation ? Angle(degrees: -48.0) : Angle(degrees: 0.0), anchor: .leading)
            
        }
        .padding()
        .onTapGesture {
            withAnimation(.interpolatingSpring(stiffness: 300, damping: 15)) {
                isRotation.toggle()
                isHidden.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
