import Foundation

struct EntryEntry: Identifiable, Codable, Equatable {
    var id: UUID = UUID()
    var date: Date
    var maintenanceType: String
    var notes: String = ""
    var createdAt: Date = Date()
}
