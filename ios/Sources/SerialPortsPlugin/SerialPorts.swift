import Foundation

@objc public class SerialPorts: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
