#' Create a new BWAExpenses
#'
#' @description
#' BWAExpenses Class
#'
#' @docType class
#' @title BWAExpenses
#' @description BWAExpenses Class
#' @format An \code{R6Class} generator object
#' @field expense_breakdown  list(\link{ExpenseItem})
#' @field total_expenses  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BWAExpenses <- R6::R6Class(
  "BWAExpenses",
  public = list(
    `expense_breakdown` = NULL,
    `total_expenses` = NULL,

    #' @description
    #' Initialize a new BWAExpenses class.
    #'
    #' @param expense_breakdown expense_breakdown
    #' @param total_expenses total_expenses
    #' @param ... Other optional arguments.
    initialize = function(`expense_breakdown`, `total_expenses`, ...) {
      if (!missing(`expense_breakdown`)) {
        stopifnot(is.vector(`expense_breakdown`), length(`expense_breakdown`) != 0)
        sapply(`expense_breakdown`, function(x) stopifnot(R6::is.R6(x)))
        self$`expense_breakdown` <- `expense_breakdown`
      }
      if (!missing(`total_expenses`)) {
        if (!(is.character(`total_expenses`) && length(`total_expenses`) == 1)) {
          stop(paste("Error! Invalid data for `total_expenses`. Must be a string:", `total_expenses`))
        }
        self$`total_expenses` <- `total_expenses`
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
    #' @return BWAExpenses as a base R list.
    #' @examples
    #' # convert array of BWAExpenses (x) to a data frame
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
    #' Convert BWAExpenses to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BWAExpensesObject <- list()
      if (!is.null(self$`expense_breakdown`)) {
        BWAExpensesObject[["expense_breakdown"]] <-
          self$extractSimpleType(self$`expense_breakdown`)
      }
      if (!is.null(self$`total_expenses`)) {
        BWAExpensesObject[["total_expenses"]] <-
          self$`total_expenses`
      }
      return(BWAExpensesObject)
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
    #' Deserialize JSON string into an instance of BWAExpenses
    #'
    #' @param input_json the JSON input
    #' @return the instance of BWAExpenses
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`expense_breakdown`)) {
        self$`expense_breakdown` <- ApiClient$new()$deserializeObj(this_object$`expense_breakdown`, "array[ExpenseItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`total_expenses`)) {
        self$`total_expenses` <- this_object$`total_expenses`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BWAExpenses in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BWAExpenses
    #'
    #' @param input_json the JSON input
    #' @return the instance of BWAExpenses
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`expense_breakdown` <- ApiClient$new()$deserializeObj(this_object$`expense_breakdown`, "array[ExpenseItem]", loadNamespace("openapi"))
      self$`total_expenses` <- this_object$`total_expenses`
      self
    },

    #' @description
    #' Validate JSON input with respect to BWAExpenses and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `expense_breakdown`
      if (!is.null(input_json$`expense_breakdown`)) {
        stopifnot(is.vector(input_json$`expense_breakdown`), length(input_json$`expense_breakdown`) != 0)
        tmp <- sapply(input_json$`expense_breakdown`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWAExpenses: the required field `expense_breakdown` is missing."))
      }
      # check the required field `total_expenses`
      if (!is.null(input_json$`total_expenses`)) {
        if (!(is.character(input_json$`total_expenses`) && length(input_json$`total_expenses`) == 1)) {
          stop(paste("Error! Invalid data for `total_expenses`. Must be a string:", input_json$`total_expenses`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWAExpenses: the required field `total_expenses` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BWAExpenses
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `expense_breakdown` is null
      if (is.null(self$`expense_breakdown`)) {
        return(FALSE)
      }

      # check if the required `total_expenses` is null
      if (is.null(self$`total_expenses`)) {
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
      # check if the required `expense_breakdown` is null
      if (is.null(self$`expense_breakdown`)) {
        invalid_fields["expense_breakdown"] <- "Non-nullable required field `expense_breakdown` cannot be null."
      }

      # check if the required `total_expenses` is null
      if (is.null(self$`total_expenses`)) {
        invalid_fields["total_expenses"] <- "Non-nullable required field `total_expenses` cannot be null."
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
# BWAExpenses$unlock()
#
## Below is an example to define the print function
# BWAExpenses$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BWAExpenses$lock()

