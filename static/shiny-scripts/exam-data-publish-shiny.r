install.packages('rsconnect')

library(rsconnect)
library(here)

rsconnect::setAccountInfo(name='cogscidk', token='875E614AB569C0EB256BE1366ACA65AB', secret='P2cXwzsYZD/TmjuseKxxB0rtlkBuI0fJdNgQJjhk')

rsconnect::deployApp(here::here("shiny-scripts", "exam-database-shiny.r"))


