//
//  ContentView.swift
//  ribandnobby
//
//  Created by AM Student on 9/24/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var isDragging = false
    @State var position = CGSize.zero
    
    var body: some View {
        ZStack {
            Image("space")
            
            Image("rib")
                .resizable()
                .frame(width: 200, height: 100)
                .offset(x: position.width, y: position.height)
                .animation(.linear(duration: 1), value: position)
                .gesture(
                    DragGesture()
                        .onChanged( { value in
                            position = value.translation
                            isDragging = true
                        })
                        .onEnded({ value in
                            position = value.translation
                            isDragging = false
                        }))
        }
    }
}

#Preview {
    ContentView()
}