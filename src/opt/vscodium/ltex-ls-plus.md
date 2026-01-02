# [LTEX+](https://github.com/ltex-plus/ltex-ls-plus)

## config

[^1]

1. VSCodium → Extension → Search and install `LTeX+`
2. Get `ltex-ls-plus-*-windows-x64.zip` from [releases](https://github.com/ltex-plus/ltex-ls-plus/releases)
3. Decompress it to `ltex-ls-plus\`
4. VSCodium → Settings → Open Settings (JSON) → Add:
    ```json
        "ltex.ltex-ls.path": "C:\\<full_path>\\ltex-ls-plus",
        "ltex.java.path": "C:\\<full_path>\\ltex-ls-plus\\jdk-21.0.5+11",
    ```
5. Restart VSCodium

[^1]: [First Alternative: Download the Offline Version of LTEX+](https://ltex-plus.github.io/ltex-plus/vscode-ltex-plus/installation-usage-vscode-ltex-plus.html#first-alternative-download-the-offline-version-of-ltex)
