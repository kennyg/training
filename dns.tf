#
# DO NOT DELETE THESE LINES!
#
# Your DNSimple email is:
#
#     sethvargo+terraform@gmail.com
#
# Your DNSimple token is:
#
#     sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF
#
# Your Identity is:
#
#     manheim-a87ff679a2f3e71d9181a67b7542122c
#

variable dnsimple_token { default = "1b3fdL6IywZS2MUeYLCNj2LXdXzcpoa6"}
variable dnsimple_email { default = "sethvargo+terraform@gmail.com"}
variable dnsimple_identity { default = "manheim-a87ff679a2f3e71d9181a67b7542122c"}
variable dnsimple_domain { default = "terraform.rocks"}

# Configure the DNSimple provider
provider "dnsimple" {
    token = "${var.dnsimple_token}"
    email = "${var.dnsimple_email}"
}

resource "dnsimple_record" "foobar" {
    domain = "${var.dnsimple_domain}"
    name = "${var.dnsimple_identity}"
    value = "${aws_instance.web.0.public_ip}"
    type = "A"
    ttl = 3600
}

