#lang pollen
 
◊(define s3-site "https://www.s3global.com/science-eng.html")
◊(define cdm-site "https://www.allthingsdistributed.com/2021/07/amazon-robotics-on-aws.html")
◊(define ar-site "https://www.aboutamazon.com/news/tag/robotics")
◊(define bt-site "https://www.belvederetrading.com/")
◊(define databricks-site "https://www.databricks.com/")
◊(define matthias-site "https://felleisen.org/matthias/")
◊(define dbp-site "https://dbp.io/")
◊(define sro-site "https://www.lukejianu.com/small-rust-os/")

◊(define (my-link url text)
  ◊a[#:href url #:target "_blank"]{◊text})

◊headline{Luke Jianu}

◊p{Hi, I'm Luke and I study Computer Science at Northeastern University.}

◊p{
Currently, I'm:
}
◊items{
  ◊item{designing a ◊(my-link sro-site "Small Rust OS") systematically.}
  ◊item{training to do a clean muscle up.}
  ◊item{installing and configuring Arch Linux (manually).}
  ◊item{getting ready for CS4410 (Compiler Design).}
}

◊p{
In the past, I've:
}
◊items{
  ◊item{built a TCP stream proxy at ◊(my-link bt-site "Belvedere Trading").}
  ◊item{improved ◊(my-link cdm-site "Comprehensive Device Management") at ◊(my-link ar-site "Amazon Robotics").}
  ◊item{created tooling for high-speed cameras at ◊(my-link s3-site "S3Global").}
}

◊p{
In the near future, I'll be:
}
◊items{
  ◊item{TAing for ◊(my-link dbp-site "Daniel Patterson") (CS2800) in the spring.}
  ◊item{working on software at ◊(my-link databricks-site "Databricks") in
    the summer.}
  ◊item{TAing for ◊(my-link matthias-site "Matthias Felleisen") (CS4500) in
    the fall.}
  ◊item{adding some thoughts here (hopefully)...}
}

◊p{
  You can find other relevant links and my contact information on my ◊(my-link "/LukeJianu_Resume.pdf" "CV").
}

