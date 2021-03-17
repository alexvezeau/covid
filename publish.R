library(rpubs)
library(rsconnect)
library(rmarkdown)


options(echo = TRUE)

rmarkdown::render("COVID_US.Rmd")
rmarkdown::render("COVID_CANADA.Rmd")

rsconnect::rpubsUpload(contentFile = "COVID_US.html", originalDoc = "", title = "COVID_US", id = "https://api.rpubs.com/api/v1/document/714182/273d2c03f0c34ed1ac27bfb951755121")
rsconnect::rpubsUpload(contentFile = "COVID_CANADA.html", originalDoc = "", title = "COVID_CANADA", id = "https://api.rpubs.com/api/v1/document/714183/eda97654c2a744cd8a3dc0efe4ea61ce")

