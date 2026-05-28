# Shopping Static Site - AWS DevOps Lab

This is a simple static shopping website for practicing:

- GitHub source repository
- AWS CodePipeline
- AWS CodeBuild
- AWS CodeDeploy
- Amazon EC2 Auto Scaling Group
- Application Load Balancer health checks
- Auto Scaling Lifecycle Hook
- Auto Scaling Warm Pool

## Local Preview

Open `index.html` in your browser.

## CodeDeploy Files

| File | Purpose |
|---|---|
| `appspec.yml` | Defines deployment destination and lifecycle scripts |
| `buildspec.yml` | Creates artifact for CodePipeline/CodeBuild |
| `scripts/install_dependencies.sh` | Installs Nginx |
| `scripts/start_server.sh` | Starts Nginx |
| `scripts/validate_service.sh` | Validates app health |

## Recommended ALB Health Check

| Setting | Value |
|---|---|
| Protocol | HTTP |
| Path | `/health.html` |
| Success code | `200` |

## Deployment Destination

CodeDeploy copies files to:

```txt
/var/www/html
```
