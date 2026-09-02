#' Create a new RevenueItem
#'
#' @description
#' RevenueItem Class
#'
#' @docType class
#' @title RevenueItem
#' @description RevenueItem Class
#' @format An \code{R6Class} generator object
#' @field amount  character
#' @field category  character
#' @field percentage  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RevenueItem <- R6::R6Class(
  "RevenueItem",
  public = list(
    `amount` = NULL,
    `category` = NULL,
    `percentage` = NULL,

    #' @description
    #' Initialize a new RevenueItem class.
    #'
    #' @param amount amount
    #' @param category category
    #' @param percentage percentage
    #' @param ... Other optional arguments.
    initialize = function(`amount`, `category`, `percentage`, ...) {
      if (!missing(`amount`)) {
        if (!(is.character(`amount`) && length(`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a string:", `amount`))
        }
        self$`amount` <- `amount`
      }
      if (!missing(`category`)) {
        if (!(is.character(`category`) && length(`category`) == 1)) {
          stop(paste("Error! Invalid data for `category`. Must be a string:", `category`))
        }
        self$`category` <- `category`
      }
      if (!missing(`percentage`)) {
        if (!(is.numeric(`percentage`) && length(`percentage`) == 1)) {
          stop(paste("Error! Invalid data for `percentage`. Must be a number:", `percentage`))
        }
        self$`percentage` <- `percentage`
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
    #' @return RevenueItem as a base R list.
    #' @examples
    #' # convert array of RevenueItem (x) to a data frame
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
    #' Convert RevenueItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RevenueItemObject <- list()
      if (!is.null(self$`amount`)) {
        RevenueItemObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`category`)) {
        RevenueItemObject[["category"]] <-
          self$`category`
      }
      if (!is.null(self$`percentage`)) {
        RevenueItemObject[["percentage"]] <-
          self$`percentage`
      }
      return(RevenueItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RevenueItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of RevenueItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`category`)) {
        self$`category` <- this_object$`category`
      }
      if (!is.null(this_object$`percentage`)) {
        self$`percentage` <- this_object$`percentage`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RevenueItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RevenueItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of RevenueItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`amount` <- this_object$`amount`
      self$`category` <- this_object$`category`
      self$`percentage` <- this_object$`percentage`
      self
    },

    #' @description
    #' Validate JSON input with respect to RevenueItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `amount`
      if (!is.null(input_json$`amount`)) {
        if (!(is.character(input_json$`amount`) && length(input_json$`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a string:", input_json$`amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RevenueItem: the required field `amount` is missing."))
      }
      # check the required field `category`
      if (!is.null(input_json$`category`)) {
        if (!(is.character(input_json$`category`) && length(input_json$`category`) == 1)) {
          stop(paste("Error! Invalid data for `category`. Must be a string:", input_json$`category`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RevenueItem: the required field `category` is missing."))
      }
      # check the required field `percentage`
      if (!is.null(input_json$`percentage`)) {
        if (!(is.numeric(input_json$`percentage`) && length(input_json$`percentage`) == 1)) {
          stop(paste("Error! Invalid data for `percentage`. Must be a number:", input_json$`percentage`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RevenueItem: the required field `percentage` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RevenueItem
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `amount` is null
      if (is.null(self$`amount`)) {
        return(FALSE)
      }

      # check if the required `category` is null
      if (is.null(self$`category`)) {
        return(FALSE)
      }

      # check if the required `percentage` is null
      if (is.null(self$`percentage`)) {
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
      # check if the required `amount` is null
      if (is.null(self$`amount`)) {
        invalid_fields["amount"] <- "Non-nullable required field `amount` cannot be null."
      }

      # check if the required `category` is null
      if (is.null(self$`category`)) {
        invalid_fields["category"] <- "Non-nullable required field `category` cannot be null."
      }

      # check if the required `percentage` is null
      if (is.null(self$`percentage`)) {
        invalid_fields["percentage"] <- "Non-nullable required field `percentage` cannot be null."
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
# RevenueItem$unlock()
#
## Below is an example to define the print function
# RevenueItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RevenueItem$lock()

