//
//  ContentView.swift
//  Shared
//
//  Created by lory on 2021/12/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("代办(Todo)")
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("代办(Todo)")
                }.tag(0)

            Text("问题(Issues)")
                .tabItem {
                    Image(systemName: "star")
                    Text("问题(Issues)")
                }.tag(1)
            
            Text("日志(UpdateLog)")
                .tabItem {
                    Image(systemName: "star")
                    Text("日志(UpdateLog)")
                }.tag(2)
            
            Text("简讯(News)")
                .tabItem {
                    Image(systemName: "star")
                    Text("简讯(News)")
                }.tag(3)
            
            Text("关于(AboutUs)")
                .tabItem {
                    Image(systemName: "star")
                    Text("关于(AboutUs)")
                }.tag(4)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
