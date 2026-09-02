#' Create a new GuVReport
#'
#' @description
#' GuVReport Class
#'
#' @docType class
#' @title GuVReport
#' @description GuVReport Class
#' @format An \code{R6Class} generator object
#' @field expenses  list(\link{GuVItem})
#' @field generated_at  character
#' @field net_income  character
#' @field period  character
#' @field revenue  list(\link{GuVItem})
#' @field total_expenses  character
#' @field total_revenue  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GuVReport <- R6::R6Class(
  "GuVReport",
  public = list(
    `expenses` = NULL,
    `generated_at` = NULL,
    `net_income` = NULL,
    `period` = NULL,
    `revenue` = NULL,
    `total_expenses` = NULL,
    `total_revenue` = NULL,

    #' @description
    #' Initialize a new GuVReport class.
    #'
    #' @param expenses expenses
    #' @param generated_at generated_at
    #' @param net_income net_income
    #' @param period period
    #' @param revenue revenue
    #' @param total_expenses total_expenses
    #' @param total_revenue total_revenue
    #' @param ... Other optional arguments.
    initialize = function(`expenses`, `generated_at`, `net_income`, `period`, `revenue`, `total_expenses`, `total_revenue`, ...) {
      if (!missing(`expenses`)) {
        stopifnot(is.vector(`expenses`), length(`expenses`) != 0)
        sapply(`expenses`, function(x) stopifnot(R6::is.R6(x)))
        self$`expenses` <- `expenses`
      }
      if (!missing(`generated_at`)) {
        if (!(is.character(`generated_at`) && length(`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", `generated_at`))
        }
        self$`generated_at` <- `generated_at`
      }
      if (!missing(`net_income`)) {
        if (!(is.character(`net_income`) && length(`net_income`) == 1)) {
          stop(paste("Error! Invalid data for `net_income`. Must be a string:", `net_income`))
        }
        self$`net_income` <- `net_income`
      }
      if (!missing(`period`)) {
        if (!(is.character(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", `period`))
        }
        self$`period` <- `period`
      }
      if (!missing(`revenue`)) {
        stopifnot(is.vector(`revenue`), length(`revenue`) != 0)
        sapply(`revenue`, function(x) stopifnot(R6::is.R6(x)))
        self$`revenue` <- `revenue`
      }
      if (!missing(`total_expenses`)) {
        if (!(is.character(`total_expenses`) && length(`total_expenses`) == 1)) {
          stop(paste("Error! Invalid data for `total_expenses`. Must be a string:", `total_expenses`))
        }
        self$`total_expenses` <- `total_expenses`
      }
      if (!missing(`total_revenue`)) {
        if (!(is.character(`total_revenue`) && length(`total_revenue`) == 1)) {
          stop(paste("Error! Invalid data for `total_revenue`. Must be a string:", `total_revenue`))
        }
        self$`total_revenue` <- `total_revenue`
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
    #' @return GuVReport as a base R list.
    #' @examples
    #' # convert array of GuVReport (x) to a data frame
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
    #' Convert GuVReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GuVReportObject <- list()
      if (!is.null(self$`expenses`)) {
        GuVReportObject[["expenses"]] <-
          self$extractSimpleType(self$`expenses`)
      }
      if (!is.null(self$`generated_at`)) {
        GuVReportObject[["generated_at"]] <-
          self$`generated_at`
      }
      if (!is.null(self$`net_income`)) {
        GuVReportObject[["net_income"]] <-
          self$`net_income`
      }
      if (!is.null(self$`period`)) {
        GuVReportObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`revenue`)) {
        GuVReportObject[["revenue"]] <-
          self$extractSimpleType(self$`revenue`)
      }
      if (!is.null(self$`total_expenses`)) {
        GuVReportObject[["total_expenses"]] <-
          self$`total_expenses`
      }
      if (!is.null(self$`total_revenue`)) {
        GuVReportObject[["total_revenue"]] <-
          self$`total_revenue`
      }
      return(GuVReportObject)
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
    #' Deserialize JSON string into an instance of GuVReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuVReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`expenses`)) {
        self$`expenses` <- ApiClient$new()$deserializeObj(this_object$`expenses`, "array[GuVItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`generated_at`)) {
        self$`generated_at` <- this_object$`generated_at`
      }
      if (!is.null(this_object$`net_income`)) {
        self$`net_income` <- this_object$`net_income`
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`revenue`)) {
        self$`revenue` <- ApiClient$new()$deserializeObj(this_object$`revenue`, "array[GuVItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`total_expenses`)) {
        self$`total_expenses` <- this_object$`total_expenses`
      }
      if (!is.null(this_object$`total_revenue`)) {
        self$`total_revenue` <- this_object$`total_revenue`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GuVReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GuVReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuVReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`expenses` <- ApiClient$new()$deserializeObj(this_object$`expenses`, "array[GuVItem]", loadNamespace("openapi"))
      self$`generated_at` <- this_object$`generated_at`
      self$`net_income` <- this_object$`net_income`
      self$`period` <- this_object$`period`
      self$`revenue` <- ApiClient$new()$deserializeObj(this_object$`revenue`, "array[GuVItem]", loadNamespace("openapi"))
      self$`total_expenses` <- this_object$`total_expenses`
      self$`total_revenue` <- this_object$`total_revenue`
      self
    },

    #' @description
    #' Validate JSON input with respect to GuVReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `expenses`
      if (!is.null(input_json$`expenses`)) {
        stopifnot(is.vector(input_json$`expenses`), length(input_json$`expenses`) != 0)
        tmp <- sapply(input_json$`expenses`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GuVReport: the required field `expenses` is missing."))
      }
      # check the required field `generated_at`
      if (!is.null(input_json$`generated_at`)) {
        if (!(is.character(input_json$`generated_at`) && length(input_json$`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", input_json$`generated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GuVReport: the required field `generated_at` is missing."))
      }
      # check the required field `net_income`
      if (!is.null(input_json$`net_income`)) {
        if (!(is.character(input_json$`net_income`) && length(input_json$`net_income`) == 1)) {
          stop(paste("Error! Invalid data for `net_income`. Must be a string:", input_json$`net_income`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GuVReport: the required field `net_income` is missing."))
      }
      # check the required field `period`
      if (!is.null(input_json$`period`)) {
        if (!(is.character(input_json$`period`) && length(input_json$`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", input_json$`period`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GuVReport: the required field `period` is missing."))
      }
      # check the required field `revenue`
      if (!is.null(input_json$`revenue`)) {
        stopifnot(is.vector(input_json$`revenue`), length(input_json$`revenue`) != 0)
        tmp <- sapply(input_json$`revenue`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GuVReport: the required field `revenue` is missing."))
      }
      # check the required field `total_expenses`
      if (!is.null(input_json$`total_expenses`)) {
        if (!(is.character(input_json$`total_expenses`) && length(input_json$`total_expenses`) == 1)) {
          stop(paste("Error! Invalid data for `total_expenses`. Must be a string:", input_json$`total_expenses`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GuVReport: the required field `total_expenses` is missing."))
      }
      # check the required field `total_revenue`
      if (!is.null(input_json$`total_revenue`)) {
        if (!(is.character(input_json$`total_revenue`) && length(input_json$`total_revenue`) == 1)) {
          stop(paste("Error! Invalid data for `total_revenue`. Must be a string:", input_json$`total_revenue`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GuVReport: the required field `total_revenue` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GuVReport
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

      # check if the required `net_income` is null
      if (is.null(self$`net_income`)) {
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

      # check if the required `total_expenses` is null
      if (is.null(self$`total_expenses`)) {
        return(FALSE)
      }

      # check if the required `total_revenue` is null
      if (is.null(self$`total_revenue`)) {
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

      # check if the required `net_income` is null
      if (is.null(self$`net_income`)) {
        invalid_fields["net_income"] <- "Non-nullable required field `net_income` cannot be null."
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        invalid_fields["period"] <- "Non-nullable required field `period` cannot be null."
      }

      # check if the required `revenue` is null
      if (is.null(self$`revenue`)) {
        invalid_fields["revenue"] <- "Non-nullable required field `revenue` cannot be null."
      }

      # check if the required `total_expenses` is null
      if (is.null(self$`total_expenses`)) {
        invalid_fields["total_expenses"] <- "Non-nullable required field `total_expenses` cannot be null."
      }

      # check if the required `total_revenue` is null
      if (is.null(self$`total_revenue`)) {
        invalid_fields["total_revenue"] <- "Non-nullable required field `total_revenue` cannot be null."
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
# GuVReport$unlock()
#
## Below is an example to define the print function
# GuVReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GuVReport$lock()

