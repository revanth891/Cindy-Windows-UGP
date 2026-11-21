# Cindy for Windows

Cindy is a floating Windows assistant that can read screen controls, move its own cursor, type into fields, and display replies beside the app in use. This undergraduate project asks which desktop actions can run consistently when the user changes language models.

For a request such as “Click the Back button,” the harness can resolve a named control and execute the action locally. When a request needs interpretation, a model can help choose the next action. The report traces both paths. Its benchmark covers ten routine requests that completed without a model call. The recorded desktop session shows the assistant in use.

**[Watch the demonstration](media/Cindy-UGP-Presentation.mp4) · [Read the report](docs/Cindy-Windows-UGP-Report.pdf) · [Open the illustrated setup guide](docs/Cindy-Windows-Setup-Guide.pdf)**

## Files

| File | What it contains |
| --- | --- |
| [Cindy.zip](source/Cindy.zip) | The supplied Windows 0.4.9 Recording edition source archive. Inside, `showcase/cindy/` contains the companion and cursor renderers, `showcase/onboarding/` and `showcase/panel/` contain the interface, and `showcase/tauri/` contains the agent runtime and native Windows helpers. |
| [Presentation MP4](media/Cindy-UGP-Presentation.mp4) | The narrated 14:15 presentation at 1920 × 1080, 60 fps. An illustrated introduction leads into the original desktop footage, where Cindy’s cursor, cards, and actions are visible. |
| [UGP report](docs/Cindy-Windows-UGP-Report.pdf) | A 15-page technical report covering request routing, tool execution, interface design, the backend-substitution experiment, and a guide to the implementation. |
| [Windows setup guide](docs/Cindy-Windows-Setup-Guide.pdf) | A five-page screenshot walkthrough for installing Cindy, connecting a provider, choosing a model, trying the shortcuts, and enabling Recording mode. |
| [Build preparation script](prepare-source.ps1) | Extracts the submitted ZIP and prepares the files needed to build the Windows installer. |
| [.gitattributes](.gitattributes) | Stores the MP4 using Git Large File Storage (LFS). |
| [.gitignore](.gitignore) | Keeps the local, extracted build tree out of Git. The supplied ZIP is the tracked source artifact. |
| [README.md](README.md) | This project index and the instructions for obtaining the video and preparing the source. |

## Get the video

The MP4 is about 129 MiB. On GitHub, open the video link above and use the download button. For a local copy, install Git LFS and run the following in your clone.

```sh
git lfs install --local
git lfs pull
```

## Install or build

If you already have the Windows 0.4.9 Recording installer, follow the illustrated setup guide. To include the floating companion and its replies in a recording, turn on **General → Recording mode** and capture that monitor in your recorder.

To build the installer, open PowerShell at the repository root and run the preparation script. It creates a local `build-source` directory.

```powershell
.\prepare-source.ps1
```

Open `build-source/Cindy/README.md` and follow **Build from source** in Git Bash from `build-source/Cindy/`. The resulting Windows installer is under `showcase/tauri/src-tauri/target/x86_64-pc-windows-msvc/release/bundle/nsis/` inside that tree.

The SHA-256 of the supplied source ZIP is `21e6f1e5930507c4f6d36dca7dc80d0c8073cac9abb19eb0c8c5d231d992b588`.
