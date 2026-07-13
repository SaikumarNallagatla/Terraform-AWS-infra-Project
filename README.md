# Terraform AWS Infrastructure Project

A hands-on DevOps learning project for provisioning AWS static-site infrastructure with Terraform and deploying it through GitHub Actions.

## Current status

This commit establishes only the repository scaffold. Terraform configuration, application resources, and CI/CD workflow code will be added and reviewed incrementally.

## Repository layout

```text
.
├── .github/workflows/       # GitHub Actions workflows (later)
├── bootstrap/               # One-time Terraform state-backend bootstrap
├── environments/dev/        # Development environment root module
├── modules/backend/         # Reusable Terraform state-backend module
├── modules/iam/             # Reusable IAM and GitHub OIDC module
├── modules/s3/              # Reusable S3 website module
└── scripts/                 # Small, documented helper scripts
```

## Working convention

Run Terraform from an environment directory such as `environments/dev`, not from the repository root. The `bootstrap` configuration is deliberately separate because the remote state backend must exist before an environment can use it.
