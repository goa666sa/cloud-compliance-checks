# cloud-compliance-checks
A demo project for automated cloud compliance using AWS CloudFormation and OPA.
# Cloud Compliance Checks

This is a demo project showcasing how to integrate automated policy-as-code compliance checks into cloud infrastructure provisioning using:

- **AWS CloudFormation** (for infrastructure-as-code)
- **OPA (Open Policy Agent)** + Rego (for policy-as-code)
- **GitHub Actions** (for CI/CD policy automation)

### Project Structure
cloud-compliance-checks/
├── .github/workflows/ # CI/CD workflows
├── cloudformation/ # AWS CloudFormation templates
├── policies/ # OPA policy definitions
└── README.md

### Goals
- Prevent common cloud misconfigurations (e.g. public S3 buckets)
- Automate compliance enforcement in CI/CD pipelines
- Build a portfolio-ready GRC + Cloud Security demo

This project is a work-in-progress by [Astrid](https://github.com/goa666sa), aiming to bridge law, compliance, and cloud automation in the real world.
