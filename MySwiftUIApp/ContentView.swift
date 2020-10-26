//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by しゅん on 2020/08/11.
//  Copyright © 2020 Shun Gondo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var val:Date = Date()
    let f = DateFormatter()
    
    init() {
        f.timeStyle = .none
        f.dateStyle = .full
        f.locale = Locale(identifier: "ja_JP")
    }
    
    var body: some View {
        VStack {
            Text(f.string(from: val))
                .font(.title)
            
            Divider()
            
            DatePicker("Date", selection: $val, displayedComponents: .hourAndMinute)
            
            Divider()
            
            Spacer(minLength: 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
