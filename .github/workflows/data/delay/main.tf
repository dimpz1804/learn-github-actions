resource "null_resource" "previous" {}

resource "time_sleep" "wait_30_seconds" {
  depends_on = [null_resource.previous]

  create_duration = "30s"
}

resource "null_resource" "next" {
  depends_on = [time_sleep.wait_30_seconds]
}

terraform { 
  cloud { 
    
    organization = "dimpy_test" 
    token = "jgRIQu8chBrXzQ.atlasv1.GHKCDfXdG4yykmNyPzESo5q0joDz9YZYlp1LtxQK4f06tyEzR2X3GMhwr2N9yyqZpMQ"

    workspaces { 
      name = "learn-terraform-github-actions" 
    } 
  } 
}
