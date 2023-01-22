
locals { timestamp = regex_replace(timestamp(), "[- TZ:]", "") }

source "amazon-ebs" "Packer_Test" {
  ami_name      = "packer_test"
  instance_type = "t2.micro"
  region        = "ap-south-1"
  source_ami    = "ami-0f9d9a251c1a44858"
  ssh_username  = "ec2-user"
}

build {
  sources = ["source.amazon-ebs.Packer_Test"]

  provisioner "shell" {
    script = "packer.sh"
  }

}
