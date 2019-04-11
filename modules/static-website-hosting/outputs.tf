
output "bucket_regional_domain_name"{
	value = "aws_s3_bucket_object.upload_files.bucket_regional_domain_name"

}
output "s3_origin_id"{
	value = "local.s3_origin_id"
}