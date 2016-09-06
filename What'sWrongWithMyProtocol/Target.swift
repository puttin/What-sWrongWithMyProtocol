import Foundation

//comment either on the 'associatedtype OP' or the 'static func nextOperation(from:)' will build success
protocol RequestTarget: Equatable {
    associatedtype OP: OperationProcess
    
    static func nextOperation(from _: AnyRandomAccessCollection<Operation<Self>>) -> Operation<Self>?
}

extension RequestTarget {
    static func nextOperation(from operations: AnyRandomAccessCollection<Operation<Self>>) -> Operation<Self>? {
        return operations.first
    }
}
