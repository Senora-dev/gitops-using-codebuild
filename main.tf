module "gitops" {
    source  = "Senora-dev/gitops/aws"
    version = "~>1.0.0"
    name = "myproject-ci"
    description = "This is our deplopyment project."
    github_repository = "https://github.com/Senora-dev/gitops-using-codebuild.git"
    branch = "main"
    github_event = "PULL_REQUEST_CREATED"
    buildspec_file = ".buildspec.yaml"

}
