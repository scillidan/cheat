What is the difference between default.custom.yaml, user.yaml, weasel.custom.yaml in rime?

```md
Here's a more refined explanation of the differences between `default.custom.yaml`, `user.yaml`, and `weasel.custom.yaml` files in Rime, based on additional findings:

1. **default.custom.yaml**:
   - This file allows users to override settings from the default configuration (`default.yaml`).
   - It is suitable for global adjustments that apply across all input methods configured in Rime.
   - Changes here include keybindings, input styles, and other default behavior modifications.

2. **user.yaml**:
   - This file is specifically for personal customizations by the user, such as adding frequently used phrases or specific preferences.
   - It helps maintain individual custom settings without affecting other users or the overall system configuration.
   - Modifications in this file can affect any input method that a user operates.

3. **weasel.custom.yaml**:
   - This file serves as a customization layer specifically for the Weasel input method (a popular Pinyin input method in Rime).
   - Users make adjustments or fixes that only impact the Weasel schema, allowing for specific behavior modifications unique to this input method.
   - It ensures that settings applied here do not interfere with the default or broader user configurations.

Overall, each file has its unique purpose, supporting user-centric customization at different levels—global (default), individual (user), or schema-specific (weasel).
```

```md
以下是基于额外发现的 Rime 中 `default.custom.yaml`、`user.yaml` 和 `weasel.custom.yaml` 文件之间差异的更细致解释：

1. **default.custom.yaml**：
   - 此文件允许用户覆盖默认配置 (`default.yaml`) 中的设置。
   - 适用于在 Rime 中配置的所有输入法的全局调整。
   - 这里的更改包括键绑定、输入风格及其他默认行为的修改。

2. **user.yaml**：
   - 此文件专门用于用户的个人定制，比如添加常用短语或特定偏好。
   - 帮助维护个人自定义设置，而不影响其他用户或整体系统配置。
   - 此文件中的修改可以影响用户所操作的任何输入法。

3. **weasel.custom.yaml**：
   - 此文件作为 Weasel 输入法（Rime 中一种流行的拼音输入法）的定制层。
   - 用户可以进行调整或修复，这些只会影响 Weasel 模式，从而允许该输入法的特定行为修改。
   - 确保这里应用的设置不会干扰到默认或更广泛的用户配置。

总的来说，每个文件都有其独特的目的，支持不同层次的用户中心定制——全局（default）、个体（user）或模式特定（weasel）。
```