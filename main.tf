module "gitops" {
    source = "../module"
    #version = 0.0.1
    name = "ci"
    description = "This is our deplopyment project."
    github_repository = "https://github.com/Senora-dev/gitops-using-codebuild.git"
    branch = "master"
    github_event = "PULL_REQUEST_CREATED"
    buildspec_file = ".buildspec.yaml"

}

#mention the users that they can use codebuild env vars which related to the github event (E.g. - user, PR number, etc.)