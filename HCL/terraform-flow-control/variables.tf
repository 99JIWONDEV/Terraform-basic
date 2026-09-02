################################


# region: 리전
variable "region" {
  description = "리소스가 생설될 리전입니다."
  type = string
  default = "us-east-1"
}

# environment: 환경 (dev, prod 등)
variable "environment" {
  description = "인스턴스가 배포되는 환경입니다. 이 변수에 따라 인스턴스 사양이 변경됩니다 (dev, prod 등)"
  type = string
  default = "dev"
}

# enable_monitoring: EC2 인스턴스 모니터링 활성화 여부
variable "enable_monitoring" {
  description = "인스턴스에 대한 모니터링 활성화 여부"
  default = true
}

# custom_user_data: EC2 인스턴스 생성 시 사용자 데이터
variable "custom_user_data" {
  description = "인스턴스에 전달할 사용자 지정 데이터를 명시합니다"
  type = string
  default = ""
}

# create_bucket: S3 버킷 생성 여부
variable "create_bucket" {
  description = "S3 버킷 생성 여부"
  type = bool
  default = true
}