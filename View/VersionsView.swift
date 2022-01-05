//
//  VersionsView.swift
//  TodoApp
//
//  Created by lory on 2022/1/5.
//

import Foundation
import SwiftUI

struct VersionsDetail: View {
    let version: Versions
    var body: some View {
        VStack {
            Text(version.updateContent)
                .font(.body)
            Spacer()
            Text(version.date)
                .frame(width: 320, height: 20)
        }.navigationBarTitle(Text(version.version), displayMode: .inline)
    }
}

struct VersionsView: View {
    @State var versionlist: [Versions] = [Versions]()
    @State var showDetails = true
    
    var body: some View {
        NavigationView {
            if #available(iOS 15.0, *) {
                List(self.versionlist) { versions in
                    NavigationLink(destination: VersionsDetail(version: versions)) {
                        HStack {
                            Text(versions.version)
                                .font(.headline)
                            if self.showDetails {
                                Text(versions.updateContent.split(separator: "\n").first ?? "").foregroundColor( .blue)
                            }
                        }
                    }
                }
                .navigationBarTitle("Update log")
                .refreshable {
                    VersionsViewModel.getVersionList { versionlist in
                        self.versionlist = versionlist
                    }
                }
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
