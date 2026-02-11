# OpenClaw Example - AI agent development for codespace.sh
# Consumes the dind template module with the openclaw image

variable "claude_code_oauth_token" {
  type      = string
  sensitive = true
  default   = ""
}

variable "anthropic_api_key" {
  type      = string
  sensitive = true
  default   = ""
}

module "workspace" {
  source = "git::https://github.com/codespacesh/templates.git//dind/module"

  project_name            = "example-openclaw"
  git_repos               = { "example-openclaw" = "https://github.com/codespacesh/example-openclaw" }
  image                   = "ghcr.io/codespacesh/openclaw:latest"
  claude_code_oauth_token = var.claude_code_oauth_token

  services = {
    app = { port = 3000, public = true, healthcheck = true, healthcheck_path = "/" }
  }

  extra_env = {
    ANTHROPIC_API_KEY = var.anthropic_api_key
  }
}
