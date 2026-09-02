#' Create a new AccountOverview
#'
#' @description
#' AccountOverview Class
#'
#' @docType class
#' @title AccountOverview
#' @description AccountOverview Class
#' @format An \code{R6Class} generator object
#' @field account  character
#' @field account_name  character
#' @field balance  character
#' @field credit_total  character
#' @field debit_total  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccountOverview <- R6::R6Class(
  "AccountOverview",
  public = list(
    `account` = NULL,
    `account_name` = NULL,
    `balance` = NULL,
    `credit_total` = NULL,
    `debit_total` = NULL,

    #' @description
    #' Initialize a new AccountOverview class.
    #'
    #' @param account account
    #' @param account_name account_name
    #' @param balance balance
    #' @param credit_total credit_total
    #' @param debit_total debit_total
    #' @param ... Other optional arguments.
    initialize = function(`account`, `account_name`, `balance`, `credit_total`, `debit_total`, ...) {
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
      if (!missing(`balance`)) {
        if (!(is.character(`balance`) && length(`balance`) == 1)) {
          stop(paste("Error! Invalid data for `balance`. Must be a string:", `balance`))
        }
        self$`balance` <- `balance`
      }
      if (!missing(`credit_total`)) {
        if (!(is.character(`credit_total`) && length(`credit_total`) == 1)) {
          stop(paste("Error! Invalid data for `credit_total`. Must be a string:", `credit_total`))
        }
        self$`credit_total` <- `credit_total`
      }
      if (!missing(`debit_total`)) {
        if (!(is.character(`debit_total`) && length(`debit_total`) == 1)) {
          stop(paste("Error! Invalid data for `debit_total`. Must be a string:", `debit_total`))
        }
        self$`debit_total` <- `debit_total`
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
    #' @return AccountOverview as a base R list.
    #' @examples
    #' # convert array of AccountOverview (x) to a data frame
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
    #' Convert AccountOverview to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccountOverviewObject <- list()
      if (!is.null(self$`account`)) {
        AccountOverviewObject[["account"]] <-
          self$`account`
      }
      if (!is.null(self$`account_name`)) {
        AccountOverviewObject[["account_name"]] <-
          self$`account_name`
      }
      if (!is.null(self$`balance`)) {
        AccountOverviewObject[["balance"]] <-
          self$`balance`
      }
      if (!is.null(self$`credit_total`)) {
        AccountOverviewObject[["credit_total"]] <-
          self$`credit_total`
      }
      if (!is.null(self$`debit_total`)) {
        AccountOverviewObject[["debit_total"]] <-
          self$`debit_total`
      }
      return(AccountOverviewObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountOverview
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountOverview
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`account`)) {
        self$`account` <- this_object$`account`
      }
      if (!is.null(this_object$`account_name`)) {
        self$`account_name` <- this_object$`account_name`
      }
      if (!is.null(this_object$`balance`)) {
        self$`balance` <- this_object$`balance`
      }
      if (!is.null(this_object$`credit_total`)) {
        self$`credit_total` <- this_object$`credit_total`
      }
      if (!is.null(this_object$`debit_total`)) {
        self$`debit_total` <- this_object$`debit_total`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccountOverview in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountOverview
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountOverview
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`account` <- this_object$`account`
      self$`account_name` <- this_object$`account_name`
      self$`balance` <- this_object$`balance`
      self$`credit_total` <- this_object$`credit_total`
      self$`debit_total` <- this_object$`debit_total`
      self
    },

    #' @description
    #' Validate JSON input with respect to AccountOverview and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AccountOverview: the required field `account` is missing."))
      }
      # check the required field `account_name`
      if (!is.null(input_json$`account_name`)) {
        if (!(is.character(input_json$`account_name`) && length(input_json$`account_name`) == 1)) {
          stop(paste("Error! Invalid data for `account_name`. Must be a string:", input_json$`account_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccountOverview: the required field `account_name` is missing."))
      }
      # check the required field `balance`
      if (!is.null(input_json$`balance`)) {
        if (!(is.character(input_json$`balance`) && length(input_json$`balance`) == 1)) {
          stop(paste("Error! Invalid data for `balance`. Must be a string:", input_json$`balance`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccountOverview: the required field `balance` is missing."))
      }
      # check the required field `credit_total`
      if (!is.null(input_json$`credit_total`)) {
        if (!(is.character(input_json$`credit_total`) && length(input_json$`credit_total`) == 1)) {
          stop(paste("Error! Invalid data for `credit_total`. Must be a string:", input_json$`credit_total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccountOverview: the required field `credit_total` is missing."))
      }
      # check the required field `debit_total`
      if (!is.null(input_json$`debit_total`)) {
        if (!(is.character(input_json$`debit_total`) && length(input_json$`debit_total`) == 1)) {
          stop(paste("Error! Invalid data for `debit_total`. Must be a string:", input_json$`debit_total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccountOverview: the required field `debit_total` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccountOverview
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

      # check if the required `balance` is null
      if (is.null(self$`balance`)) {
        return(FALSE)
      }

      # check if the required `credit_total` is null
      if (is.null(self$`credit_total`)) {
        return(FALSE)
      }

      # check if the required `debit_total` is null
      if (is.null(self$`debit_total`)) {
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

      # check if the required `balance` is null
      if (is.null(self$`balance`)) {
        invalid_fields["balance"] <- "Non-nullable required field `balance` cannot be null."
      }

      # check if the required `credit_total` is null
      if (is.null(self$`credit_total`)) {
        invalid_fields["credit_total"] <- "Non-nullable required field `credit_total` cannot be null."
      }

      # check if the required `debit_total` is null
      if (is.null(self$`debit_total`)) {
        invalid_fields["debit_total"] <- "Non-nullable required field `debit_total` cannot be null."
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
# AccountOverview$unlock()
#
## Below is an example to define the print function
# AccountOverview$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountOverview$lock()

