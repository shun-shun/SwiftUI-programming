//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by しゅん on 2020/08/11.
//  Copyright © 2020 Shun Gondo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("[First]")
                    .font(.largeTitle)
//                    .frame(width:150)
//                    .border(Color.red, width: 2)
//                    .padding(10)
                Text("[Second]")
                .font(.largeTitle)
//                .frame(width:150)
//                .border(Color.red, width: 2)
//                .padding(10)
                
            }.frame(width: 300, height: 100)
                .border(Color.red, width: 2)
                .padding(10)
            
            HStack {
                Text("[Third]")
                    .font(.largeTitle)
//                    .frame(width:150)
//                    .border(Color.red, width: 2)
//                    .padding(10)
                Text("[Fourth]")
                .font(.largeTitle)
//                .frame(width:150)
//                .border(Color.red, width: 2)
//                .padding(10)
            }.frame(width: 300, height: 100)
            .border(Color.red, width: 2)
            .padding(10)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
