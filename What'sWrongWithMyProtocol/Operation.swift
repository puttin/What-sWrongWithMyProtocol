import Foundation

class Operation<T: RequestTarget>: NSOperation {
    let target: T
    
    init(target: T) {
        self.target = target
    }
}
