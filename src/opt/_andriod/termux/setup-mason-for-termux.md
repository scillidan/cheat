# [setup-mason-for-termux](https://github.com/Amirulmuuminin/setup-mason-for-termux)

## install

```sh
pkg install which
curl -o install-in-mason  https://raw.githubusercontent.com/Amirulmuuminin/setup-mason-for-termux/main/install-in-mason
chmod +x install-in-mason
./install-in-mason lua-language-server
./install-in-mason marksman
./install-in-mason stylua
./install-in-mason texlab
```

```sh
vim ./install-in-mason
```

```sh
# Modify this part
# Step 1: Install the package using apk
echo "Installing $PACKAGE_NAME..."
if pkg install -y "$PACKAGE_NAME"; then
  echo "$PACKAGE_NAME installed via pkg successfully."
elif command -v cargo >/dev/null 2>&1; then
  echo "Trying to install $PACKAGE_NAME via cargo..."
  if cargo install "$PACKAGE_NAME"; then
    echo "$PACKAGE_NAME installed via cargo successfully."
  else
    echo "Failed to install $PACKAGE_NAME via cargo."
    return 1
  fi
else
  echo "Failed to install $PACKAGE_NAME. Neither pkg nor cargo succeeded."
  return 1
fi
```

```sh
./install-in-mason tex-fmt
```
