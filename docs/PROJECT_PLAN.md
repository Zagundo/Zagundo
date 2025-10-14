### Project Plan: FloraGuide (iOS)

- **Goal**: Teach users to observe, describe, sketch, and correctly identify plants and fungi, building a durable journal and controlled-vocabulary literacy.
- **Scope (v1)**: Photo/Sketch ID stubs, description-first flow with vocabulary, journal, exports, safety features, and learn mode basics.

### Deliverables
- iOS app scaffold (SwiftUI, iOS 18) with tabs: Identify, Describe, Journal, Learn
- Controlled vocabulary JSON covering leaf, bark, flower, fruit, fungi
- Vocabulary loader service; ML identifier stub
- Documentation set (architecture, vocabulary, ML, exports, safety, onboarding)

### Milestones
- **MVP (Weeks 1–4)**
  - Project scaffold, Info.plist privacy
  - Vocabulary JSON + loader; Describe flow UI skeleton
  - Journal data model skeleton; export scaffolding
  - Photo/Sketch capture placeholders; safety banners
- **v1 (Weeks 5–8)**
  - Vision/ML embedding + retrieval (on-device first)
  - Trait-to-species matching with priors
  - Learn mode lessons and quizzes
  - Offline region packs; iCloud backup
- **v1.1+**
  - Look‑alike explainers; community validation queue; spaced repetition

### Risks & Mitigations
- **Species confusion**: Integrate look‑alike explanations and confidence indicators.
- **Privacy**: Default on-device processing; explicit opt-in for cloud.
- **UX overload**: Progressive disclosure; guided prompts; glossary tooltips.

### Success Metrics
- Top‑5 ID accuracy on curated validation set; task completion time; retention on Learn mode; export success rate.
