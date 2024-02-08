# variable "projects" {
#   type        = set(string)
#   default     = ["test-project-1", "test-project-2", "test-project-3"]
# }

variable "projects" {
  type  = map(string)
  default = {
    "test-project-1-for-each" = "Test Project 1",
    "test-project-2-for-each" = "Test Project 2",
    "test-project-3-for-each" = "Test Project 3",
  }
}
variable "extra_tags" {
  type    = map(string)
  default = {
    "Team"      = "devops-first",
    "CreatedBy" = "terraform"
  }
}