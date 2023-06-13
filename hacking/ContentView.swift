//
//  ContentView.swift
//  hacking
//
//  Created by hsaidi on 10/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello, world!")
                .navigationBarTitle("Navigation")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class coordinator: ObservableObject {
    @Published var path = NavigationPath()
    @Published var pages = .home
    
    func goHome() {
        path.removeLast(path.count)
    }
    func goToFirstView(title: String) {
        path.append()
    }

    func goToSecondView(title: String) {}

    func goToThirdView(title: String) {}
}

enum page: String, CaseIterable, Identifiable {
    case home, first, second, third
    
    var id: String {self.rawValue}
}

struct FirstView: View {
    var body: some View {
        Text("first View")
    }
}

struct SecondeView: View {
    var body: some View {
        Text("first View")
    }
}

struct ThirdView: View {
    var body: some View {
        Text("first View")
    }
}
