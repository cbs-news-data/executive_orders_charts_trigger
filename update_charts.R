# Install the necessary packages if not already installed
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
if (!requireNamespace("DatawRappr", quietly = TRUE)) {
  devtools::install_github("munichrocker/DatawRappr")
}

# Load the datawrapper package
library(DatawRappr)
library(rdwd)

# Retrieve API key from env
api_key <- Sys.getenv("DATAWRAPPER_API_KEY")

# Check if API key is present
if (api_key == "") {
  stop("Datawrapper API key not found. Please set the DATAWRAPPER_API_KEY environment variable.")
}

# Authenticate with Datawrapper
datawrapper_auth(api_key)

# Publish the charts
dw_publish_chart(chart_id = 'l6Ftz')
dw_publish_chart(chart_id = 'NFqzJ')