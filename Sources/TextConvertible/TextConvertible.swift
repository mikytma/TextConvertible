import SwiftUI

public protocol TextConvertible {
  var text: Text { get }
}

public extension TextConvertible where Self: LosslessStringConvertible {
  var text: Text { .init(description) }
}

public extension TextConvertible where Self: View {
  var body: Text { text }
}

extension String: TextConvertible & View {}
extension Substring: TextConvertible & View {}
extension Character: TextConvertible & View {}
extension Unicode.Scalar: TextConvertible & View {}

extension Int: TextConvertible & View {}
extension Int8: TextConvertible & View {}
extension Int16: TextConvertible & View {}
extension Int32: TextConvertible & View {}
extension Int64: TextConvertible & View {}

extension UInt: TextConvertible & View {}
extension UInt8: TextConvertible & View {}
extension UInt16: TextConvertible & View {}
extension UInt32: TextConvertible & View {}
extension UInt64: TextConvertible & View {}

struct TextConvertible_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      VStack {
        String("String")
        Substring("Substring")
        Character("👋")
        Unicode.Scalar(128077)
      }
      VStack {
        Int(0)
        Int8(1)
        Int16(2)
        Int32(3)
        Int64(4)
      }
      VStack {
        UInt(5)
        UInt8(6)
        UInt16(7)
        UInt32(8)
        UInt64(9)
      }
    }
  }
}
