variable "github_event" {
    type = string
    default = "workflow_dispatch"
}

output "github_event" {
    value = var.github_event
}

data "external" "git_info" {
  program = ["bash", "${path.module}/get_git_info.sh"]
}

output "commit_message" {
  value = data.external.git_info.result["commit_message"]
}

output "author_email" {
  value = data.external.git_info.result["author_email"]
}
