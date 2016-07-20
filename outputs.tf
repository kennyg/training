output "public_ip" {
  #value = "${aws_instance.web.0.public_ip}"
	value = "${join(",", aws_instance.web.*.public_ip)}"
}

output "public_dns" {
  #value = "${aws_instance.web.0.public_dns}"
	value = "${join(",", aws_instance.web.*.public_dns)}"

}
