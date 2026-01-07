# ---------- SNS TOPIC ----------
resource "aws_sns_topic" "ecs_alerts" {
  name = "ecs-nginx-alerts"
}

# ---------- EMAIL SUBSCRIPTION ----------
resource "aws_sns_topic_subscription" "email" {
  topic_arn = aws_sns_topic.ecs_alerts.arn
  protocol  = "email"
  endpoint  = "your-email@example.com"
}
