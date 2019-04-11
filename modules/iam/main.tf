/***********Define IAM Role********************/
resource "aws_iam_role" "iam_role" {
	name 				= "${var.role_name}"
	description 		= "${var.description}"
	assume_role_policy 	= "${file(var.assume_role_policy)}"
}

/******************** ATTACHING A MULTIPLE POLICIES IAM ROLE FOR LAMBDA ****************************/
resource "aws_iam_role_policy_attachment" "role_policy_attachment" {
  role       = "${aws_iam_role.iam_role.name}"
  count      = "${var.iam_policy_count}"
  policy_arn = "${element(var.iam_policy_arn,count.index)}"
}