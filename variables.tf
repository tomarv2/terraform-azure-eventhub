variable "teamid" {
  description = "Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
}

variable "eventhub_namespaces_config" {
  description = "Resource group configuration"
  type        = map(any)
}


variable "extra_tags" {
  description = "Additional tags to associate"
  type        = map(string)
  default     = {}
}

variable "hubs" {
  description = "A list of event hubs to add to namespace."
  type = list(object({
    name              = string
    partitions        = number
    message_retention = number
    consumers         = list(string)
    keys = list(object({
      name   = string
      listen = bool
      send   = bool
    }))
  }))
  default = []
}

#variable "capture_description" {
#  description = "Capture the streaming data in Event Hubs in an Azure Blob storage or Azure Data Lake Storage."
#  type = object({
#    variables = map(string)
#  })
#  default = null
#}