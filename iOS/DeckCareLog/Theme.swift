import SwiftUI

/// Unique palette for Deck Care Log: cedar & varnish.
enum Theme {
    static let background = Color(hex: "#2E2A22")
    static let accent = Color(hex: "#B98A46")
    static let cardBackground = Color(hex: "#2E2A22").opacity(0.06)
    static let textPrimary = Color.primary
    static let textSecondary = Color.secondary

    static var titleFont: Font { .system(.title2, design: .rounded).bold() }
    static var bodyFont: Font { .system(.body, design: .rounded) }
    static var captionFont: Font { .system(.caption, design: .rounded) }
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: s).scanHexInt64(&int)
        let r = Double((int >> 16) & 0xFF) / 255.0
        let g = Double((int >> 8) & 0xFF) / 255.0
        let b = Double(int & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
