//
//  ContentView.swift
//  TapGestureSwiftUI
//
//  Created by Sandra Gomez on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var flag = true
    
    var body: some View {
        VStack {
            Text(message)
            Image(systemName: "star.fill")
                .font(.system(size: 200))
                .foregroundColor(flag ? .green : .red)
                .gesture(
                    TapGesture()
                        .onEnded({
                            flag.toggle()
                            if flag {
                                message = "Green star"
                            } else {
                                message = "Red star"
                            }
                        })
                )
        }
    }
}

#Preview {
    ContentView()
}
