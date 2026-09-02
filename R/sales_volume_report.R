#' Create a new SalesVolumeReport
#'
#' @description
#' SalesVolumeReport Class
#'
#' @docType class
#' @title SalesVolumeReport
#' @description SalesVolumeReport Class
#' @format An \code{R6Class} generator object
#' @field grand_total  character
#' @field items  list(\link{SalesVolumeItem})
#' @field total_count  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SalesVolumeReport <- R6::R6Class(
  "SalesVolumeReport",
  public = list(
    `grand_total` = NULL,
    `items` = NULL,
    `total_count` = NULL,

    #' @description
    #' Initialize a new SalesVolumeReport class.
    #'
    #' @param grand_total grand_total
    #' @param items items
    #' @param total_count total_count
    #' @param ... Other optional arguments.
    initialize = function(`grand_total`, `items`, `total_count`, ...) {
      if (!missing(`grand_total`)) {
        if (!(is.character(`grand_total`) && length(`grand_total`) == 1)) {
          stop(paste("Error! Invalid data for `grand_total`. Must be a string:", `grand_total`))
        }
        self$`grand_total` <- `grand_total`
      }
      if (!missing(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
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
    #' @return SalesVolumeReport as a base R list.
    #' @examples
    #' # convert array of SalesVolumeReport (x) to a data frame
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
    #' Convert SalesVolumeReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SalesVolumeReportObject <- list()
      if (!is.null(self$`grand_total`)) {
        SalesVolumeReportObject[["grand_total"]] <-
          self$`grand_total`
      }
      if (!is.null(self$`items`)) {
        SalesVolumeReportObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`total_count`)) {
        SalesVolumeReportObject[["total_count"]] <-
          self$`total_count`
      }
      return(SalesVolumeReportObject)
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
    #' Deserialize JSON string into an instance of SalesVolumeReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of SalesVolumeReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`grand_total`)) {
        self$`grand_total` <- this_object$`grand_total`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[SalesVolumeItem]", loadNamespace("openapi"))
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
    #' @return SalesVolumeReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SalesVolumeReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of SalesVolumeReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`grand_total` <- this_object$`grand_total`
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[SalesVolumeItem]", loadNamespace("openapi"))
      self$`total_count` <- this_object$`total_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to SalesVolumeReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `grand_total`
      if (!is.null(input_json$`grand_total`)) {
        if (!(is.character(input_json$`grand_total`) && length(input_json$`grand_total`) == 1)) {
          stop(paste("Error! Invalid data for `grand_total`. Must be a string:", input_json$`grand_total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SalesVolumeReport: the required field `grand_total` is missing."))
      }
      # check the required field `items`
      if (!is.null(input_json$`items`)) {
        stopifnot(is.vector(input_json$`items`), length(input_json$`items`) != 0)
        tmp <- sapply(input_json$`items`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SalesVolumeReport: the required field `items` is missing."))
      }
      # check the required field `total_count`
      if (!is.null(input_json$`total_count`)) {
        if (!(is.numeric(input_json$`total_count`) && length(input_json$`total_count`) == 1)) {
          stop(paste("Error! Invalid data for `total_count`. Must be an integer:", input_json$`total_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SalesVolumeReport: the required field `total_count` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SalesVolumeReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `grand_total` is null
      if (is.null(self$`grand_total`)) {
        return(FALSE)
      }

      # check if the required `items` is null
      if (is.null(self$`items`)) {
        return(FALSE)
      }

      # check if the required `total_count` is null
      if (is.null(self$`total_count`)) {
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
      # check if the required `grand_total` is null
      if (is.null(self$`grand_total`)) {
        invalid_fields["grand_total"] <- "Non-nullable required field `grand_total` cannot be null."
      }

      # check if the required `items` is null
      if (is.null(self$`items`)) {
        invalid_fields["items"] <- "Non-nullable required field `items` cannot be null."
      }

      # check if the required `total_count` is null
      if (is.null(self$`total_count`)) {
        invalid_fields["total_count"] <- "Non-nullable required field `total_count` cannot be null."
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
# SalesVolumeReport$unlock()
#
## Below is an example to define the print function
# SalesVolumeReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SalesVolumeReport$lock()

