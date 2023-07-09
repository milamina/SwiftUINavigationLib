//
//  NumberDetailView.swift
//  hacking
//
//  Created by hsaidi on 22/06/2023.
//

import SwiftUI

struct NumberDetailView: View {
    @StateObject var viewModel: NumberDetailViewModel

    var number: Int
    var cancel: () -> Void
    var body: some View {
        Text("Je suis le Number detail View : \(number)")
        Button {
            cancel()
        } label: {
            Text("backToHome")
        }
    }
}
