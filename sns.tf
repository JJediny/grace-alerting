#######################
# Alerting SNS Topic  #
#######################

resource "aws_cloudformation_stack" "alerting_topic" {
  name          = "alerting-topic"
  template_body = templatefile("files/alerting-topic.json", { recipient : var.recipient })
}
