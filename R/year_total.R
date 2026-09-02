#' Create a new YearTotal
#'
#' @description
#' YearTotal Class
#'
#' @docType class
#' @title YearTotal
#' @description YearTotal Class
#' @format An \code{R6Class} generator object
#' @field tco2e  character
#' @field year  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
YearTotal <- R6::R6Class(
  "YearTotal",
  public = list(
    `tco2e` = NULL,
    `year` = NULL,

    #' @description
    #' Initialize a new YearTotal class.
    #'
    #' @param tco2e tco2e
    #' @param year year
    #' @param ... Other optional arguments.
    initialize = function(`tco2e`, `year`, ...) {
      if (!missing(`tco2e`)) {
        if (!(is.character(`tco2e`) && length(`tco2e`) == 1)) {
          stop(paste("Error! Invalid data for `tco2e`. Must be a string:", `tco2e`))
        }
        self$`tco2e` <- `tco2e`
      }
      if (!missing(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
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
    #' @return YearTotal as a base R list.
    #' @examples
    #' # convert array of YearTotal (x) to a data frame
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
    #' Convert YearTotal to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      YearTotalObject <- list()
      if (!is.null(self$`tco2e`)) {
        YearTotalObject[["tco2e"]] <-
          self$`tco2e`
      }
      if (!is.null(self$`year`)) {
        YearTotalObject[["year"]] <-
          self$`year`
      }
      return(YearTotalObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of YearTotal
    #'
    #' @param input_json the JSON input
    #' @return the instance of YearTotal
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tco2e`)) {
        self$`tco2e` <- this_object$`tco2e`
      }
      if (!is.null(this_object$`year`)) {
        self$`year` <- this_object$`year`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return YearTotal in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of YearTotal
    #'
    #' @param input_json the JSON input
    #' @return the instance of YearTotal
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tco2e` <- this_object$`tco2e`
      self$`year` <- this_object$`year`
      self
    },

    #' @description
    #' Validate JSON input with respect to YearTotal and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `tco2e`
      if (!is.null(input_json$`tco2e`)) {
        if (!(is.character(input_json$`tco2e`) && length(input_json$`tco2e`) == 1)) {
          stop(paste("Error! Invalid data for `tco2e`. Must be a string:", input_json$`tco2e`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for YearTotal: the required field `tco2e` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for YearTotal: the required field `year` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of YearTotal
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `tco2e` is null
      if (is.null(self$`tco2e`)) {
        return(FALSE)
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
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
      # check if the required `tco2e` is null
      if (is.null(self$`tco2e`)) {
        invalid_fields["tco2e"] <- "Non-nullable required field `tco2e` cannot be null."
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
        invalid_fields["year"] <- "Non-nullable required field `year` cannot be null."
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
# YearTotal$unlock()
#
## Below is an example to define the print function
# YearTotal$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# YearTotal$lock()

