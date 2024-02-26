locals {
  name = "${var.project_name}-${var.environment}"
  # Getting first two availability zones
  az_names = slice(data.aws_availability_zones.azs.names,0,2)
}