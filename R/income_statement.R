#' Create a new IncomeStatement
#'
#' @description
#' IncomeStatement Class
#'
#' @docType class
#' @title IncomeStatement
#' @description IncomeStatement Class
#' @format An \code{R6Class} generator object
#' @field expense_items  list(\link{PnLItem})
#' @field net_income  character
#' @field revenue_items  list(\link{PnLItem})
#' @field total_expenses  character
#' @field total_revenue  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IncomeStatement <- R6::R6Class(
  "IncomeStatement",
  public = list(
    `expense_items` = NULL,
    `net_income` = NULL,
    `revenue_items` = NULL,
    `total_expenses` = NULL,
    `total_revenue` = NULL,

    #' @description
    #' Initialize a new IncomeStatement class.
    #'
    #' @param expense_items expense_items
    #' @param net_income net_income
    #' @param revenue_items revenue_items
    #' @param total_expenses total_expenses
    #' @param total_revenue total_revenue
    #' @param ... Other optional arguments.
    initialize = function(`expense_items`, `net_income`, `revenue_items`, `total_expenses`, `total_revenue`, ...) {
      if (!missing(`expense_items`)) {
        stopifnot(is.vector(`expense_items`), length(`expense_items`) != 0)
        sapply(`expense_items`, function(x) stopifnot(R6::is.R6(x)))
        self$`expense_items` <- `expense_items`
      }
      if (!missing(`net_income`)) {
        if (!(is.character(`net_income`) && length(`net_income`) == 1)) {
          stop(paste("Error! Invalid data for `net_income`. Must be a string:", `net_income`))
        }
        self$`net_income` <- `net_income`
      }
      if (!missing(`revenue_items`)) {
        stopifnot(is.vector(`revenue_items`), length(`revenue_items`) != 0)
        sapply(`revenue_items`, function(x) stopifnot(R6::is.R6(x)))
        self$`revenue_items` <- `revenue_items`
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
    #' @return IncomeStatement as a base R list.
    #' @examples
    #' # convert array of IncomeStatement (x) to a data frame
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
    #' Convert IncomeStatement to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IncomeStatementObject <- list()
      if (!is.null(self$`expense_items`)) {
        IncomeStatementObject[["expense_items"]] <-
          self$extractSimpleType(self$`expense_items`)
      }
      if (!is.null(self$`net_income`)) {
        IncomeStatementObject[["net_income"]] <-
          self$`net_income`
      }
      if (!is.null(self$`revenue_items`)) {
        IncomeStatementObject[["revenue_items"]] <-
          self$extractSimpleType(self$`revenue_items`)
      }
      if (!is.null(self$`total_expenses`)) {
        IncomeStatementObject[["total_expenses"]] <-
          self$`total_expenses`
      }
      if (!is.null(self$`total_revenue`)) {
        IncomeStatementObject[["total_revenue"]] <-
          self$`total_revenue`
      }
      return(IncomeStatementObject)
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
    #' Deserialize JSON string into an instance of IncomeStatement
    #'
    #' @param input_json the JSON input
    #' @return the instance of IncomeStatement
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`expense_items`)) {
        self$`expense_items` <- ApiClient$new()$deserializeObj(this_object$`expense_items`, "array[PnLItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`net_income`)) {
        self$`net_income` <- this_object$`net_income`
      }
      if (!is.null(this_object$`revenue_items`)) {
        self$`revenue_items` <- ApiClient$new()$deserializeObj(this_object$`revenue_items`, "array[PnLItem]", loadNamespace("openapi"))
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
    #' @return IncomeStatement in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IncomeStatement
    #'
    #' @param input_json the JSON input
    #' @return the instance of IncomeStatement
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`expense_items` <- ApiClient$new()$deserializeObj(this_object$`expense_items`, "array[PnLItem]", loadNamespace("openapi"))
      self$`net_income` <- this_object$`net_income`
      self$`revenue_items` <- ApiClient$new()$deserializeObj(this_object$`revenue_items`, "array[PnLItem]", loadNamespace("openapi"))
      self$`total_expenses` <- this_object$`total_expenses`
      self$`total_revenue` <- this_object$`total_revenue`
      self
    },

    #' @description
    #' Validate JSON input with respect to IncomeStatement and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `expense_items`
      if (!is.null(input_json$`expense_items`)) {
        stopifnot(is.vector(input_json$`expense_items`), length(input_json$`expense_items`) != 0)
        tmp <- sapply(input_json$`expense_items`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IncomeStatement: the required field `expense_items` is missing."))
      }
      # check the required field `net_income`
      if (!is.null(input_json$`net_income`)) {
        if (!(is.character(input_json$`net_income`) && length(input_json$`net_income`) == 1)) {
          stop(paste("Error! Invalid data for `net_income`. Must be a string:", input_json$`net_income`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IncomeStatement: the required field `net_income` is missing."))
      }
      # check the required field `revenue_items`
      if (!is.null(input_json$`revenue_items`)) {
        stopifnot(is.vector(input_json$`revenue_items`), length(input_json$`revenue_items`) != 0)
        tmp <- sapply(input_json$`revenue_items`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IncomeStatement: the required field `revenue_items` is missing."))
      }
      # check the required field `total_expenses`
      if (!is.null(input_json$`total_expenses`)) {
        if (!(is.character(input_json$`total_expenses`) && length(input_json$`total_expenses`) == 1)) {
          stop(paste("Error! Invalid data for `total_expenses`. Must be a string:", input_json$`total_expenses`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IncomeStatement: the required field `total_expenses` is missing."))
      }
      # check the required field `total_revenue`
      if (!is.null(input_json$`total_revenue`)) {
        if (!(is.character(input_json$`total_revenue`) && length(input_json$`total_revenue`) == 1)) {
          stop(paste("Error! Invalid data for `total_revenue`. Must be a string:", input_json$`total_revenue`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IncomeStatement: the required field `total_revenue` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IncomeStatement
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `expense_items` is null
      if (is.null(self$`expense_items`)) {
        return(FALSE)
      }

      # check if the required `net_income` is null
      if (is.null(self$`net_income`)) {
        return(FALSE)
      }

      # check if the required `revenue_items` is null
      if (is.null(self$`revenue_items`)) {
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
      # check if the required `expense_items` is null
      if (is.null(self$`expense_items`)) {
        invalid_fields["expense_items"] <- "Non-nullable required field `expense_items` cannot be null."
      }

      # check if the required `net_income` is null
      if (is.null(self$`net_income`)) {
        invalid_fields["net_income"] <- "Non-nullable required field `net_income` cannot be null."
      }

      # check if the required `revenue_items` is null
      if (is.null(self$`revenue_items`)) {
        invalid_fields["revenue_items"] <- "Non-nullable required field `revenue_items` cannot be null."
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
# IncomeStatement$unlock()
#
## Below is an example to define the print function
# IncomeStatement$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IncomeStatement$lock()

