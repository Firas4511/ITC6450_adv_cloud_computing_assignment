output "website_link" {
  description = "The url of the website."
  value = "${aws_s3_bucket.static_site.website_endpoint}"
}