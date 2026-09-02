#' Create a new PlausibilityReport
#'
#' @description
#' PlausibilityReport Class
#'
#' @docType class
#' @title PlausibilityReport
#' @description PlausibilityReport Class
#' @format An \code{R6Class} generator object
#' @field checks  list(\link{PlausibilityCheck})
#' @field generated_at  character
#' @field summary  \link{PlausibilitySummary}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PlausibilityReport <- R6::R6Class(
  "PlausibilityReport",
  public = list(
    `checks` = NULL,
    `generated_at` = NULL,
    `summary` = NULL,

    #' @description
    #' Initialize a new PlausibilityReport class.
    #'
    #' @param checks checks
    #' @param generated_at generated_at
    #' @param summary summary
    #' @param ... Other optional arguments.
    initialize = function(`checks`, `generated_at`, `summary`, ...) {
      if (!missing(`checks`)) {
        stopifnot(is.vector(`checks`), length(`checks`) != 0)
        sapply(`checks`, function(x) stopifnot(R6::is.R6(x)))
        self$`checks` <- `checks`
      }
      if (!missing(`generated_at`)) {
        if (!(is.character(`generated_at`) && length(`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", `generated_at`))
        }
        self$`generated_at` <- `generated_at`
      }
      if (!missing(`summary`)) {
        stopifnot(R6::is.R6(`summary`))
        self$`summary` <- `summary`
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
    #' @return PlausibilityReport as a base R list.
    #' @examples
    #' # convert array of PlausibilityReport (x) to a data frame
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
    #' Convert PlausibilityReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PlausibilityReportObject <- list()
      if (!is.null(self$`checks`)) {
        PlausibilityReportObject[["checks"]] <-
          self$extractSimpleType(self$`checks`)
      }
      if (!is.null(self$`generated_at`)) {
        PlausibilityReportObject[["generated_at"]] <-
          self$`generated_at`
      }
      if (!is.null(self$`summary`)) {
        PlausibilityReportObject[["summary"]] <-
          self$extractSimpleType(self$`summary`)
      }
      return(PlausibilityReportObject)
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
    #' Deserialize JSON string into an instance of PlausibilityReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlausibilityReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`checks`)) {
        self$`checks` <- ApiClient$new()$deserializeObj(this_object$`checks`, "array[PlausibilityCheck]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`generated_at`)) {
        self$`generated_at` <- this_object$`generated_at`
      }
      if (!is.null(this_object$`summary`)) {
        `summary_object` <- PlausibilitySummary$new()
        `summary_object`$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
        self$`summary` <- `summary_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PlausibilityReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PlausibilityReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlausibilityReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`checks` <- ApiClient$new()$deserializeObj(this_object$`checks`, "array[PlausibilityCheck]", loadNamespace("openapi"))
      self$`generated_at` <- this_object$`generated_at`
      self$`summary` <- PlausibilitySummary$new()$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to PlausibilityReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `checks`
      if (!is.null(input_json$`checks`)) {
        stopifnot(is.vector(input_json$`checks`), length(input_json$`checks`) != 0)
        tmp <- sapply(input_json$`checks`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlausibilityReport: the required field `checks` is missing."))
      }
      # check the required field `generated_at`
      if (!is.null(input_json$`generated_at`)) {
        if (!(is.character(input_json$`generated_at`) && length(input_json$`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", input_json$`generated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlausibilityReport: the required field `generated_at` is missing."))
      }
      # check the required field `summary`
      if (!is.null(input_json$`summary`)) {
        stopifnot(R6::is.R6(input_json$`summary`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlausibilityReport: the required field `summary` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PlausibilityReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `checks` is null
      if (is.null(self$`checks`)) {
        return(FALSE)
      }

      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        return(FALSE)
      }

      # check if the required `summary` is null
      if (is.null(self$`summary`)) {
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
      # check if the required `checks` is null
      if (is.null(self$`checks`)) {
        invalid_fields["checks"] <- "Non-nullable required field `checks` cannot be null."
      }

      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        invalid_fields["generated_at"] <- "Non-nullable required field `generated_at` cannot be null."
      }

      # check if the required `summary` is null
      if (is.null(self$`summary`)) {
        invalid_fields["summary"] <- "Non-nullable required field `summary` cannot be null."
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
# PlausibilityReport$unlock()
#
## Below is an example to define the print function
# PlausibilityReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PlausibilityReport$lock()

