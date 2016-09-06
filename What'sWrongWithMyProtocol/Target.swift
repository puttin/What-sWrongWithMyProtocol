import Foundation

//comment either on the 'associatedtype OP' or the 'static func nextOperation(_:)' will build success
protocol RequestTarget: Equatable {
    associatedtype OP: OperationProcess
    
    static func nextOperation(_: AnyRandomAccessCollection<Operation<Self>>) -> Operation<Self>?
}

extension RequestTarget {
    static func nextOperation(operations: AnyRandomAccessCollection<Operation<Self>>) -> Operation<Self>? {
        return operations.first
    }
}
