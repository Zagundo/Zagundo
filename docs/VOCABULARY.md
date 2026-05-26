### Controlled Vocabulary

This app ships with a controlled vocabulary spanning: **leaf**, **bark**, **flower**, **fruit**, and **fungi** traits. The canonical source is `ios/Resources/Vocabulary/vocabulary.json` and should be considered the single source of truth.

### Domains and Traits
- **Leaf**: arrangement, attachment, complexity, venation, margin, shape, apex, base, surface, persistence, stipules
- **Bark**: texture, color, pattern, features, thickness, aroma
- **Flower**: symmetry, sex, inflorescence, corolla_shape, perianth_fusion, ovary_position, color, bloom_time
- **Fruit**: type, dehiscence, texture, seed_features, shape, color, surface
- **Fungi**: hymenium_type, cap_shape, cap_surface, cap_margin, gill_attachment, gill_spacing, stipe, stipe_features, stipe_surface, bruising, latex, odor, taste, spore_print_color, habitat, substrate, season

Each trait value is a `VocabularyTerm` with fields: `id`, `label`, `aliases[]`, `description`.

### Editing Rules
- Prefer standard botanical/mycological terms; add `aliases` for common synonyms.
- Add concise `description` to teach users; keep neutral and non-edible guidance.
- Backward-compatible changes: only append new terms or non-breaking fields; bump `version` otherwise.

### Roadmap
- Add regional vernacular aliases and localization.
- Add image examples per term (Assets bundle) with short captions.
