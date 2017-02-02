### Exercise 4 ###
library("httr")
library("jsonlite")

# Use `source()` to load your API key variable.
# Make sure you've set your working directory!
source("apikey.R")

# Define a function that takes in the name of a movie as an argument and returns
# a list of information about that movie. The steps for this algorithm are below:
# Construct an HTTP request to search for reviews for the given movie.
# The base URI is `https://api.nytimes.com/svc/movies/v2/`
base.url <- "https://api.nytimes.com/svc/movies/v2/reviews/search.json?api-key=8084052501eb4adc9f2aa0aa3a04fa05&query=Inception"
# The resource is `reviews/search.json`
# See the interactive console for more detail:
#   https://developer.nytimes.com/movie_reviews_v2.json#/Console/GET/reviews/search.json?api-key=nty.apikey&query=Inception"
# You should use YOUR api key (as the `api-key` parameter)
movieInformation <- function(name) {
  response <-  GET(base.url)
  response <- paste0(base.url, "/reviews/search.json", list(q=))
}

# Send the HTTP Request to download the data
# Extract the content and convert it from JSON


# What kind of data structure did this return?


# Manually inspect the returned data and identify what content you wish to work with

# Flatten that content into a data structure called `reviews`


# From the most recent review, store the headline, short summary, and link to
# the full article, each in their own variables


# Return an list of the three pieces of information from above


# Test that your function works with a movie of your choice