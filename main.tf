variable "filename" {
  type        = string
  description = "Filename of the file to find mime-type"
}

variable "custom_types" {
  type        = map(string)
  description = "Map of strings to support custom mime-types. Key = file extension, Value = mime-type"
  default     = {}
}

locals {
  joined_maps = merge(local.extension_to_mime, var.custom_types)
}

output "mimetype" {
  value = local.joined_maps[split(".", var.filename)[length(split(".", var.filename)) - 1]]
  description = "mime-type of the provided file."
}