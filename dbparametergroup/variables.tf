variable "name" {
  description = "Name of the parameter group"
  default = "raja1"
}

variable "family" {
  description = "The family of the parameter group"
  default = "postgres13"
}

variable "parameter" {
  description = "List containing map of parameters to apply"
  type        = list(map(any))
  default     =[
    {
      name  = "wal_keep_size"
      value = 10240
    },
    {
      name  = "auto_explain.log_min_duration"
      value = 250
      
    }
    ,
    {
      name  = "auto_explain.log_analyze"
      value = 1
      
    },
    {
      name  = "auto_explain.log_nested_statements"
      value = 1
      
    },
    {
      name  = "log_min_duration_statement"
      value = 250
      
    },
    {
      name  = "shared_preload_libraries"
      value = "auto_explain"
      
    },
    {
      name  = "plan_cache_mode"
      value = "force_custom_plan"
      
    },
    {
      name  = "random_page_cost"
      value = 1.1
      
    },
    {
      name  = "shared_buffers"
      value = 16
      
    },
    {
      name  = "effective_cache_size"
      value = 20480
      
    },
    {
      name  = "work_mem"
      value = 64
      
    },
    {
      name  = "maintenance_work_mem"
      value = 2048
      
    }
  ]
}




variable "tags" {
  description = "Map of tags to assign to resources"
  type        = map(string)
  default     = {}
}