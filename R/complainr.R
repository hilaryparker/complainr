#' Complaints that are randomly chosen
complaints <- c(
    paste("That's if you can trust any frequentist method.",
          "You should really be doing a Bayesian analysis.",
          "Did you hear about that journal that banned p-values?"),
    paste("If you'd been paying attention to the R-help list in 2004",
          "you wouldn't have had to ask."),
    "You know, Hadley has a better way of doing this.",
    paste("In the days of S-PLUS we never had all these fancy tests.",
          "There were only three functions in the whole language, and we all knew",
          "what they did, because we wrote them from scratch in Fortran."),
    paste("You could have just read the help page. It's just one question",
          "mark away. But whatever.")
)


#' Explain an R object, then complain about it
#'
#' This explains an R object and complains about it. I mean, that should be
#' pretty clear from the title. It's all right there. I feel like you're
#' not meeting me halfway on this documentation thing.
#'
#' @param x object to be explained, obviously...
#' @param ... extra arguments, as though that's even necessary.
#'
#' @return An explanation of the object, duh.
#'
#' @import explainr
#'
#' @export
complain <- function(x, ...) {
    out <- explain(x, ...)

    idx <- options("complaint_index")$complaint_index
    complaint <- complaints[idx + 1]
    options(complaint_index = (idx + 1) %% length(complaints))
    out <- explainr_output(paste(out, complaint, sep = "\n\n"))

    out
}


#' onload
.onLoad <- function(libname, pkgname) {
    options(complaint_index = 0)
}
