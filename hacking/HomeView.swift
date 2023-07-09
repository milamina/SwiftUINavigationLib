//
//  HomeView.swift
//  hacking
//
//  Created by hsaidi on 22/06/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel

    var onGoTapped: () -> Void
    var body: some View {
        VStack {
            Text("Je suis le Home")
            Button(action: onGoTapped, label: {
                Label {
                    Text("Next")
                } icon: {
                    Image(systemName: "star")
                }
            })
        }
    }
}
