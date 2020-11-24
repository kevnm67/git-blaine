import Foundation

// MARK: -

public extension Date {

    // MARK: Math

    /// Adds the given number of days (postive or negative) to the date.
    ///
    /// - Parameter value: Number of days to add.
    /// - Returns: Date or nil.
    func addingDays(_ value: Int) -> Date? {
        Calendar.current.date(byAdding: .day, value: value, to: self)
    }
}

public extension String {
    var withoutSpacesAndNewLines: String {
        replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "\n", with: "")
    }
}

// MARK: Start

let name = "Blaine  \n        D"
let today = Date()

print("hey \(name.withoutSpacesAndNewLines) 👋")
print("Did you know I'm fluent in date math?")
print("Today is \(today.description) - 11 \n= \(today.addingDays(-11)!)")
