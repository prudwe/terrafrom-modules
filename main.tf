# main.tf

provider "aws" {
  region = "us-east-1" # Modify this to your desired region
  profile = "default"
}

module "vpc" {
  source             = "./terraform-modules/vpc"
  cidr_block         = "10.0.0.0/16"
  subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
  tags = {
    Name = "MyVPC"
  }
}

module "ec2" {
  source       = "./terraform-modules/ec2"
  ami_id       = "ami-0c55b159cbfafe1f0" # Replace with your desired AMI
  instance_type = "t2.micro"
  subnet_id    = module.vpc.subnet_ids[0] # Use the first subnet
  tags = {
    Name = "MyEC2Instance"
  }
}

module "rds" {
  source              = "./terraform-modules/rds"
  allocated_storage   = 20
  storage_type        = "gp2"
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t2.micro"
  username            = "dbadmin"
  password            = "yourpassword"
  tags = {
    Name = "MyRDSInstance"
  }
}

module "s3" {
  source       = "./terraform-modules/s3"
  bucket_name  = "my-unique-bucket-name"
  acl          = "public-read"
  tags = {
    Name = "MyS3Bucket"
  }
}

