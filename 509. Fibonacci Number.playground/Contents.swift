import UIKit

func fib(_ n: Int) -> Int {
    return recursiveFib(n)
}

private func recursiveFib(_ n: Int) -> Int {
    if n <= 0 {
        return n
    }
    return abs(recursiveFib(n-1) + recursiveFib(n-2))
}

fib(2)
fib(3)
fib(4)
