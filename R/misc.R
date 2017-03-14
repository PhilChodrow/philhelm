#' misc
#' @name misc
#' @docType package
#' @import tidyverse knitr servr devtools

NULL

#' Check to see if a directory exists, and create it if not.
#' Operates recursively.
#' @param path the directory path to create
#' @return NULL

check_dir <- function(path){

	# if the directory is already there, print a message and don't do anything
	if(dir.exists(path)){
		return(NULL)
	}
	# if the directory isn't there, check of it's parent is there.
	else{
		check_dir(dirname(path))
		dir.create(path)
	}
}
