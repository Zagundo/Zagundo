### Architecture Overview

- **UI**: SwiftUI with `TabView` for Identify, Describe, Journal, Learn
- **Data**: SwiftData (or GRDB) for local persistence; iCloud backup roadmapped
- **ML**: Core ML + Vision for embeddings; retrieval over on-device index; re-rank with priors
- **Services**: Vocabulary, ML identifier, Location/Weather, Export
- **Resources**: `vocabulary.json` embedded; Assets catalog for UI

### Modules
- `App`: Entry, RootView
- `Features`: Identify, Describe, Journal, Learn
- `Services`: Vocabulary, ML, Exports, Location
- `Models`: Observations (Darwin Core–inspired), Traits

### Data Model Sketch
- `Observation`: id, time, location, context, evidence (photos/sketches/audio), traits, nlDescription, candidates, annotation

### Flows
- **Identify**: Capture photo/scan sketch → segment/embed → retrieve → re-rank → suggest → add traits → save observation
- **Describe**: Guided trait prompts → normalized trait vector → candidate species → tutorialized description
- **Journal**: List entries → detail with media → export (Darwin Core / iNaturalist)
- **Learn**: Lessons/quizzes with glossary links; spaced repetition

### Privacy & Safety
- On-device by default; visible disclaimer; no edibility claims; surface similar toxic species.
