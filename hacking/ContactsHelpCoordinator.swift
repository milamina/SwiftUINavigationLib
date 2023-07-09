//
//  ContactsHelpCoordinator.swift
//  hacking
//
//  Created by hsaidi on 22/06/2023.
//

import FlowStacks
import Foundation
// import Observable
import SwiftUI

enum Screen {
    case home
    case numberList
    case numberDetail(Int)
}

struct ContactsHelpCoordinator: View {
//    @ObservedObject var model: ContactsHelpCoordinatorViewModel
    @State var routes: Routes<Screen>

    var body: some View {
        Router($routes) { screen, _ in
            switch screen {
            case .home:
                let viewModel = HomeViewModel()
                HomeView(viewModel: viewModel, onGoTapped: self.showNumberList)
            case .numberList:
                let viewModel = NumberListViewModel()
                NumberListView(viewModel: viewModel, onNumberSelected: { selectedNumbre in self.showNumber(selectedNumbre) }, cancel: self.goBack)
            case let .numberDetail(number):
                let viewModel = NumberDetailViewModel()
                NumberDetailView(viewModel: viewModel, number: number, cancel: self.goBackToRoot)
            }
        }
    }

    private func showNumberList() {
        routes.presentSheet(.numberList, embedInNavigationView: false)
    }

    private func showNumber(_ number: Int) {
        routes.push(.numberDetail(number))
    }

    private func goBack() {
        routes.goBack()
    }

    private func goBackToRoot() {
        routes.goBackToRoot()
    }
}

//    import SwiftUI
//    import Combine
//
//    // Enum to identify User flow screen Types
//    enum UserPage: String, Identifiable {
//        case users, profile
//
//        var id: String {
//            self.rawValue
//        }
//    }

//    final class UserFlowCoordinator: ObservableObject, Hashable {
//        @Published var page: UserPage
//
//        private var id: UUID
//        private var userID: Int?
//        private var cancellables = Set<AnyCancellable>()
//
//        let pushCoordinator = PassthroughSubject<UserFlowCoordinator, Never>()
//
//        init(page: UserPage, userID: Int? = nil) {
//            id = UUID()
//            self.page = page
//
//            if page == .profile {
//                guard let userID = userID else {
//                    fatalError("userID must be provided for profile type")
//                }
//                self.userID = userID
//            }
//        }
//
//        @ViewBuilder
//        func build() -> some View {
//            switch self.page {
//            case .users:
//                usersListView()
//            case .profile:
//                userDetailsView()
//            }
//        }
//
//        // MARK: Required methods for class to conform to Hashable
//        func hash(into hasher: inout Hasher) {
//            hasher.combine(id)
//        }
//
//        static func == (lhs: UserFlowCoordinator, rhs: UserFlowCoordinator) -> Bool {
//            return lhs.id == rhs.id
//        }
//
//        // MARK: View Creation Methods
//        private func usersListView() -> some View {
//            let viewModel = UsersListViewModel()
//            let usersListView = UsersListView(viewModel: viewModel)
//            bind(view: usersListView)
//            return usersListView
//        }
//
//        private func userDetailsView() -> some View {
//            let viewModel = UserDetailsViewModel(userID: userID ?? 0)
//            let userDetailsView = UserDetailsView(viewModel: viewModel)
//            return userDetailsView
//        }
//
//        // MARK: View Bindings
//        private func bind(view: UsersListView) {
//            view.didClickUser
//                .receive(on: DispatchQueue.main)
//                .sink(receiveValue: { [weak self] user in
//                    self?.showUserProfile(for: user)
//                })
//                .store(in: &cancellables)
//        }
//    }
//
//    // MARK: Navigation Related Extensions
//    extension UserFlowCoordinator {
//        private func showUserProfile(for user: User) {
//            pushCoordinator.send(UserFlowCoordinator(page: .profile, userID: user.id))
//        }
//    }
