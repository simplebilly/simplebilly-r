#' Create a new BWAReport
#'
#' @description
#' BWAReport Class
#'
#' @docType class
#' @title BWAReport
#' @description BWAReport Class
#' @format An \code{R6Class} generator object
#' @field expenses  \link{BWAExpenses}
#' @field generated_at  character
#' @field period  character
#' @field revenue  \link{BWARevenue}
#' @field summary  \link{BWASummary}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BWAReport <- R6::R6Class(
  "BWAReport",
  public = list(
    `expenses` = NULL,
    `generated_at` = NULL,
    `period` = NULL,
    `revenue` = NULL,
    `summary` = NULL,

    #' @description
    #' Initialize a new BWAReport class.
    #'
    #' @param expenses expenses
    #' @param generated_at generated_at
    #' @param period period
    #' @param revenue revenue
    #' @param summary summary
    #' @param ... Other optional arguments.
    initialize = function(`expenses`, `generated_at`, `period`, `revenue`, `summary`, ...) {
      if (!missing(`expenses`)) {
        stopifnot(R6::is.R6(`expenses`))
        self$`expenses` <- `expenses`
      }
      if (!missing(`generated_at`)) {
        if (!(is.character(`generated_at`) && length(`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", `generated_at`))
        }
        self$`generated_at` <- `generated_at`
      }
      if (!missing(`period`)) {
        if (!(is.character(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", `period`))
        }
        self$`period` <- `period`
      }
      if (!missing(`revenue`)) {
        stopifnot(R6::is.R6(`revenue`))
        self$`revenue` <- `revenue`
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
    #' @return BWAReport as a base R list.
    #' @examples
    #' # convert array of BWAReport (x) to a data frame
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
    #' Convert BWAReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BWAReportObject <- list()
      if (!is.null(self$`expenses`)) {
        BWAReportObject[["expenses"]] <-
          self$extractSimpleType(self$`expenses`)
      }
      if (!is.null(self$`generated_at`)) {
        BWAReportObject[["generated_at"]] <-
          self$`generated_at`
      }
      if (!is.null(self$`period`)) {
        BWAReportObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`revenue`)) {
        BWAReportObject[["revenue"]] <-
          self$extractSimpleType(self$`revenue`)
      }
      if (!is.null(self$`summary`)) {
        BWAReportObject[["summary"]] <-
          self$extractSimpleType(self$`summary`)
      }
      return(BWAReportObject)
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
    #' Deserialize JSON string into an instance of BWAReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of BWAReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`expenses`)) {
        `expenses_object` <- BWAExpenses$new()
        `expenses_object`$fromJSON(jsonlite::toJSON(this_object$`expenses`, auto_unbox = TRUE, digits = NA))
        self$`expenses` <- `expenses_object`
      }
      if (!is.null(this_object$`generated_at`)) {
        self$`generated_at` <- this_object$`generated_at`
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`revenue`)) {
        `revenue_object` <- BWARevenue$new()
        `revenue_object`$fromJSON(jsonlite::toJSON(this_object$`revenue`, auto_unbox = TRUE, digits = NA))
        self$`revenue` <- `revenue_object`
      }
      if (!is.null(this_object$`summary`)) {
        `summary_object` <- BWASummary$new()
        `summary_object`$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
        self$`summary` <- `summary_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BWAReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BWAReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of BWAReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`expenses` <- BWAExpenses$new()$fromJSON(jsonlite::toJSON(this_object$`expenses`, auto_unbox = TRUE, digits = NA))
      self$`generated_at` <- this_object$`generated_at`
      self$`period` <- this_object$`period`
      self$`revenue` <- BWARevenue$new()$fromJSON(jsonlite::toJSON(this_object$`revenue`, auto_unbox = TRUE, digits = NA))
      self$`summary` <- BWASummary$new()$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to BWAReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `expenses`
      if (!is.null(input_json$`expenses`)) {
        stopifnot(R6::is.R6(input_json$`expenses`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWAReport: the required field `expenses` is missing."))
      }
      # check the required field `generated_at`
      if (!is.null(input_json$`generated_at`)) {
        if (!(is.character(input_json$`generated_at`) && length(input_json$`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", input_json$`generated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWAReport: the required field `generated_at` is missing."))
      }
      # check the required field `period`
      if (!is.null(input_json$`period`)) {
        if (!(is.character(input_json$`period`) && length(input_json$`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", input_json$`period`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWAReport: the required field `period` is missing."))
      }
      # check the required field `revenue`
      if (!is.null(input_json$`revenue`)) {
        stopifnot(R6::is.R6(input_json$`revenue`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWAReport: the required field `revenue` is missing."))
      }
      # check the required field `summary`
      if (!is.null(input_json$`summary`)) {
        stopifnot(R6::is.R6(input_json$`summary`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWAReport: the required field `summary` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BWAReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `expenses` is null
      if (is.null(self$`expenses`)) {
        return(FALSE)
      }

      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        return(FALSE)
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        return(FALSE)
      }

      # check if the required `revenue` is null
      if (is.null(self$`revenue`)) {
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
      # check if the required `expenses` is null
      if (is.null(self$`expenses`)) {
        invalid_fields["expenses"] <- "Non-nullable required field `expenses` cannot be null."
      }

      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        invalid_fields["generated_at"] <- "Non-nullable required field `generated_at` cannot be null."
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        invalid_fields["period"] <- "Non-nullable required field `period` cannot be null."
      }

      # check if the required `revenue` is null
      if (is.null(self$`revenue`)) {
        invalid_fields["revenue"] <- "Non-nullable required field `revenue` cannot be null."
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
# BWAReport$unlock()
#
## Below is an example to define the print function
# BWAReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BWAReport$lock()

