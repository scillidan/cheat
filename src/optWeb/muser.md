# [Muser](https://github.com/jonshamir/muser)

![](https://img.shields.io/github/license/jonshamir/muser)

> Muser is a “smart” music visualizer, made by Jon Shamir. It is an experiment to test how maching learning technology can be used to enhance music visualization.  
> The idea for muser and the visualization itself is inspired by Wassily Kandinsky (1866-1944). Generally credited as the pioneer of abstract art, his work is well-known for its musical inspirations. Kandinsky associated specific tones and instruments to shapes and colors, thus “visualizing” a musical composition. [jonshamir/muser]

> Muser是由Jon Shamir制作的“智能”音乐可视化工具。它是一个实验，以测试机器学习技术如何用于增强音乐可视化。  
> Muser的构思和可视化本身受到瓦西里·康定斯基（1866-1944）的启发。康定斯基通常被认为是抽象艺术的先驱，他的作品因其音乐灵感而闻名。康定斯基将特定的音调和乐器与形状和颜色关联，从而“可视化”音乐作品。 [jonshamir/muser]

```sh
git clone --depth=1 https://github.com/jonshamir/muser
cd muser
```

[^1]

Create `requirements.txt`:

```
audioread==3.0.1
librosa==0.8.1
musicnn==0.1.0
numpy==1.16.6
pandas==1.1.5
scikit-learn==0.24.2
scipy==1.5.4
soundfile==0.12.1
tensorflow==2.3.4
resampy==0.2.2
ipython==7.16.3
```

```sh
conda create --name muser python=3.6.13
conda activate muser
pip install -r requirements.txt
pip install matplotlib
```

Edit `tools/tagger.py`, `playlist-creator.py`:

```py
# %matplotlib inline
```

```sh
python tools/tagger.py
pip install eyed3
python tools/playlist-creator.py
```

```sh
npm install
npm install --save-dev cross-env
npm run start
# set NODE_ENV=development && node tools/bundler.js
```

## reference

- #deepwiki [jonshamir/muser](https://deepwiki.com/jonshamir/muser)
- [batch_muser_tagger.py](https://gist.github.com/scillidan/92b36835451da63a247e287e6753ea5c)

[^1]: [Instruction how to install the package to solve dependency issues](https://github.com/jordipons/musicnn/issues/28)

[muser_batch-script.mp4](https://scillidan.github.io/media_cheat/optWeb/muser_batch-script.mp4)
