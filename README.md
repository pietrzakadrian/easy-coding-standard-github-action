## Easy Coding Standard GitHub Action

Implementation [easy-coding-standard](https://github.com/easy-coding-standard/easy-coding-standard) for GitHub Actions.

### Example

- Contents of file `.github/workflows/ecs.yml`:

```yml
name: lint
on: [push]
jobs:
  ecs:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      - name: Easy Coding Standard
        uses: pietrzakadrian/easy-coding-standard-github-action@v2.0.2
        with:
          config: ecs.php #configuration file
          directories: src tests #list of directories to check (optional)
```

### Reason for making

- [zingimmick/ecs-action](https://github.com/marketplace/actions/easy-coding-standard-action) is deprecated, because it uses [easy-coding-standard-prefixed](https://github.com/deprecated-packages/easy-coding-standard-prefixed).
- [Juhlinus/ecs-action](https://github.com/marketplace/actions/easy-coding-standard-github-action) and [yaraku/ecs-action](https://github.com/marketplace/actions/yaraku-easy-coding-standard-github-action) does not allows to pass the configuration file.
