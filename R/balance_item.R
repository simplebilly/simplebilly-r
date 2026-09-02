#' Create a new BalanceItem
#'
#' @description
#' BalanceItem Class
#'
#' @docType class
#' @title BalanceItem
#' @description BalanceItem Class
#' @format An \code{R6Class} generator object
#' @field account  character
#' @field account_name  character
#' @field amount  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BalanceItem <- R6::R6Class(
  "BalanceItem",
  public = list(
    `account` = NULL,
    `account_name` = NULL,
    `amount` = NULL,

    #' @description
    #' Initialize a new BalanceItem class.
    #'
    #' @param account account
    #' @param account_name account_name
    #' @param amount amount
    #' @param ... Other optional arguments.
    initialize = function(`account`, `account_name`, `amount`, ...) {
      if (!missing(`account`)) {
        if (!(is.character(`account`) && length(`account`) == 1)) {
          stop(paste("Error! Invalid data for `account`. Must be a string:", `account`))
        }
        self$`account` <- `account`
      }
      if (!missing(`account_name`)) {
        if (!(is.character(`account_name`) && length(`account_name`) == 1)) {
          stop(paste("Error! Invalid data for `account_name`. Must be a string:", `account_name`))
        }
        self$`account_name` <- `account_name`
      }
      if (!missing(`amount`)) {
        if (!(is.character(`amount`) && length(`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a string:", `amount`))
        }
        self$`amount` <- `amount`
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
    #' @return BalanceItem as a base R list.
    #' @examples
    #' # convert array of BalanceItem (x) to a data frame
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
    #' Convert BalanceItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BalanceItemObject <- list()
      if (!is.null(self$`account`)) {
        BalanceItemObject[["account"]] <-
          self$`account`
      }
      if (!is.null(self$`account_name`)) {
        BalanceItemObject[["account_name"]] <-
          self$`account_name`
      }
      if (!is.null(self$`amount`)) {
        BalanceItemObject[["amount"]] <-
          self$`amount`
      }
      return(BalanceItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BalanceItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of BalanceItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`account`)) {
        self$`account` <- this_object$`account`
      }
      if (!is.null(this_object$`account_name`)) {
        self$`account_name` <- this_object$`account_name`
      }
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BalanceItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BalanceItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of BalanceItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`account` <- this_object$`account`
      self$`account_name` <- this_object$`account_name`
      self$`amount` <- this_object$`amount`
      self
    },

    #' @description
    #' Validate JSON input with respect to BalanceItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `account`
      if (!is.null(input_json$`account`)) {
        if (!(is.character(input_json$`account`) && length(input_json$`account`) == 1)) {
          stop(paste("Error! Invalid data for `account`. Must be a string:", input_json$`account`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BalanceItem: the required field `account` is missing."))
      }
      # check the required field `account_name`
      if (!is.null(input_json$`account_name`)) {
        if (!(is.character(input_json$`account_name`) && length(input_json$`account_name`) == 1)) {
          stop(paste("Error! Invalid data for `account_name`. Must be a string:", input_json$`account_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BalanceItem: the required field `account_name` is missing."))
      }
      # check the required field `amount`
      if (!is.null(input_json$`amount`)) {
        if (!(is.character(input_json$`amount`) && length(input_json$`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a string:", input_json$`amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BalanceItem: the required field `amount` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BalanceItem
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `account` is null
      if (is.null(self$`account`)) {
        return(FALSE)
      }

      # check if the required `account_name` is null
      if (is.null(self$`account_name`)) {
        return(FALSE)
      }

      # check if the required `amount` is null
      if (is.null(self$`amount`)) {
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
      # check if the required `account` is null
      if (is.null(self$`account`)) {
        invalid_fields["account"] <- "Non-nullable required field `account` cannot be null."
      }

      # check if the required `account_name` is null
      if (is.null(self$`account_name`)) {
        invalid_fields["account_name"] <- "Non-nullable required field `account_name` cannot be null."
      }

      # check if the required `amount` is null
      if (is.null(self$`amount`)) {
        invalid_fields["amount"] <- "Non-nullable required field `amount` cannot be null."
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
# BalanceItem$unlock()
#
## Below is an example to define the print function
# BalanceItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BalanceItem$lock()

