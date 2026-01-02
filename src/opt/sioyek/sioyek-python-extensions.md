# [sioyek-python-extensions](https://github.com/ahrm/sioyek-python-extensions)

## install

```sh
git clone --depth=1 https://github.com/ahrm/sioyek-python-extensions
python -m pip install sioyek
```

### [embed_annotations](https://github.com/ahrm/sioyek-python-extensions?tab=readme-ov-file#-embed_annotations)

```sh
new_command _embed_annotations python -m sioyek.embed_annotations "%{sioyek_path}" "%{local_database}" "%{shared_database}" "%{file_path}"
```

### [import_annotations](https://github.com/ahrm/sioyek-python-extensions?tab=readme-ov-file#-import_annotations)

```sh
new_command _import_annotations python -m sioyek.import_annotations "%{sioyek_path}" "%{local_database}" "%{shared_database}" "%{file_path}"
```

### [remove_annotation](https://github.com/ahrm/sioyek-python-extensions?tab=readme-ov-file#-remove_annotation)

```sh
new_command _remove_annotations python -m sioyek.remove_annotation "%{sioyek_path}" "%{local_database}" "%{shared_database}" "%{file_path}" "%{selected_rect}"
```
