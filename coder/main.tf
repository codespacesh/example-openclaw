# OpenClaw Example - AI agent development for codespace.sh
# Consumes the dind template module with the openclaw image

variable "anthropic_api_key" {
  type      = string
  sensitive = true
  default   = ""
}

module "workspace" {
  source = "git::https://github.com/codespacesh/templates.git//dind/module"

  project_name = "example-openclaw"
  git_repos    = { "example-openclaw" = "https://github.com/codespacesh/example-openclaw" }
  image        = "ghcr.io/codespacesh/openclaw:latest"
  startup_hook = "/opt/coder-scripts/setup-openclaw.sh"

  services = {
    app = { port = 3000, public = true, healthcheck = true, healthcheck_path = "/" }
  }

  extra_env = {
    ANTHROPIC_API_KEY = var.anthropic_api_key
  }
}
