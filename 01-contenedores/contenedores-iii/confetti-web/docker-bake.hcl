group "default" {
    targets = ["confetti-web"]
}

target "confetti-web" {
    context    = "."
    dockerfile = "Dockerfile"
    platforms  = ["linux/amd64", "linux/arm64"]
    tags       = ["nuriavicentbernat/confetti-web:v1.0"]
}
