#' Create a new CashflowReport
#'
#' @description
#' CashflowReport Class
#'
#' @docType class
#' @title CashflowReport
#' @description CashflowReport Class
#' @format An \code{R6Class} generator object
#' @field closing_balance  numeric
#' @field financing_cashflow  numeric
#' @field investing_cashflow  numeric
#' @field net_cashflow  numeric
#' @field opening_balance  numeric
#' @field operating_cashflow  numeric
#' @field period  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CashflowReport <- R6::R6Class(
  "CashflowReport",
  public = list(
    `closing_balance` = NULL,
    `financing_cashflow` = NULL,
    `investing_cashflow` = NULL,
    `net_cashflow` = NULL,
    `opening_balance` = NULL,
    `operating_cashflow` = NULL,
    `period` = NULL,

    #' @description
    #' Initialize a new CashflowReport class.
    #'
    #' @param closing_balance closing_balance
    #' @param financing_cashflow financing_cashflow
    #' @param investing_cashflow investing_cashflow
    #' @param net_cashflow net_cashflow
    #' @param opening_balance opening_balance
    #' @param operating_cashflow operating_cashflow
    #' @param period period
    #' @param ... Other optional arguments.
    initialize = function(`closing_balance`, `financing_cashflow`, `investing_cashflow`, `net_cashflow`, `opening_balance`, `operating_cashflow`, `period`, ...) {
      if (!missing(`closing_balance`)) {
        if (!(is.numeric(`closing_balance`) && length(`closing_balance`) == 1)) {
          stop(paste("Error! Invalid data for `closing_balance`. Must be a number:", `closing_balance`))
        }
        self$`closing_balance` <- `closing_balance`
      }
      if (!missing(`financing_cashflow`)) {
        if (!(is.numeric(`financing_cashflow`) && length(`financing_cashflow`) == 1)) {
          stop(paste("Error! Invalid data for `financing_cashflow`. Must be a number:", `financing_cashflow`))
        }
        self$`financing_cashflow` <- `financing_cashflow`
      }
      if (!missing(`investing_cashflow`)) {
        if (!(is.numeric(`investing_cashflow`) && length(`investing_cashflow`) == 1)) {
          stop(paste("Error! Invalid data for `investing_cashflow`. Must be a number:", `investing_cashflow`))
        }
        self$`investing_cashflow` <- `investing_cashflow`
      }
      if (!missing(`net_cashflow`)) {
        if (!(is.numeric(`net_cashflow`) && length(`net_cashflow`) == 1)) {
          stop(paste("Error! Invalid data for `net_cashflow`. Must be a number:", `net_cashflow`))
        }
        self$`net_cashflow` <- `net_cashflow`
      }
      if (!missing(`opening_balance`)) {
        if (!(is.numeric(`opening_balance`) && length(`opening_balance`) == 1)) {
          stop(paste("Error! Invalid data for `opening_balance`. Must be a number:", `opening_balance`))
        }
        self$`opening_balance` <- `opening_balance`
      }
      if (!missing(`operating_cashflow`)) {
        if (!(is.numeric(`operating_cashflow`) && length(`operating_cashflow`) == 1)) {
          stop(paste("Error! Invalid data for `operating_cashflow`. Must be a number:", `operating_cashflow`))
        }
        self$`operating_cashflow` <- `operating_cashflow`
      }
      if (!missing(`period`)) {
        if (!(is.character(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", `period`))
        }
        self$`period` <- `period`
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
    #' @return CashflowReport as a base R list.
    #' @examples
    #' # convert array of CashflowReport (x) to a data frame
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
    #' Convert CashflowReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CashflowReportObject <- list()
      if (!is.null(self$`closing_balance`)) {
        CashflowReportObject[["closing_balance"]] <-
          self$`closing_balance`
      }
      if (!is.null(self$`financing_cashflow`)) {
        CashflowReportObject[["financing_cashflow"]] <-
          self$`financing_cashflow`
      }
      if (!is.null(self$`investing_cashflow`)) {
        CashflowReportObject[["investing_cashflow"]] <-
          self$`investing_cashflow`
      }
      if (!is.null(self$`net_cashflow`)) {
        CashflowReportObject[["net_cashflow"]] <-
          self$`net_cashflow`
      }
      if (!is.null(self$`opening_balance`)) {
        CashflowReportObject[["opening_balance"]] <-
          self$`opening_balance`
      }
      if (!is.null(self$`operating_cashflow`)) {
        CashflowReportObject[["operating_cashflow"]] <-
          self$`operating_cashflow`
      }
      if (!is.null(self$`period`)) {
        CashflowReportObject[["period"]] <-
          self$`period`
      }
      return(CashflowReportObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CashflowReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of CashflowReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`closing_balance`)) {
        self$`closing_balance` <- this_object$`closing_balance`
      }
      if (!is.null(this_object$`financing_cashflow`)) {
        self$`financing_cashflow` <- this_object$`financing_cashflow`
      }
      if (!is.null(this_object$`investing_cashflow`)) {
        self$`investing_cashflow` <- this_object$`investing_cashflow`
      }
      if (!is.null(this_object$`net_cashflow`)) {
        self$`net_cashflow` <- this_object$`net_cashflow`
      }
      if (!is.null(this_object$`opening_balance`)) {
        self$`opening_balance` <- this_object$`opening_balance`
      }
      if (!is.null(this_object$`operating_cashflow`)) {
        self$`operating_cashflow` <- this_object$`operating_cashflow`
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CashflowReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CashflowReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of CashflowReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`closing_balance` <- this_object$`closing_balance`
      self$`financing_cashflow` <- this_object$`financing_cashflow`
      self$`investing_cashflow` <- this_object$`investing_cashflow`
      self$`net_cashflow` <- this_object$`net_cashflow`
      self$`opening_balance` <- this_object$`opening_balance`
      self$`operating_cashflow` <- this_object$`operating_cashflow`
      self$`period` <- this_object$`period`
      self
    },

    #' @description
    #' Validate JSON input with respect to CashflowReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `closing_balance`
      if (!is.null(input_json$`closing_balance`)) {
        if (!(is.numeric(input_json$`closing_balance`) && length(input_json$`closing_balance`) == 1)) {
          stop(paste("Error! Invalid data for `closing_balance`. Must be a number:", input_json$`closing_balance`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CashflowReport: the required field `closing_balance` is missing."))
      }
      # check the required field `financing_cashflow`
      if (!is.null(input_json$`financing_cashflow`)) {
        if (!(is.numeric(input_json$`financing_cashflow`) && length(input_json$`financing_cashflow`) == 1)) {
          stop(paste("Error! Invalid data for `financing_cashflow`. Must be a number:", input_json$`financing_cashflow`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CashflowReport: the required field `financing_cashflow` is missing."))
      }
      # check the required field `investing_cashflow`
      if (!is.null(input_json$`investing_cashflow`)) {
        if (!(is.numeric(input_json$`investing_cashflow`) && length(input_json$`investing_cashflow`) == 1)) {
          stop(paste("Error! Invalid data for `investing_cashflow`. Must be a number:", input_json$`investing_cashflow`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CashflowReport: the required field `investing_cashflow` is missing."))
      }
      # check the required field `net_cashflow`
      if (!is.null(input_json$`net_cashflow`)) {
        if (!(is.numeric(input_json$`net_cashflow`) && length(input_json$`net_cashflow`) == 1)) {
          stop(paste("Error! Invalid data for `net_cashflow`. Must be a number:", input_json$`net_cashflow`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CashflowReport: the required field `net_cashflow` is missing."))
      }
      # check the required field `opening_balance`
      if (!is.null(input_json$`opening_balance`)) {
        if (!(is.numeric(input_json$`opening_balance`) && length(input_json$`opening_balance`) == 1)) {
          stop(paste("Error! Invalid data for `opening_balance`. Must be a number:", input_json$`opening_balance`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CashflowReport: the required field `opening_balance` is missing."))
      }
      # check the required field `operating_cashflow`
      if (!is.null(input_json$`operating_cashflow`)) {
        if (!(is.numeric(input_json$`operating_cashflow`) && length(input_json$`operating_cashflow`) == 1)) {
          stop(paste("Error! Invalid data for `operating_cashflow`. Must be a number:", input_json$`operating_cashflow`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CashflowReport: the required field `operating_cashflow` is missing."))
      }
      # check the required field `period`
      if (!is.null(input_json$`period`)) {
        if (!(is.character(input_json$`period`) && length(input_json$`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", input_json$`period`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CashflowReport: the required field `period` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CashflowReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `closing_balance` is null
      if (is.null(self$`closing_balance`)) {
        return(FALSE)
      }

      # check if the required `financing_cashflow` is null
      if (is.null(self$`financing_cashflow`)) {
        return(FALSE)
      }

      # check if the required `investing_cashflow` is null
      if (is.null(self$`investing_cashflow`)) {
        return(FALSE)
      }

      # check if the required `net_cashflow` is null
      if (is.null(self$`net_cashflow`)) {
        return(FALSE)
      }

      # check if the required `opening_balance` is null
      if (is.null(self$`opening_balance`)) {
        return(FALSE)
      }

      # check if the required `operating_cashflow` is null
      if (is.null(self$`operating_cashflow`)) {
        return(FALSE)
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
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
      # check if the required `closing_balance` is null
      if (is.null(self$`closing_balance`)) {
        invalid_fields["closing_balance"] <- "Non-nullable required field `closing_balance` cannot be null."
      }

      # check if the required `financing_cashflow` is null
      if (is.null(self$`financing_cashflow`)) {
        invalid_fields["financing_cashflow"] <- "Non-nullable required field `financing_cashflow` cannot be null."
      }

      # check if the required `investing_cashflow` is null
      if (is.null(self$`investing_cashflow`)) {
        invalid_fields["investing_cashflow"] <- "Non-nullable required field `investing_cashflow` cannot be null."
      }

      # check if the required `net_cashflow` is null
      if (is.null(self$`net_cashflow`)) {
        invalid_fields["net_cashflow"] <- "Non-nullable required field `net_cashflow` cannot be null."
      }

      # check if the required `opening_balance` is null
      if (is.null(self$`opening_balance`)) {
        invalid_fields["opening_balance"] <- "Non-nullable required field `opening_balance` cannot be null."
      }

      # check if the required `operating_cashflow` is null
      if (is.null(self$`operating_cashflow`)) {
        invalid_fields["operating_cashflow"] <- "Non-nullable required field `operating_cashflow` cannot be null."
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        invalid_fields["period"] <- "Non-nullable required field `period` cannot be null."
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
# CashflowReport$unlock()
#
## Below is an example to define the print function
# CashflowReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CashflowReport$lock()

