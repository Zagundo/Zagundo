### ML Notes

- **Visual pipeline**: subject segmentation → image embedding (ViT/CLIP‑like) → ANN retrieval → re‑rank with priors and trait compatibility.
- **Traits**: normalize inputs to the controlled vocabulary; store as JSON alongside observations.
- **On-device**: quantize and compile to Core ML; prefer ANE; keep embeddings local.
- **Evaluation**: Top‑1/Top‑5; confidence calibration; geographic and seasonal breakdown; hard‑negative confusion sets.
- **Safety**: No edibility claims; show similar toxic species when confidence < threshold.
