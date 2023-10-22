resource "local_file" "ansible_inventory" {
  content = "[master]\n${aws_instance.master_instance[0].name} ansible_host=${aws_instance.master_instance[0].access_ip_v4}\n\n[workers]\n${join("\n",
             formatlist(
               "%s ansible_host=%s",
               aws_instance.worker_instance.*.name, aws_instance.worker_instance.*.access_ip_v4
             ))}\n\n[all:vars]\nansible_python_interpreter=/usr/bin/python3\nansible_ssh_extra_args='-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'\nansible_ssh_private_key_file=${var.K8S_KEY_PAIR_LOCATION}/${var.K8S_KEY_PAIR}\nansible_user=ubuntu"

  file_permission = "0600"
  filename = "ansible_inventory"