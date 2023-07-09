import Foundation

public typealias Disposal = [Disposable]

public extension Disposal {
    func dispose() {
        forEach { disposable in
            disposable.dispose()
        }
    }
}

public final class Disposable {
    public let dispose: () -> Void

    public init(_ dispose: @escaping () -> Void) {
        self.dispose = dispose
    }

    deinit {
        dispose()
    }

    public func add(to disposal: inout Disposal) {
        disposal.append(self)
    }
}
