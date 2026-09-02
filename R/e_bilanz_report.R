#' Create a new EBilanzReport
#'
#' @description
#' EBilanzReport Class
#'
#' @docType class
#' @title EBilanzReport
#' @description EBilanzReport Class
#' @format An \code{R6Class} generator object
#' @field account_overview  list(\link{AccountOverview})
#' @field balance_sheet  \link{BalanceSheet}
#' @field generated_at  character
#' @field income_statement  \link{IncomeStatement}
#' @field period  character
#' @field vat_summary  \link{VatSummary}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EBilanzReport <- R6::R6Class(
  "EBilanzReport",
  public = list(
    `account_overview` = NULL,
    `balance_sheet` = NULL,
    `generated_at` = NULL,
    `income_statement` = NULL,
    `period` = NULL,
    `vat_summary` = NULL,

    #' @description
    #' Initialize a new EBilanzReport class.
    #'
    #' @param account_overview account_overview
    #' @param balance_sheet balance_sheet
    #' @param generated_at generated_at
    #' @param income_statement income_statement
    #' @param period period
    #' @param vat_summary vat_summary
    #' @param ... Other optional arguments.
    initialize = function(`account_overview`, `balance_sheet`, `generated_at`, `income_statement`, `period`, `vat_summary`, ...) {
      if (!missing(`account_overview`)) {
        stopifnot(is.vector(`account_overview`), length(`account_overview`) != 0)
        sapply(`account_overview`, function(x) stopifnot(R6::is.R6(x)))
        self$`account_overview` <- `account_overview`
      }
      if (!missing(`balance_sheet`)) {
        stopifnot(R6::is.R6(`balance_sheet`))
        self$`balance_sheet` <- `balance_sheet`
      }
      if (!missing(`generated_at`)) {
        if (!(is.character(`generated_at`) && length(`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", `generated_at`))
        }
        self$`generated_at` <- `generated_at`
      }
      if (!missing(`income_statement`)) {
        stopifnot(R6::is.R6(`income_statement`))
        self$`income_statement` <- `income_statement`
      }
      if (!missing(`period`)) {
        if (!(is.character(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", `period`))
        }
        self$`period` <- `period`
      }
      if (!missing(`vat_summary`)) {
        stopifnot(R6::is.R6(`vat_summary`))
        self$`vat_summary` <- `vat_summary`
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
    #' @return EBilanzReport as a base R list.
    #' @examples
    #' # convert array of EBilanzReport (x) to a data frame
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
    #' Convert EBilanzReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EBilanzReportObject <- list()
      if (!is.null(self$`account_overview`)) {
        EBilanzReportObject[["account_overview"]] <-
          self$extractSimpleType(self$`account_overview`)
      }
      if (!is.null(self$`balance_sheet`)) {
        EBilanzReportObject[["balance_sheet"]] <-
          self$extractSimpleType(self$`balance_sheet`)
      }
      if (!is.null(self$`generated_at`)) {
        EBilanzReportObject[["generated_at"]] <-
          self$`generated_at`
      }
      if (!is.null(self$`income_statement`)) {
        EBilanzReportObject[["income_statement"]] <-
          self$extractSimpleType(self$`income_statement`)
      }
      if (!is.null(self$`period`)) {
        EBilanzReportObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`vat_summary`)) {
        EBilanzReportObject[["vat_summary"]] <-
          self$extractSimpleType(self$`vat_summary`)
      }
      return(EBilanzReportObject)
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
    #' Deserialize JSON string into an instance of EBilanzReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of EBilanzReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`account_overview`)) {
        self$`account_overview` <- ApiClient$new()$deserializeObj(this_object$`account_overview`, "array[AccountOverview]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`balance_sheet`)) {
        `balance_sheet_object` <- BalanceSheet$new()
        `balance_sheet_object`$fromJSON(jsonlite::toJSON(this_object$`balance_sheet`, auto_unbox = TRUE, digits = NA))
        self$`balance_sheet` <- `balance_sheet_object`
      }
      if (!is.null(this_object$`generated_at`)) {
        self$`generated_at` <- this_object$`generated_at`
      }
      if (!is.null(this_object$`income_statement`)) {
        `income_statement_object` <- IncomeStatement$new()
        `income_statement_object`$fromJSON(jsonlite::toJSON(this_object$`income_statement`, auto_unbox = TRUE, digits = NA))
        self$`income_statement` <- `income_statement_object`
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`vat_summary`)) {
        `vat_summary_object` <- VatSummary$new()
        `vat_summary_object`$fromJSON(jsonlite::toJSON(this_object$`vat_summary`, auto_unbox = TRUE, digits = NA))
        self$`vat_summary` <- `vat_summary_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EBilanzReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EBilanzReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of EBilanzReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`account_overview` <- ApiClient$new()$deserializeObj(this_object$`account_overview`, "array[AccountOverview]", loadNamespace("openapi"))
      self$`balance_sheet` <- BalanceSheet$new()$fromJSON(jsonlite::toJSON(this_object$`balance_sheet`, auto_unbox = TRUE, digits = NA))
      self$`generated_at` <- this_object$`generated_at`
      self$`income_statement` <- IncomeStatement$new()$fromJSON(jsonlite::toJSON(this_object$`income_statement`, auto_unbox = TRUE, digits = NA))
      self$`period` <- this_object$`period`
      self$`vat_summary` <- VatSummary$new()$fromJSON(jsonlite::toJSON(this_object$`vat_summary`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to EBilanzReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `account_overview`
      if (!is.null(input_json$`account_overview`)) {
        stopifnot(is.vector(input_json$`account_overview`), length(input_json$`account_overview`) != 0)
        tmp <- sapply(input_json$`account_overview`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EBilanzReport: the required field `account_overview` is missing."))
      }
      # check the required field `balance_sheet`
      if (!is.null(input_json$`balance_sheet`)) {
        stopifnot(R6::is.R6(input_json$`balance_sheet`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EBilanzReport: the required field `balance_sheet` is missing."))
      }
      # check the required field `generated_at`
      if (!is.null(input_json$`generated_at`)) {
        if (!(is.character(input_json$`generated_at`) && length(input_json$`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", input_json$`generated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EBilanzReport: the required field `generated_at` is missing."))
      }
      # check the required field `income_statement`
      if (!is.null(input_json$`income_statement`)) {
        stopifnot(R6::is.R6(input_json$`income_statement`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EBilanzReport: the required field `income_statement` is missing."))
      }
      # check the required field `period`
      if (!is.null(input_json$`period`)) {
        if (!(is.character(input_json$`period`) && length(input_json$`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", input_json$`period`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EBilanzReport: the required field `period` is missing."))
      }
      # check the required field `vat_summary`
      if (!is.null(input_json$`vat_summary`)) {
        stopifnot(R6::is.R6(input_json$`vat_summary`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EBilanzReport: the required field `vat_summary` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EBilanzReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `account_overview` is null
      if (is.null(self$`account_overview`)) {
        return(FALSE)
      }

      # check if the required `balance_sheet` is null
      if (is.null(self$`balance_sheet`)) {
        return(FALSE)
      }

      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        return(FALSE)
      }

      # check if the required `income_statement` is null
      if (is.null(self$`income_statement`)) {
        return(FALSE)
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        return(FALSE)
      }

      # check if the required `vat_summary` is null
      if (is.null(self$`vat_summary`)) {
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
      # check if the required `account_overview` is null
      if (is.null(self$`account_overview`)) {
        invalid_fields["account_overview"] <- "Non-nullable required field `account_overview` cannot be null."
      }

      # check if the required `balance_sheet` is null
      if (is.null(self$`balance_sheet`)) {
        invalid_fields["balance_sheet"] <- "Non-nullable required field `balance_sheet` cannot be null."
      }

      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        invalid_fields["generated_at"] <- "Non-nullable required field `generated_at` cannot be null."
      }

      # check if the required `income_statement` is null
      if (is.null(self$`income_statement`)) {
        invalid_fields["income_statement"] <- "Non-nullable required field `income_statement` cannot be null."
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        invalid_fields["period"] <- "Non-nullable required field `period` cannot be null."
      }

      # check if the required `vat_summary` is null
      if (is.null(self$`vat_summary`)) {
        invalid_fields["vat_summary"] <- "Non-nullable required field `vat_summary` cannot be null."
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
# EBilanzReport$unlock()
#
## Below is an example to define the print function
# EBilanzReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EBilanzReport$lock()

