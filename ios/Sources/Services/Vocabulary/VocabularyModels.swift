import Foundation

public struct VocabularyTerm: Codable, Hashable, Sendable {
    public let id: String
    public let label: String
    public let aliases: [String]?
    public let description: String?
}

public struct VocabularyDomain: Codable, Sendable {
    public let attributes: [String: [VocabularyTerm]]
}

public struct VocabularyRoot: Codable, Sendable {
    public let version: String
    public let vocabularies: [String: VocabularyDomain]
}

public enum VocabularyDomainKey: String, CaseIterable {
    case leaf, bark, flower, fruit, fungi
}
