#' Create a new LiquidityPosition
#'
#' @description
#' LiquidityPosition Class
#'
#' @docType class
#' @title LiquidityPosition
#' @description LiquidityPosition Class
#' @format An \code{R6Class} generator object
#' @field accounts_payable  numeric
#' @field accounts_receivable  numeric
#' @field cash_and_equivalents  numeric
#' @field current_ratio  numeric
#' @field quick_ratio  numeric
#' @field working_capital  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LiquidityPosition <- R6::R6Class(
  "LiquidityPosition",
  public = list(
    `accounts_payable` = NULL,
    `accounts_receivable` = NULL,
    `cash_and_equivalents` = NULL,
    `current_ratio` = NULL,
    `quick_ratio` = NULL,
    `working_capital` = NULL,

    #' @description
    #' Initialize a new LiquidityPosition class.
    #'
    #' @param accounts_payable accounts_payable
    #' @param accounts_receivable accounts_receivable
    #' @param cash_and_equivalents cash_and_equivalents
    #' @param current_ratio current_ratio
    #' @param quick_ratio quick_ratio
    #' @param working_capital working_capital
    #' @param ... Other optional arguments.
    initialize = function(`accounts_payable`, `accounts_receivable`, `cash_and_equivalents`, `current_ratio`, `quick_ratio`, `working_capital`, ...) {
      if (!missing(`accounts_payable`)) {
        if (!(is.numeric(`accounts_payable`) && length(`accounts_payable`) == 1)) {
          stop(paste("Error! Invalid data for `accounts_payable`. Must be a number:", `accounts_payable`))
        }
        self$`accounts_payable` <- `accounts_payable`
      }
      if (!missing(`accounts_receivable`)) {
        if (!(is.numeric(`accounts_receivable`) && length(`accounts_receivable`) == 1)) {
          stop(paste("Error! Invalid data for `accounts_receivable`. Must be a number:", `accounts_receivable`))
        }
        self$`accounts_receivable` <- `accounts_receivable`
      }
      if (!missing(`cash_and_equivalents`)) {
        if (!(is.numeric(`cash_and_equivalents`) && length(`cash_and_equivalents`) == 1)) {
          stop(paste("Error! Invalid data for `cash_and_equivalents`. Must be a number:", `cash_and_equivalents`))
        }
        self$`cash_and_equivalents` <- `cash_and_equivalents`
      }
      if (!missing(`current_ratio`)) {
        if (!(is.numeric(`current_ratio`) && length(`current_ratio`) == 1)) {
          stop(paste("Error! Invalid data for `current_ratio`. Must be a number:", `current_ratio`))
        }
        self$`current_ratio` <- `current_ratio`
      }
      if (!missing(`quick_ratio`)) {
        if (!(is.numeric(`quick_ratio`) && length(`quick_ratio`) == 1)) {
          stop(paste("Error! Invalid data for `quick_ratio`. Must be a number:", `quick_ratio`))
        }
        self$`quick_ratio` <- `quick_ratio`
      }
      if (!missing(`working_capital`)) {
        if (!(is.numeric(`working_capital`) && length(`working_capital`) == 1)) {
          stop(paste("Error! Invalid data for `working_capital`. Must be a number:", `working_capital`))
        }
        self$`working_capital` <- `working_capital`
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
    #' @return LiquidityPosition as a base R list.
    #' @examples
    #' # convert array of LiquidityPosition (x) to a data frame
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
    #' Convert LiquidityPosition to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LiquidityPositionObject <- list()
      if (!is.null(self$`accounts_payable`)) {
        LiquidityPositionObject[["accounts_payable"]] <-
          self$`accounts_payable`
      }
      if (!is.null(self$`accounts_receivable`)) {
        LiquidityPositionObject[["accounts_receivable"]] <-
          self$`accounts_receivable`
      }
      if (!is.null(self$`cash_and_equivalents`)) {
        LiquidityPositionObject[["cash_and_equivalents"]] <-
          self$`cash_and_equivalents`
      }
      if (!is.null(self$`current_ratio`)) {
        LiquidityPositionObject[["current_ratio"]] <-
          self$`current_ratio`
      }
      if (!is.null(self$`quick_ratio`)) {
        LiquidityPositionObject[["quick_ratio"]] <-
          self$`quick_ratio`
      }
      if (!is.null(self$`working_capital`)) {
        LiquidityPositionObject[["working_capital"]] <-
          self$`working_capital`
      }
      return(LiquidityPositionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LiquidityPosition
    #'
    #' @param input_json the JSON input
    #' @return the instance of LiquidityPosition
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accounts_payable`)) {
        self$`accounts_payable` <- this_object$`accounts_payable`
      }
      if (!is.null(this_object$`accounts_receivable`)) {
        self$`accounts_receivable` <- this_object$`accounts_receivable`
      }
      if (!is.null(this_object$`cash_and_equivalents`)) {
        self$`cash_and_equivalents` <- this_object$`cash_and_equivalents`
      }
      if (!is.null(this_object$`current_ratio`)) {
        self$`current_ratio` <- this_object$`current_ratio`
      }
      if (!is.null(this_object$`quick_ratio`)) {
        self$`quick_ratio` <- this_object$`quick_ratio`
      }
      if (!is.null(this_object$`working_capital`)) {
        self$`working_capital` <- this_object$`working_capital`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LiquidityPosition in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LiquidityPosition
    #'
    #' @param input_json the JSON input
    #' @return the instance of LiquidityPosition
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accounts_payable` <- this_object$`accounts_payable`
      self$`accounts_receivable` <- this_object$`accounts_receivable`
      self$`cash_and_equivalents` <- this_object$`cash_and_equivalents`
      self$`current_ratio` <- this_object$`current_ratio`
      self$`quick_ratio` <- this_object$`quick_ratio`
      self$`working_capital` <- this_object$`working_capital`
      self
    },

    #' @description
    #' Validate JSON input with respect to LiquidityPosition and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `accounts_payable`
      if (!is.null(input_json$`accounts_payable`)) {
        if (!(is.numeric(input_json$`accounts_payable`) && length(input_json$`accounts_payable`) == 1)) {
          stop(paste("Error! Invalid data for `accounts_payable`. Must be a number:", input_json$`accounts_payable`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiquidityPosition: the required field `accounts_payable` is missing."))
      }
      # check the required field `accounts_receivable`
      if (!is.null(input_json$`accounts_receivable`)) {
        if (!(is.numeric(input_json$`accounts_receivable`) && length(input_json$`accounts_receivable`) == 1)) {
          stop(paste("Error! Invalid data for `accounts_receivable`. Must be a number:", input_json$`accounts_receivable`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiquidityPosition: the required field `accounts_receivable` is missing."))
      }
      # check the required field `cash_and_equivalents`
      if (!is.null(input_json$`cash_and_equivalents`)) {
        if (!(is.numeric(input_json$`cash_and_equivalents`) && length(input_json$`cash_and_equivalents`) == 1)) {
          stop(paste("Error! Invalid data for `cash_and_equivalents`. Must be a number:", input_json$`cash_and_equivalents`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiquidityPosition: the required field `cash_and_equivalents` is missing."))
      }
      # check the required field `current_ratio`
      if (!is.null(input_json$`current_ratio`)) {
        if (!(is.numeric(input_json$`current_ratio`) && length(input_json$`current_ratio`) == 1)) {
          stop(paste("Error! Invalid data for `current_ratio`. Must be a number:", input_json$`current_ratio`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiquidityPosition: the required field `current_ratio` is missing."))
      }
      # check the required field `quick_ratio`
      if (!is.null(input_json$`quick_ratio`)) {
        if (!(is.numeric(input_json$`quick_ratio`) && length(input_json$`quick_ratio`) == 1)) {
          stop(paste("Error! Invalid data for `quick_ratio`. Must be a number:", input_json$`quick_ratio`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiquidityPosition: the required field `quick_ratio` is missing."))
      }
      # check the required field `working_capital`
      if (!is.null(input_json$`working_capital`)) {
        if (!(is.numeric(input_json$`working_capital`) && length(input_json$`working_capital`) == 1)) {
          stop(paste("Error! Invalid data for `working_capital`. Must be a number:", input_json$`working_capital`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LiquidityPosition: the required field `working_capital` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LiquidityPosition
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `accounts_payable` is null
      if (is.null(self$`accounts_payable`)) {
        return(FALSE)
      }

      # check if the required `accounts_receivable` is null
      if (is.null(self$`accounts_receivable`)) {
        return(FALSE)
      }

      # check if the required `cash_and_equivalents` is null
      if (is.null(self$`cash_and_equivalents`)) {
        return(FALSE)
      }

      # check if the required `current_ratio` is null
      if (is.null(self$`current_ratio`)) {
        return(FALSE)
      }

      # check if the required `quick_ratio` is null
      if (is.null(self$`quick_ratio`)) {
        return(FALSE)
      }

      # check if the required `working_capital` is null
      if (is.null(self$`working_capital`)) {
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
      # check if the required `accounts_payable` is null
      if (is.null(self$`accounts_payable`)) {
        invalid_fields["accounts_payable"] <- "Non-nullable required field `accounts_payable` cannot be null."
      }

      # check if the required `accounts_receivable` is null
      if (is.null(self$`accounts_receivable`)) {
        invalid_fields["accounts_receivable"] <- "Non-nullable required field `accounts_receivable` cannot be null."
      }

      # check if the required `cash_and_equivalents` is null
      if (is.null(self$`cash_and_equivalents`)) {
        invalid_fields["cash_and_equivalents"] <- "Non-nullable required field `cash_and_equivalents` cannot be null."
      }

      # check if the required `current_ratio` is null
      if (is.null(self$`current_ratio`)) {
        invalid_fields["current_ratio"] <- "Non-nullable required field `current_ratio` cannot be null."
      }

      # check if the required `quick_ratio` is null
      if (is.null(self$`quick_ratio`)) {
        invalid_fields["quick_ratio"] <- "Non-nullable required field `quick_ratio` cannot be null."
      }

      # check if the required `working_capital` is null
      if (is.null(self$`working_capital`)) {
        invalid_fields["working_capital"] <- "Non-nullable required field `working_capital` cannot be null."
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
# LiquidityPosition$unlock()
#
## Below is an example to define the print function
# LiquidityPosition$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LiquidityPosition$lock()

