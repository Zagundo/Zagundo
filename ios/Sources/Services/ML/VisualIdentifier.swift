import Foundation
import CoreGraphics

public struct VisualCandidate: Sendable, Hashable {
    public let scientificName: String
    public let score: Double
}

public final class VisualIdentifier: @unchecked Sendable {
    public init() {}

    // Placeholder for future Core ML vision embedding
    public func embed(_ image: CGImage) async throws -> [Float] {
        // TODO: Integrate a Core ML model and Vision pipeline
        return []
    }

    // Placeholder retrieval over species embeddings
    public func identifyCandidates(from embedding: [Float], topK: Int = 5) async throws -> [VisualCandidate] {
        // TODO: Implement ANN retrieval and re-ranking with priors and traits
        return []
    }
}
