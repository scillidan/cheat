# [audiobookshelf](https://github.com/advplyr/audiobookshelf)

## install

[^1]

```sh
mkdir audiobookshelf
cd audiobookshelf
vim docker-compose.yml
# Copy from https://github.com/advplyr/audiobookshelf/blob/master/docker-compose.yml
```

```yaml
    volumes:
    	# Add media dirs on mount disk
      - /mnt/<mount_name>/audiobookshelf:/audiobooks
      - /mnt/<mount_name>/podcast:/podcasts
```

```sh
sudo docker compose up -d
```

## reference

- [Directory Structure](https://www.audiobookshelf.org/docs/#book-directory-structure)

[^1]: [Docker Compose](https://www.audiobookshelf.org/docs/#docker-compose-install)

![audiobookshelf](/_image/srv/audiobookshelf.png)
