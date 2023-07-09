//
//  NumberListView.swift
//  hacking
//
//  Created by hsaidi on 22/06/2023.
//

import SwiftUI

struct NumberListView: View {
    @StateObject var viewModel: NumberListViewModel
    var onNumberSelected: (Int) -> Void
    var cancel: () -> Void
    var body: some View {
        VStack {
            List {
                ForEach(1 ... 8, id: \.self) { element in
                    Button {
                        onNumberSelected(element)
                    }
                    label: {
                        Label {
                            Text("Je suis \(element)")
                        } icon: {
                            Image(systemName: "circle")
                        }
                    }
                }
            }
            Button {
                cancel()
            } label: {
                Text("back")
            }
        }
    }
}
