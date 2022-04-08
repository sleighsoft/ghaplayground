# GitHub Action Playground

## Manual tool setup

### Snyk

| OS    | Command                                |
| ----- | -------------------------------------- |
| MacOS | `brew tap snyk/tap; brew install snyk` |
| Linux | `brew tap snyk/tap; brew install snyk` |

#### Local execution

```bash
snyk iac test iac/
```

### Bridgecrew

| OS                    | Command                  |
| --------------------- | ------------------------ |
| MacOS, Linux, Windows | `pip install bridgecrew` |

#### Local execution

```bash
bridgecrew -d iac/ --download-external-modules=true
```