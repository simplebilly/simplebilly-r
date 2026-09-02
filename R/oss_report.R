#' Create a new OssReport
#'
#' @description
#' OssReport Class
#'
#' @docType class
#' @title OssReport
#' @description OssReport Class
#' @format An \code{R6Class} generator object
#' @field dependencies  list(\link{OssDependency})
#' @field total_count  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OssReport <- R6::R6Class(
  "OssReport",
  public = list(
    `dependencies` = NULL,
    `total_count` = NULL,

    #' @description
    #' Initialize a new OssReport class.
    #'
    #' @param dependencies dependencies
    #' @param total_count total_count
    #' @param ... Other optional arguments.
    initialize = function(`dependencies`, `total_count`, ...) {
      if (!missing(`dependencies`)) {
        stopifnot(is.vector(`dependencies`), length(`dependencies`) != 0)
        sapply(`dependencies`, function(x) stopifnot(R6::is.R6(x)))
        self$`dependencies` <- `dependencies`
      }
      if (!missing(`total_count`)) {
        if (!(is.numeric(`total_count`) && length(`total_count`) == 1)) {
          stop(paste("Error! Invalid data for `total_count`. Must be an integer:", `total_count`))
        }
        self$`total_count` <- `total_count`
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
    #' @return OssReport as a base R list.
    #' @examples
    #' # convert array of OssReport (x) to a data frame
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
    #' Convert OssReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OssReportObject <- list()
      if (!is.null(self$`dependencies`)) {
        OssReportObject[["dependencies"]] <-
          self$extractSimpleType(self$`dependencies`)
      }
      if (!is.null(self$`total_count`)) {
        OssReportObject[["total_count"]] <-
          self$`total_count`
      }
      return(OssReportObject)
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
    #' Deserialize JSON string into an instance of OssReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of OssReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`dependencies`)) {
        self$`dependencies` <- ApiClient$new()$deserializeObj(this_object$`dependencies`, "array[OssDependency]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`total_count`)) {
        self$`total_count` <- this_object$`total_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OssReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OssReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of OssReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`dependencies` <- ApiClient$new()$deserializeObj(this_object$`dependencies`, "array[OssDependency]", loadNamespace("openapi"))
      self$`total_count` <- this_object$`total_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to OssReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `dependencies`
      if (!is.null(input_json$`dependencies`)) {
        stopifnot(is.vector(input_json$`dependencies`), length(input_json$`dependencies`) != 0)
        tmp <- sapply(input_json$`dependencies`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OssReport: the required field `dependencies` is missing."))
      }
      # check the required field `total_count`
      if (!is.null(input_json$`total_count`)) {
        if (!(is.numeric(input_json$`total_count`) && length(input_json$`total_count`) == 1)) {
          stop(paste("Error! Invalid data for `total_count`. Must be an integer:", input_json$`total_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OssReport: the required field `total_count` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OssReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `dependencies` is null
      if (is.null(self$`dependencies`)) {
        return(FALSE)
      }

      # check if the required `total_count` is null
      if (is.null(self$`total_count`)) {
        return(FALSE)
      }

      if (self$`total_count` < 0) {
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
      # check if the required `dependencies` is null
      if (is.null(self$`dependencies`)) {
        invalid_fields["dependencies"] <- "Non-nullable required field `dependencies` cannot be null."
      }

      # check if the required `total_count` is null
      if (is.null(self$`total_count`)) {
        invalid_fields["total_count"] <- "Non-nullable required field `total_count` cannot be null."
      }

      if (self$`total_count` < 0) {
        invalid_fields["total_count"] <- "Invalid value for `total_count`, must be bigger than or equal to 0."
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
# OssReport$unlock()
#
## Below is an example to define the print function
# OssReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OssReport$lock()

