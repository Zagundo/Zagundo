### FloraGuide iOS

#### Prereqs
- Xcode 16 (iOS 18 SDK)
- Homebrew (for XcodeGen): `brew install xcodegen`

#### Generate and open the project
```bash
cd ios
xcodegen generate
open FloraGuide.xcodeproj
```

#### First Run
- Select a simulator (iPhone 16 Pro) or a device.
- Build and run. You should see four tabs: Identify, Describe, Journal, Learn.

#### Resources
- `Resources/Vocabulary/vocabulary.json` contains the controlled vocabulary.
- `Sources/Services/Vocabulary/` contains loader and models.
- `Sources/Services/ML/` contains the visual identifier stub.
- Docs are in `../docs/`.

#### Next Steps
- Integrate a Core ML embedding model and ANN index.
- Build guided trait forms using the vocabulary service.
- Add Observation model with SwiftData and exports to Darwin Core and iNaturalist.
