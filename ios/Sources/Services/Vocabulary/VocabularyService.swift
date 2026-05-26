import Foundation

public final class VocabularyService: @unchecked Sendable {
    public static let shared = VocabularyService()
    private var root: VocabularyRoot?
    private let decoder = JSONDecoder()

    private init() {
        _ = try? load()
    }

    @discardableResult
    public func load() throws -> VocabularyRoot {
        guard let url = Bundle.main.url(forResource: "vocabulary", withExtension: "json") else {
            throw NSError(domain: "VocabularyService", code: 1, userInfo: [NSLocalizedDescriptionKey: "vocabulary.json not found in bundle"])
        }
        let data = try Data(contentsOf: url)
        let loaded = try decoder.decode(VocabularyRoot.self, from: data)
        self.root = loaded
        return loaded
    }

    public func domain(_ key: VocabularyDomainKey) -> VocabularyDomain? {
        ensureLoaded()
        return root?.vocabularies[key.rawValue]
    }

    public func terms(domain key: VocabularyDomainKey, trait: String) -> [VocabularyTerm] {
        ensureLoaded()
        return root?.vocabularies[key.rawValue]?.attributes[trait] ?? []
    }

    public func search(term: String) -> [VocabularyTerm] {
        ensureLoaded()
        guard let root else { return [] }
        let needle = term.lowercased()
        return root.vocabularies.values.flatMap { $0.attributes.values }.flatMap { $0 }.filter { t in
            if t.label.lowercased().contains(needle) { return true }
            if t.id.lowercased().contains(needle) { return true }
            if let aliases = t.aliases, aliases.contains(where: { $0.lowercased().contains(needle) }) { return true }
            return false
        }
    }

    private func ensureLoaded() {
        if root == nil { _ = try? load() }
    }
}
