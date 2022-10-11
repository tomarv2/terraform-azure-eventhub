output "namespace_names" {
  description = "Name of Event Hub Namespace."
  value       = module.eventhub.namespace_names
}

output "namespace_ids" {
  description = "Id of Event Hub Namespace."
  value       = module.eventhub.namespace_ids
}

output "identity" {
  description = "Identity of Event Hub Namespace."
  value       = module.eventhub.identity
}

output "hub_ids" {
  description = "Identity of Event Hubs."
  value       = module.eventhub.hub_ids
}

output "hub_partition_ids" {
  description = "Partition id of Event Hubs."
  value       = module.eventhub.hub_partition_ids
}