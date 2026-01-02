# [NXEngine-evo](https://github.com/nxengine/nxengine-evo)

> NXEngine-evo is an open-source, upgraded, and refactored game engine that recreates the original engine behind the indie platformer "Cave Story" (also known as Doukutsu Monogatari), originally developed by Daisuke "Pixel" Amaya. It is not a game itself, but an engine designed to run Cave Story using its original data files.  
> Key features and enhancements of NXEngine-evo include:  
> - **Port to SDL2** for modern system compatibility  
> - Proper widescreen support up to Full HD resolution  
> - Animated character portraits and modernized main menu  
> - Custom soundtrack and initial mod support  
> - Localization, force feedback, and versions for platforms like PlayStation Vita and Nintendo Switch  
> - Many gameplay bugfixes and optimizations for a smoother experience  
> - Open-source under the GPL license, encouraging community contribution and modding  
> NXEngine-evo maintains fidelity to the gameplay of the original Cave Story while adding quality-of-life features and modern compatibility. It remains a popular choice for playing or modifying Cave Story on modern platforms and with additional features.  [perplexity.ai]

> NXEngine-evo是一个开源的升级和重构的游戏引擎，重新创建了独立平台游戏《洞窟物语》（也称为Doukutsu Monogatari）背后的原始引擎，该游戏最初由雨田“Pixel”大辅开发。它本身不是一款游戏，而是一个旨在使用原始数据文件运行《洞窟物语》的引擎。  
> NXEngine-evo的主要功能和增强特性包括：  
> - **移植到SDL2** 以实现现代系统兼容性  
> - 适当的宽屏支持，最高可达全高清分辨率  
> - 动态角色肖像和现代化的主菜单  
> - 自定义音轨和初步的模组支持  
> - 本地化、震动反馈，以及针对PlayStation Vita和Nintendo Switch等平台的版本  
> - 许多游戏性bug修复和优化，以提供更流畅的体验  
> - 根据GPL许可证开源，鼓励社区贡献和模组制作  
> NXEngine-evo在保持《洞窟物语》原始游戏性的同时，增加了生活质量的功能和现代兼容性。它仍然是现代平台上玩或修改《洞窟物语》的热门选择，并附带额外的功能。 [perplexity.ai]

## Build local-data

```sh
# Arch
git clone --depth=1 https://github.com/nxengine/translations
cd translations
cp build-local.sh build-local.sh.bak
vim build-local.sh
```

```
# Comment them
# wget https://github.com/nxengine/tsc-converter/releases/download/v1.1/tsc.tar.gz
# tar -zxf tsc.tar.gz
# rm -f tsc.tar.gz
# 
# wget https://github.com/nxengine/nx-fontgen/releases/download/v1.3/fontbm.tar.gz
# tar -zxf fontbm.tar.gz
# rm -f fontbm.tar.gz

# rm -f fontbm
# rm -f fontbm.bin
# rm -f tsc
# rm -rf assets
# rm -rf lib
```

```sh
cd local
wget https://github.com/nxengine/tsc-converter/releases/download/v1.1/tsc.tar.gz
tar -zxf tsc.tar.gz
wget https://github.com/nxengine/nx-fontgen/releases/download/v1.3/fontbm.tar.gz
tar -zxf fontbm.tar.gz
```

```sh
mv <font.ttf> assets/
```

```sh
git clone --depth=1 https://github.com/nxengine/lang_chinese lang_chinese
cp lang_chinese/metadata lang_chinese/metadata.bak
vim lang_chinese/metadata
# Replace `unifont-10.0.06.ttf` to `ark-pixel-12px-proportional-zh_cn.ttf`
```

```sh
cd ..
./build-local.sh
```

## Build game

[^1]

```sh
git clone --depth=1 https://github.com/nxengine/nxengine-evo
cd nxengine-evo
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DPORTABLE=ON ..
make
cd ..
wget https://www.cavestory.org/downloads/cavestoryen.zip
unzip cavestoryen.zip
cp -r ../translations/local/data/lang/chinese/* CaveStory/data/
cp -r CaveStory/Doukutsu.exe CaveStory/data ./
build/nxextract
mkdir desk
cp -r build/nxengine-evo data desk/
desk/nxengine-evo
```

[^1]: [Building on Linux](https://github.com/nxengine/nxengine-evo/wiki/Building-on-Linux)

## annex

- [file_nxengine-evo](https://github.com/scillidan/file_nxengine-evo)
