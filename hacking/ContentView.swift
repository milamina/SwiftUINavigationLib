//
//  ContentView.swift
//  hacking
//
//  Created by hsaidi on 10/06/2023.
//

import FlowStacks
import SwiftUI

struct ContentView: View {
    var coordinator: ContactsHelpCoordinator
    var body: some View {
//        print(coordinator.routes.cal)
//        let start: Routes<Screen> = [.root(.home)]
//        let end: Routes<Screen> = [.root(.numberDetail(5))]
//        let steps = RouteSteps.calculateSteps(from: start, to: end)

        coordinator
//        let expectedSteps: [RouterState] = [
//            [
//                .root(-1, embedInNavigationView: true),
//            ],
//            [
//                .root(-1, embedInNavigationView: true),
//                .push(-2),
//            ],
//            [
//                .root(-1, embedInNavigationView: true),
//                .push(-2),
//                .push(-3),
//            ],
//            end,
//        ]
//        XCTAssertEqual(steps, expectedSteps)
//        print("Halima")
//        print(steps)
//
//        return coordinator
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coordinator: ContactsHelpCoordinator(routes: [.root(.numberDetail(3))]))
    }
}

//    }

// struct FeatureCoordinator: View {
//    @State var routes: Routes<Screen> = [.root(.home)]
//
//    var body: some View {
//        Router($routes) { screen, _ in
//            switch screen {
//                case .home:
//                    HomeView(onGoTapped: showNumberList)
//                case .numberList:
//                    NumberListView(onNumberSelected: showNumber, cancel: goBack)
//                case let .numberDetail(number):
//                    NumberDetailView(number: number, cancel: goBackToRoot)
//            }
//        }
//    }
//
//    private func showNumberList() {
//        routes.presentSheet(.numberList, embedInNavigationView: true)
//    }
//
//    private func showNumber(_ number: Int) {
//        routes.push(.numberDetail(number))
//    }
//
//    private func goBack() {
//        routes.goBack()
//    }
//
//    private func goBackToRoot() {
//        routes.goBackToRoot()
//    }
// }

// class coordinator: ObservableObject {
//    @Published var path = NavigationPath()
//    @Published var pages = .home
//
//    func goHome() {
//        path.removeLast(path.count)
//    }
//    func goToFirstView(title: String) {
//        path.append()
//    }
//
//    func goToSecondView(title: String) {}
//
//    func goToThirdView(title: String) {}
// }

// class coordinator: ObservableObject {
//    @Published var path = NavigationPath()
//    @Published var pages = .home
//
//    func goHome() {
//        path.removeLast(path.count)
//    }
//    func goToFirstView(title: String) {
//        path.append()
//    }
//
//    func goToSecondView(title: String) {}
//
//    func goToThirdView(title: String) {}
// }

// enum page: String, CaseIterable, Identifiable {
//    case home
//    case first
//    case second
//    case third
//
//    var id: String { self.rawValue }
// }
//
// struct FirstView: View {
//    var body: some View {
//        Text("first View")
//    }
// }
//
// struct SecondeView: View {
//    var body: some View {
//        Text("first View")
//    }
// }
//
// struct ThirdView: View {
//    var body: some View {
//        Text("first View")
//    }
// }
