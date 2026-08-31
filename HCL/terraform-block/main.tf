resource "local_file" "example" { //로컬에서 파일 관리 (프로바이더 없이)
  filename = "${path.module}/${var.filename}" //프로잭트 루트 디렉토리, 파일 이름 변수 사용 (문자열로) -> 사실상 경로
  content = "Hello, Terraform!" 
}
