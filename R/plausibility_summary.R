#' Create a new PlausibilitySummary
#'
#' @description
#' PlausibilitySummary Class
#'
#' @docType class
#' @title PlausibilitySummary
#' @description PlausibilitySummary Class
#' @format An \code{R6Class} generator object
#' @field errors  integer
#' @field overall_status  \link{CheckStatus}
#' @field passed  integer
#' @field total_checks  integer
#' @field warnings  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PlausibilitySummary <- R6::R6Class(
  "PlausibilitySummary",
  public = list(
    `errors` = NULL,
    `overall_status` = NULL,
    `passed` = NULL,
    `total_checks` = NULL,
    `warnings` = NULL,

    #' @description
    #' Initialize a new PlausibilitySummary class.
    #'
    #' @param errors errors
    #' @param overall_status overall_status
    #' @param passed passed
    #' @param total_checks total_checks
    #' @param warnings warnings
    #' @param ... Other optional arguments.
    initialize = function(`errors`, `overall_status`, `passed`, `total_checks`, `warnings`, ...) {
      if (!missing(`errors`)) {
        if (!(is.numeric(`errors`) && length(`errors`) == 1)) {
          stop(paste("Error! Invalid data for `errors`. Must be an integer:", `errors`))
        }
        self$`errors` <- `errors`
      }
      if (!missing(`overall_status`)) {
        if (!(`overall_status` %in% c())) {
          stop(paste("Error! \"", `overall_status`, "\" cannot be assigned to `overall_status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`overall_status`))
        self$`overall_status` <- `overall_status`
      }
      if (!missing(`passed`)) {
        if (!(is.numeric(`passed`) && length(`passed`) == 1)) {
          stop(paste("Error! Invalid data for `passed`. Must be an integer:", `passed`))
        }
        self$`passed` <- `passed`
      }
      if (!missing(`total_checks`)) {
        if (!(is.numeric(`total_checks`) && length(`total_checks`) == 1)) {
          stop(paste("Error! Invalid data for `total_checks`. Must be an integer:", `total_checks`))
        }
        self$`total_checks` <- `total_checks`
      }
      if (!missing(`warnings`)) {
        if (!(is.numeric(`warnings`) && length(`warnings`) == 1)) {
          stop(paste("Error! Invalid data for `warnings`. Must be an integer:", `warnings`))
        }
        self$`warnings` <- `warnings`
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
    #' @return PlausibilitySummary as a base R list.
    #' @examples
    #' # convert array of PlausibilitySummary (x) to a data frame
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
    #' Convert PlausibilitySummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PlausibilitySummaryObject <- list()
      if (!is.null(self$`errors`)) {
        PlausibilitySummaryObject[["errors"]] <-
          self$`errors`
      }
      if (!is.null(self$`overall_status`)) {
        PlausibilitySummaryObject[["overall_status"]] <-
          self$extractSimpleType(self$`overall_status`)
      }
      if (!is.null(self$`passed`)) {
        PlausibilitySummaryObject[["passed"]] <-
          self$`passed`
      }
      if (!is.null(self$`total_checks`)) {
        PlausibilitySummaryObject[["total_checks"]] <-
          self$`total_checks`
      }
      if (!is.null(self$`warnings`)) {
        PlausibilitySummaryObject[["warnings"]] <-
          self$`warnings`
      }
      return(PlausibilitySummaryObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of PlausibilitySummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlausibilitySummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- this_object$`errors`
      }
      if (!is.null(this_object$`overall_status`)) {
        `overall_status_object` <- CheckStatus$new()
        `overall_status_object`$fromJSON(jsonlite::toJSON(this_object$`overall_status`, auto_unbox = TRUE, digits = NA))
        self$`overall_status` <- `overall_status_object`
      }
      if (!is.null(this_object$`passed`)) {
        self$`passed` <- this_object$`passed`
      }
      if (!is.null(this_object$`total_checks`)) {
        self$`total_checks` <- this_object$`total_checks`
      }
      if (!is.null(this_object$`warnings`)) {
        self$`warnings` <- this_object$`warnings`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PlausibilitySummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PlausibilitySummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlausibilitySummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`errors` <- this_object$`errors`
      self$`overall_status` <- CheckStatus$new()$fromJSON(jsonlite::toJSON(this_object$`overall_status`, auto_unbox = TRUE, digits = NA))
      self$`passed` <- this_object$`passed`
      self$`total_checks` <- this_object$`total_checks`
      self$`warnings` <- this_object$`warnings`
      self
    },

    #' @description
    #' Validate JSON input with respect to PlausibilitySummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `errors`
      if (!is.null(input_json$`errors`)) {
        if (!(is.numeric(input_json$`errors`) && length(input_json$`errors`) == 1)) {
          stop(paste("Error! Invalid data for `errors`. Must be an integer:", input_json$`errors`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlausibilitySummary: the required field `errors` is missing."))
      }
      # check the required field `overall_status`
      if (!is.null(input_json$`overall_status`)) {
        stopifnot(R6::is.R6(input_json$`overall_status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlausibilitySummary: the required field `overall_status` is missing."))
      }
      # check the required field `passed`
      if (!is.null(input_json$`passed`)) {
        if (!(is.numeric(input_json$`passed`) && length(input_json$`passed`) == 1)) {
          stop(paste("Error! Invalid data for `passed`. Must be an integer:", input_json$`passed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlausibilitySummary: the required field `passed` is missing."))
      }
      # check the required field `total_checks`
      if (!is.null(input_json$`total_checks`)) {
        if (!(is.numeric(input_json$`total_checks`) && length(input_json$`total_checks`) == 1)) {
          stop(paste("Error! Invalid data for `total_checks`. Must be an integer:", input_json$`total_checks`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlausibilitySummary: the required field `total_checks` is missing."))
      }
      # check the required field `warnings`
      if (!is.null(input_json$`warnings`)) {
        if (!(is.numeric(input_json$`warnings`) && length(input_json$`warnings`) == 1)) {
          stop(paste("Error! Invalid data for `warnings`. Must be an integer:", input_json$`warnings`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlausibilitySummary: the required field `warnings` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PlausibilitySummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `errors` is null
      if (is.null(self$`errors`)) {
        return(FALSE)
      }

      if (self$`errors` < 0) {
        return(FALSE)
      }

      # check if the required `overall_status` is null
      if (is.null(self$`overall_status`)) {
        return(FALSE)
      }

      # check if the required `passed` is null
      if (is.null(self$`passed`)) {
        return(FALSE)
      }

      if (self$`passed` < 0) {
        return(FALSE)
      }

      # check if the required `total_checks` is null
      if (is.null(self$`total_checks`)) {
        return(FALSE)
      }

      if (self$`total_checks` < 0) {
        return(FALSE)
      }

      # check if the required `warnings` is null
      if (is.null(self$`warnings`)) {
        return(FALSE)
      }

      if (self$`warnings` < 0) {
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
      # check if the required `errors` is null
      if (is.null(self$`errors`)) {
        invalid_fields["errors"] <- "Non-nullable required field `errors` cannot be null."
      }

      if (self$`errors` < 0) {
        invalid_fields["errors"] <- "Invalid value for `errors`, must be bigger than or equal to 0."
      }

      # check if the required `overall_status` is null
      if (is.null(self$`overall_status`)) {
        invalid_fields["overall_status"] <- "Non-nullable required field `overall_status` cannot be null."
      }

      # check if the required `passed` is null
      if (is.null(self$`passed`)) {
        invalid_fields["passed"] <- "Non-nullable required field `passed` cannot be null."
      }

      if (self$`passed` < 0) {
        invalid_fields["passed"] <- "Invalid value for `passed`, must be bigger than or equal to 0."
      }

      # check if the required `total_checks` is null
      if (is.null(self$`total_checks`)) {
        invalid_fields["total_checks"] <- "Non-nullable required field `total_checks` cannot be null."
      }

      if (self$`total_checks` < 0) {
        invalid_fields["total_checks"] <- "Invalid value for `total_checks`, must be bigger than or equal to 0."
      }

      # check if the required `warnings` is null
      if (is.null(self$`warnings`)) {
        invalid_fields["warnings"] <- "Non-nullable required field `warnings` cannot be null."
      }

      if (self$`warnings` < 0) {
        invalid_fields["warnings"] <- "Invalid value for `warnings`, must be bigger than or equal to 0."
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
# PlausibilitySummary$unlock()
#
## Below is an example to define the print function
# PlausibilitySummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PlausibilitySummary$lock()

