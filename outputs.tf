resource "aws_ssm_parameter" "listerner" {
  name  = "/${var.project}/${var.environment}/central/alb/httpsListener"
  type  = "String"
  value = aws_lb_listener.https.arn
}

output "dns_name" {
  value = aws_lb.main.dns_name
}
