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
            TodolistView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("代办(Todo)")
                }.tag(0)

            IssuesView()
                .tabItem {
                    Image(systemName: "square.fill")
                    Text("问题(Issues)")
                }.tag(1)
            
            VersionsView()
                .tabItem {
                    Image(systemName: "star")
                    Text("日志(UpdateLog)")
                }.tag(2)
            
            NewsView()
                .tabItem {
                    Image(systemName: "square.fill")
                    Text("简讯(News)")
                }.tag(3)
            
            AboutUsView()
                .tabItem {
                    Image(systemName: "star")
                    Text("关于(AboutUs)")
                }.tag(4)
        }.padding(3)
         .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
