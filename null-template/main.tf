resource "null_resource" "example1" {
}

resource "null_resource" "example2" {
  provisioner "local-exec" {
    when    = "destroy"
    command = "echo `date`; exit 1"
  }
}
