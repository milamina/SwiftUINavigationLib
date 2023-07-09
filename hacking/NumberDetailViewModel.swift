//
//  NumberDetailViewModel.swift
//  hacking
//
//  Created by hsaidi on 22/06/2023.
//

import Foundation

final class NumberDetailViewModel: ObservableObject {
    @Published var user: User = .init(id: 1, name: "Halima")
}
