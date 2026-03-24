variable "project_name" {
  default = "project ALPHA resource"
}

variable "default_tags" {
default = {
    company = "TechCorp"
    managed_by = "terraform"
}
}

variable "environment_tags" {
    default = {
        Environment = "production"
        cost_center = "cc-123"
    }
  
}

variable "bucket_name" {
  default = "mypredominantbucket6543210"

}

variable "allowed_ports" {
    default = "80,443,8080,3306"
  
}

variable "instance_sizes" {
    default = {
        dev = "t2.micro"
        staging = "t3.micro"
        prod = "t3.large"
    }
  
}

variable "Environment" {
    default = "Dev"
  
}

variable "instance_type" {
    default = "t2.micro"
  
validation {
    condition = length(var.instance_type ) >= 2 && length(var.instance_type) <= 20
    error_message = "instance type must be between 2 and 20 characters"  
}

validation {
    condition = can(regex ("^t[2-3]\\.", var.instance_type))
    error_message = "instance type must start with t2 or t3"

  
}
}

variable "backup_name" {
    default = "daily_backup"

    validation {
        condition = endswith(var.backup_name, "_backup")
        error_message = "Backup name must end with '_backup'"
      
    }
  
}

variable credentials {
  default = "xygdjjjs"
  sensitive = true
}

 variable "user_locations" {
   default = ["us-east-1", "us-west-1", "us-east-1"]
 }

 variable "default_locations" {
    default = ["us-east-1"]
   
 }

 variable "monthly_costs" {
    default = [-50, 100, 75, 200]
   
 }
