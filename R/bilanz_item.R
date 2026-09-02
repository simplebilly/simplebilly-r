#' Create a new BilanzItem
#'
#' @description
#' BilanzItem Class
#'
#' @docType class
#' @title BilanzItem
#' @description BilanzItem Class
#' @format An \code{R6Class} generator object
#' @field amount  character
#' @field konto  character
#' @field name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BilanzItem <- R6::R6Class(
  "BilanzItem",
  public = list(
    `amount` = NULL,
    `konto` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new BilanzItem class.
    #'
    #' @param amount amount
    #' @param konto konto
    #' @param name name
    #' @param ... Other optional arguments.
    initialize = function(`amount`, `konto`, `name`, ...) {
      if (!missing(`amount`)) {
        if (!(is.character(`amount`) && length(`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a string:", `amount`))
        }
        self$`amount` <- `amount`
      }
      if (!missing(`konto`)) {
        if (!(is.character(`konto`) && length(`konto`) == 1)) {
          stop(paste("Error! Invalid data for `konto`. Must be a string:", `konto`))
        }
        self$`konto` <- `konto`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return BilanzItem as a base R list.
    #' @examples
    #' # convert array of BilanzItem (x) to a data frame
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
    #' Convert BilanzItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BilanzItemObject <- list()
      if (!is.null(self$`amount`)) {
        BilanzItemObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`konto`)) {
        BilanzItemObject[["konto"]] <-
          self$`konto`
      }
      if (!is.null(self$`name`)) {
        BilanzItemObject[["name"]] <-
          self$`name`
      }
      return(BilanzItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BilanzItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of BilanzItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`konto`)) {
        self$`konto` <- this_object$`konto`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BilanzItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BilanzItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of BilanzItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`amount` <- this_object$`amount`
      self$`konto` <- this_object$`konto`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to BilanzItem and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for BilanzItem: the required field `amount` is missing."))
      }
      # check the required field `konto`
      if (!is.null(input_json$`konto`)) {
        if (!(is.character(input_json$`konto`) && length(input_json$`konto`) == 1)) {
          stop(paste("Error! Invalid data for `konto`. Must be a string:", input_json$`konto`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BilanzItem: the required field `konto` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BilanzItem: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BilanzItem
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

      # check if the required `konto` is null
      if (is.null(self$`konto`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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

      # check if the required `konto` is null
      if (is.null(self$`konto`)) {
        invalid_fields["konto"] <- "Non-nullable required field `konto` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# BilanzItem$unlock()
#
## Below is an example to define the print function
# BilanzItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BilanzItem$lock()

