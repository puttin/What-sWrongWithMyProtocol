import Foundation

class Operation<T: RequestTarget>: Foundation.Operation {
    let target: T
    
    init(target: T) {
        self.target = target
    }
}
