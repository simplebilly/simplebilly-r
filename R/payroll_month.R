#' Create a new PayrollMonth
#'
#' @description
#' PayrollMonth Class
#'
#' @docType class
#' @title PayrollMonth
#' @description PayrollMonth Class
#' @format An \code{R6Class} generator object
#' @field gross  character
#' @field month  integer
#' @field net  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PayrollMonth <- R6::R6Class(
  "PayrollMonth",
  public = list(
    `gross` = NULL,
    `month` = NULL,
    `net` = NULL,

    #' @description
    #' Initialize a new PayrollMonth class.
    #'
    #' @param gross gross
    #' @param month month
    #' @param net net
    #' @param ... Other optional arguments.
    initialize = function(`gross`, `month`, `net`, ...) {
      if (!missing(`gross`)) {
        if (!(is.character(`gross`) && length(`gross`) == 1)) {
          stop(paste("Error! Invalid data for `gross`. Must be a string:", `gross`))
        }
        self$`gross` <- `gross`
      }
      if (!missing(`month`)) {
        if (!(is.numeric(`month`) && length(`month`) == 1)) {
          stop(paste("Error! Invalid data for `month`. Must be an integer:", `month`))
        }
        self$`month` <- `month`
      }
      if (!missing(`net`)) {
        if (!(is.character(`net`) && length(`net`) == 1)) {
          stop(paste("Error! Invalid data for `net`. Must be a string:", `net`))
        }
        self$`net` <- `net`
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
    #' @return PayrollMonth as a base R list.
    #' @examples
    #' # convert array of PayrollMonth (x) to a data frame
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
    #' Convert PayrollMonth to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PayrollMonthObject <- list()
      if (!is.null(self$`gross`)) {
        PayrollMonthObject[["gross"]] <-
          self$`gross`
      }
      if (!is.null(self$`month`)) {
        PayrollMonthObject[["month"]] <-
          self$`month`
      }
      if (!is.null(self$`net`)) {
        PayrollMonthObject[["net"]] <-
          self$`net`
      }
      return(PayrollMonthObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PayrollMonth
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollMonth
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gross`)) {
        self$`gross` <- this_object$`gross`
      }
      if (!is.null(this_object$`month`)) {
        self$`month` <- this_object$`month`
      }
      if (!is.null(this_object$`net`)) {
        self$`net` <- this_object$`net`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PayrollMonth in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PayrollMonth
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollMonth
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gross` <- this_object$`gross`
      self$`month` <- this_object$`month`
      self$`net` <- this_object$`net`
      self
    },

    #' @description
    #' Validate JSON input with respect to PayrollMonth and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `gross`
      if (!is.null(input_json$`gross`)) {
        if (!(is.character(input_json$`gross`) && length(input_json$`gross`) == 1)) {
          stop(paste("Error! Invalid data for `gross`. Must be a string:", input_json$`gross`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollMonth: the required field `gross` is missing."))
      }
      # check the required field `month`
      if (!is.null(input_json$`month`)) {
        if (!(is.numeric(input_json$`month`) && length(input_json$`month`) == 1)) {
          stop(paste("Error! Invalid data for `month`. Must be an integer:", input_json$`month`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollMonth: the required field `month` is missing."))
      }
      # check the required field `net`
      if (!is.null(input_json$`net`)) {
        if (!(is.character(input_json$`net`) && length(input_json$`net`) == 1)) {
          stop(paste("Error! Invalid data for `net`. Must be a string:", input_json$`net`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollMonth: the required field `net` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PayrollMonth
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `gross` is null
      if (is.null(self$`gross`)) {
        return(FALSE)
      }

      # check if the required `month` is null
      if (is.null(self$`month`)) {
        return(FALSE)
      }

      if (self$`month` < 0) {
        return(FALSE)
      }

      # check if the required `net` is null
      if (is.null(self$`net`)) {
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
      # check if the required `gross` is null
      if (is.null(self$`gross`)) {
        invalid_fields["gross"] <- "Non-nullable required field `gross` cannot be null."
      }

      # check if the required `month` is null
      if (is.null(self$`month`)) {
        invalid_fields["month"] <- "Non-nullable required field `month` cannot be null."
      }

      if (self$`month` < 0) {
        invalid_fields["month"] <- "Invalid value for `month`, must be bigger than or equal to 0."
      }

      # check if the required `net` is null
      if (is.null(self$`net`)) {
        invalid_fields["net"] <- "Non-nullable required field `net` cannot be null."
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
# PayrollMonth$unlock()
#
## Below is an example to define the print function
# PayrollMonth$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PayrollMonth$lock()

