output "jenkins_link" {
  value = formatlist("http://%s:%s/", aws_instance.JenkinsEC2.*.public_ip, "8080")
}