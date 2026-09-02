#' Create a new TimeEntryClockOut
#'
#' @description
#' TimeEntryClockOut Class
#'
#' @docType class
#' @title TimeEntryClockOut
#' @description TimeEntryClockOut Class
#' @format An \code{R6Class} generator object
#' @field clock_out  character
#' @field hours Optional manual hours; when absent, derived from clock_in..clock_out. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TimeEntryClockOut <- R6::R6Class(
  "TimeEntryClockOut",
  public = list(
    `clock_out` = NULL,
    `hours` = NULL,

    #' @description
    #' Initialize a new TimeEntryClockOut class.
    #'
    #' @param clock_out clock_out
    #' @param hours Optional manual hours; when absent, derived from clock_in..clock_out.
    #' @param ... Other optional arguments.
    initialize = function(`clock_out`, `hours` = NULL, ...) {
      if (!missing(`clock_out`)) {
        if (!(is.character(`clock_out`) && length(`clock_out`) == 1)) {
          stop(paste("Error! Invalid data for `clock_out`. Must be a string:", `clock_out`))
        }
        self$`clock_out` <- `clock_out`
      }
      if (!is.null(`hours`)) {
        if (!(is.character(`hours`) && length(`hours`) == 1)) {
          stop(paste("Error! Invalid data for `hours`. Must be a string:", `hours`))
        }
        self$`hours` <- `hours`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return TimeEntryClockOut as a base R list.
    #' @examples
    #' # convert array of TimeEntryClockOut (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert TimeEntryClockOut to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TimeEntryClockOutObject <- list()
      if (!is.null(self$`clock_out`)) {
        TimeEntryClockOutObject[["clock_out"]] <-
          self$`clock_out`
      }
      if (!is.null(self$`hours`)) {
        TimeEntryClockOutObject[["hours"]] <-
          self$`hours`
      }
      return(TimeEntryClockOutObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TimeEntryClockOut
    #'
    #' @param input_json the JSON input
    #' @return the instance of TimeEntryClockOut
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`clock_out`)) {
        self$`clock_out` <- this_object$`clock_out`
      }
      if (!is.null(this_object$`hours`)) {
        self$`hours` <- this_object$`hours`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TimeEntryClockOut in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TimeEntryClockOut
    #'
    #' @param input_json the JSON input
    #' @return the instance of TimeEntryClockOut
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`clock_out` <- this_object$`clock_out`
      self$`hours` <- this_object$`hours`
      self
    },

    #' @description
    #' Validate JSON input with respect to TimeEntryClockOut and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `clock_out`
      if (!is.null(input_json$`clock_out`)) {
        if (!(is.character(input_json$`clock_out`) && length(input_json$`clock_out`) == 1)) {
          stop(paste("Error! Invalid data for `clock_out`. Must be a string:", input_json$`clock_out`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TimeEntryClockOut: the required field `clock_out` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TimeEntryClockOut
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `clock_out` is null
      if (is.null(self$`clock_out`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `clock_out` is null
      if (is.null(self$`clock_out`)) {
        invalid_fields["clock_out"] <- "Non-nullable required field `clock_out` cannot be null."
      }

      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# TimeEntryClockOut$unlock()
#
## Below is an example to define the print function
# TimeEntryClockOut$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TimeEntryClockOut$lock()

