//
//  IssuesView.swift
//  TodoApp
//
//  Created by lory on 2022/1/5.
//

import Foundation
import SwiftUI

struct IssuesDetail: View {
    let issues: Issues
    var body: some View {
        VStack {
            Spacer()
            Text(issues.description.markdownToAttributed())
                .font(.body)
            Spacer()
            Text(issues.date)
        }.navigationBarTitle(Text(issues.title), displayMode: .inline)
    }
}

struct IssuesView: View { 
    @State var resolved: Bool = false
    @State var issueslist: [Issues] = [Issues]()
    @State var showDetails = true
    
    var body: some View {
        NavigationView {
            if #available(iOS 15.0, *) {
                List {
                    Button(
                        action: { self.resolved.toggle() },
                        label: {
                            if self.resolved  {
                                Text("显示全部").foregroundColor( .orange)
                            } else {
                                Text("隐藏已解决项").foregroundColor( .orange)
                            }
                        }
                    )
                    ForEach(self.issueslist) { issues in
                        if !self.resolved || issues.resolved {
                            NavigationLink(destination: IssuesDetail(issues: issues)) {
                                HStack {
                                    if self.showDetails {
                                        Text(issues.title).foregroundColor( .blue)
                                            .font(.headline)
                                    }
                                }
                            }
                        }
                    }
                }
                .navigationBarTitle("Issues")
                .refreshable {
                    IssuesViewModel.getIssuesList { issueslist in
                        self.issueslist = issueslist
                    }
                }
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
