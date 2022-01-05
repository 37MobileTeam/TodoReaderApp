//
//  NewsView.swift
//  TodoApp
//
//  Created by lory on 2022/1/5.
//

import Foundation
import SwiftUI

struct NewsDetail: View {
    let news: News
    var body: some View {
        VStack {
            Spacer()
            Text(news.news)
                .font(.body)
            Spacer()
            Text(news.date)
        }.navigationBarTitle(Text(news.theme), displayMode: .inline)
    }
}

struct NewsView: View {
    @State var newslist: [News] = [News]()
    @State var showDetails = true
    
    var body: some View {
        NavigationView {
            if #available(iOS 15.0, *) {
                List(self.newslist) { news in
                    NavigationLink(destination: NewsDetail(news: news)) {
                        HStack {
                            if self.showDetails {
                                Text(news.theme).foregroundColor( .blue)
                                    .font(.headline)
                            }
                        }
                    }
                }
                .navigationBarTitle("News")
                .refreshable {
                    NewsViewModel.getNewsList { newslist in
                        self.newslist = newslist
                    }
                }
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
