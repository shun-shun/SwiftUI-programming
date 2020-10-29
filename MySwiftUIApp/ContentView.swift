//
//  ContentView.swift
//  MySwiftUIApp
//
//  Created by しゅん on 2020/08/11.
//  Copyright © 2020 Shun Gondo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @State var pass = ""
    @State var flg = false
    
    var body: some View {
        VStack {
            Text("name:\(self.name)\n (pass:\(self.pass))")
                .font(.title)
            
            Form {
                Section(header: Text("Account").font(.headline)) {
                    TextField("Name", text:$name)
                    if flg {
                        TextField("Password", text: $pass)
                    } else {
                        SecureField("Password", text: $pass)
                    }
                }
                
                Section(header:Text("Check").font(.headline)) {
                    Toggle(isOn: $flg, label: {
                        Text("show password")
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
