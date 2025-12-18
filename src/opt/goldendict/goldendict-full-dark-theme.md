# [GoldenDict-Full-Dark-Theme](https://github.com/yozhic/GoldenDict-Full-Dark-Theme)

## install

```sh
git clone --depth=1 https://github.com/yozhic/GoldenDict-Full-Dark-Theme
cd GoldenDict-Full-Dark-Theme
```

```sh
# Arch
sudo ln -sfn $(pwd)/GoldenDict/extras /usr/share/goldendict/extras
sudo ln -sfn $(pwd)/GoldenDict/icons /usr/share/goldendict/icons
ln -sfn $(pwd)/GoldenDict/fonts $HOME/.config/goldendict/fonts
mkdir -p $HOME/.config/goldendict/styles/Dark
ln -sfn $(pwd)/GoldenDict/styles/Dark/article-style.css $HOME/.config/goldendict/styles/Dark/article-style.css
ln -sfn $(pwd)/GoldenDict/styles/Dark/qt-style.css $HOME/.config/goldendict/styles/Dark/qt-style.css
```

```sh
# Windows 10
set "GD_HOME=%SCOOP%\apps\goldendict\current"
set "GD_DATA=%SCOOP%\apps\goldendict\current\portable"
rmdir /S /Q "%GD_HOME%\extras"
rmdir /S /Q "%GD_HOME%\icons"
rmdir /S /Q "%GD_DATA%\fonts"
rmdir /S /Q "%GD_DATA%\styles"
mklink /J "%GD_HOME%\extras" "%cd%\GoldenDict\extras"
mklink /J "%GD_HOME%\icons" "%cd%\GoldenDict\icons"
mklink /J "%GD_DATA%\fonts" "%cd%\GoldenDict\fonts"
mkdir "%GD_DATA%\styles\Dark"
mklink "%GD_DATA%\styles\Dark\article-style.css" "%cd%\GoldenDict\styles\Dark\article-style.css"
mklink "%GD_DATA%\styles\Dark\qt-style.css" "%cd%\GoldenDict\styles\Dark\qt-style.css"
```

### Optional

```sh
# Arch
rm $HOME/.config/goldendict/styles/Dark/article-style.css
cp $(pwd)/GoldenDict/styles/Dark/article-style.css $HOME/.config/goldendict/styles/Dark/article-style.css
```

```sh
# Windows 10
rm "%GD_DATA%\styles\Dark\article-style.css"
cp "%cd%\GoldenDict\styles\Dark\article-style.css" "%GD_DATA%\styles\Dark\article-style.css"
```

```css
/* Add to bottom of article-style.css */
@font-face {
  font-family: "Sarasa Term SC Nerd";
  src:
    local('Sarasa Term SC Nerd') format('truetype');
  font-weight: normal;
  font-style:  normal;
}

body
{
  font-family: "Sarasa Term SC Nerd", NotoSans;
  font-size:   10pt;
}

.dsl_t
{
  font-family: "Sarasa Term SC Nerd", NotoSerif;
}

.gdarticle
{
  border-radius: 0;
}

.gdactivearticle .gddictname {
  border: none;
}

.gddictname {
  border: none;
  border-radius: 0;
}
```
