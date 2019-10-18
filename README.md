# docker-pyinstaller-arm

**seboh/pyinstaller-arm32v7** allows you to easily compile Python applications to binaries files for devices which uses arm architectures like Raspberry Pi.

## Tags

Current available tags:

- python-3.8.0
- python-3.7.4
- python-3.6.9

## Usage

### Commandline

To compile a Python application via commandline, make sure you already created a '*.spec' file, which is used by PyInstaller.

The following command will compile your project.

```
docker run -it --rm -v <path to your project>:/app seboh/pyinstaller-arm32v7:<tag> build
```

### GitLab CI

To use the image in GitLab CI you need to overwrite the entry point in the .gitlab-ci.yml as follows.

```
image: 
  name: seboh/pyinstaller-arm32v7:<tag>
  entrypoint: [""]
```