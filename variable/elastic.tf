# ۱. تعریف قالب (Launch Template)
resource "aws_launch_template" "my_app_lt" {
  name_prefix   = "asg-template-"
  image_id      = "ami-022d03f649d12a49d"
  instance_type = "t3.micro"
}

# ۲. تعریف گروه الاستیک (Auto Scaling Group)
resource "aws_autoscaling_group" "my_asg" {
  name                = "my-elastic-group"
  vpc_zone_identifier = ["subnet-0840bc9743ca687fa"]
  desired_capacity    = 1
  max_size            = 2
  min_size            = 1

  launch_template {
    # دقت کن که این نام باید با نام جلوی resource در خط ۱ یکی باشد
    id      = aws_launch_template.my_app_lt.id
    version = "$Latest"
  }
}
