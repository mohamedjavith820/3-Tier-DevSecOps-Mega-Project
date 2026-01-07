resource "aws_cloudwatch_log_group" "ecs_nginx" {
  name              = "/ecs/nginx"
  retention_in_days = 7
}
