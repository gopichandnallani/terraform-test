resource "aws_iam_user" "feature-dev" {
    count = length(var.iamusers)
    name = var.iamusers[count.index]
}

resource "aws_iam_policy" "feature_dev_policy" {
    name = "feature-dev-policy"
    path = "/"
    description = "policy for group of users to work on New Feature Development"

    policy = jsonencode({
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Action": "*",
                "Resource": "*"
            }
        ]
    })
}

resource "aws_iam_user_policy_attachment" "Feature-dev-attach" {
    count = length(var.iamusers)
    user = aws_iam_user.feature-dev[count.index]
    policy_arn = aws_iam_policy.feature_dev_policy.arn
}