# Lightweight Docker image with a git-ftp

An extremely lightweight and well versioned Docker image with a [git-ftp](https://git-ftp.github.io/) - git powered FTP client.

## Usage

```yaml
image: octivi/git-ftp:1.6.0-alpine3.11

pipelines:
  default:
    - step:
        script:
          - git ftp push -v --auto-init --user "${FTP_USER}" --passwd "${FTP_PASSWORD}" "${FTP_DESTINATION}"
```
