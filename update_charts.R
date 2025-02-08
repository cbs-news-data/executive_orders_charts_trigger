library(DatawRappr)
library(lubridate)

# Retrieve API key from env
api_key <- Sys.getenv("DATAWRAPPER_API_KEY")

# Check if API key is present
if (api_key == "") {
  stop("Datawrapper API key not found. Please set the DATAWRAPPER_API_KEY environment variable.")
}

# Authenticate with Datawrapper
datawrapper_auth(api_key)

formatted_time <- format(with_tz(Sys.time(), tzone = "America/New_York"), "%b. %d at %I:%M %p")
# Remove the leading zero from the day
formatted_time <- gsub(" 0", " ", formatted_time)

dw_edit_chart(chart_id = 'NFqzJ', intro = paste0('<b>As of ',formatted_time,'</b>.
              The latest executive orders issued by President Trump, plus the process ahead and legal issues. This only includes orders and not actions such as memos and pardons. You can click the buttons to see certain categories or search them all: <br><br>

<span style="line-height:30px">

<a target="_self" href="https://datawrapper.dwcdn.net/NFqzJ/" style="background:purple; padding:1px 6px; border-radius:5px; color:#ffffff; font-weight:400; box-shadow:0px 0px 7px 2px rgba(0,0,0,0.07); cursor:pointer;" rel="nofollow noopener"> All</a>&nbsp;
                
                <a target="_self" href="https://datawrapper.dwcdn.net/NFqzJ/?search=Environment" style="background:#429ddd; padding:1px 6px; border-radius:5px; color:#ffffff; font-weight:400; box-shadow:0px 0px 7px 2px rgba(0,0,0,0.07); cursor:pointer;" rel="nofollow noopener"> Environment </a> &nbsp;
              
              <a target="_self" href="https://datawrapper.dwcdn.net/NFqzJ/?search=Immigration" style="background:gray; padding:1px 6px; border-radius:5px; color:#ffffff; font-weight:400; box-shadow:0px 0px 7px 2px rgba(0,0,0,0.07); cursor:pointer;" rel="nofollow noopener"> Immigration </a> &nbsp;
              
              <a target="_self" href="https://datawrapper.dwcdn.net/NFqzJ/?search=Workforce" style="background:maroon; padding:1px 6px; border-radius:5px; color:#ffffff; font-weight:400; box-shadow:0px 0px 7px 2px rgba(0,0,0,0.07); cursor:pointer;" rel="nofollow noopener"> Federal Workers </a> &nbsp;
              
              <a target="_self" href="https://datawrapper.dwcdn.net/NFqzJ/?search=Energy" style="background:red; padding:1px 6px; border-radius:5px; color:#ffffff; font-weight:400; box-shadow:0px 0px 7px 2px rgba(0,0,0,0.07); cursor:pointer;" rel="nofollow noopener"> Energy </a> &nbsp;
              
              <a target="_self" href="https://datawrapper.dwcdn.net/NFqzJ/?search=technology" style="background:black; padding:1px 6px; border-radius:5px; color:#ffffff; font-weight:400; box-shadow:0px 0px 7px 2px rgba(0,0,0,0.07); cursor:pointer;" rel="nofollow noopener"> Technology </a> &nbsp;
              
              <a target="_self" href="https://datawrapper.dwcdn.net/NFqzJ/?search=health" style="background:green; padding:1px 6px; border-radius:5px; color:#ffffff; font-weight:400; box-shadow:0px 0px 7px 2px rgba(0,0,0,0.07); cursor:pointer;" rel="nofollow noopener"> Health </a> &nbsp;
              
              <a target="_self" href="https://datawrapper.dwcdn.net/NFqzJ/?search=foreign" style="background:blue; padding:1px 6px; border-radius:5px; color:#ffffff; font-weight:400; box-shadow:0px 0px 7px 2px rgba(0,0,0,0.07); cursor:pointer;" rel="nofollow noopener"> Foreign Policy </a> &nbsp;
              
              <a target="_self" href="https://datawrapper.dwcdn.net/NFqzJ/?search=Defense" style="background:black; padding:1px 6px; border-radius:5px; color:#ffffff; font-weight:400; box-shadow:0px 0px 7px 2px rgba(0,0,0,0.07); cursor:pointer;" rel="nofollow noopener"> Defense </a> &nbsp;
              
              <a target="_self" href="https://datawrapper.dwcdn.net/NFqzJ/?search=Diversity" style="background:gold; padding:1px 6px; border-radius:5px; color:#ffffff; font-weight:400; box-shadow:0px 0px 7px 2px rgba(0,0,0,0.07); cursor:pointer;" rel="nofollow noopener"> Diversity </a> &nbsp;
              
              <a target="_self" href="https://datawrapper.dwcdn.net/NFqzJ/?search=Election" style="background:navy; padding:1px 6px; border-radius:5px; color:#ffffff; font-weight:400; box-shadow:0px 0px 7px 2px rgba(0,0,0,0.07); cursor:pointer;" rel="nofollow noopener"> Election </a> &nbsp;
              
              </span>'))

# Publish the charts
#dw_publish_chart(chart_id = 'l6Ftz')
dw_publish_chart(chart_id = 'NFqzJ')