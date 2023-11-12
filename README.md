# Orogene Apply

🥳Based on [orogene](https://github.com/orogene/orogene/tree/main) project.

>Orogene is a next-generation package manager for tools that use node_modules/, such as bundlers, CLI tools, and Node.js-based applications. It's fast, robust, and meant to be easily integrated into your workflows such that you never have to worry about whether your node_modules/ is up to date.
 
## Usage

1. Install dependencies:
```yaml
- name: Install dependencies
  uses: yakubique/orogene@v0.3.25
```

2. Install from different folder (folder with `package.json`)
```yaml
- name: Install dependencies
  uses: yakubique/orogene@v0.3.25
  with:
    root: "./packages/my-package"
```

3Install from different npm registry:
```yaml
- name: Install dependencies
  uses: yakubique/orogene@v0.3.25
  with:
    registry: "https://npm.on-premise.company"
```