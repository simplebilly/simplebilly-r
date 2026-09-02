#' Create a new VatItem
#'
#' @description
#' VatItem Class
#'
#' @docType class
#' @title VatItem
#' @description VatItem Class
#' @format An \code{R6Class} generator object
#' @field net_amount  character
#' @field tax_amount  character
#' @field tax_rate  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VatItem <- R6::R6Class(
  "VatItem",
  public = list(
    `net_amount` = NULL,
    `tax_amount` = NULL,
    `tax_rate` = NULL,

    #' @description
    #' Initialize a new VatItem class.
    #'
    #' @param net_amount net_amount
    #' @param tax_amount tax_amount
    #' @param tax_rate tax_rate
    #' @param ... Other optional arguments.
    initialize = function(`net_amount`, `tax_amount`, `tax_rate`, ...) {
      if (!missing(`net_amount`)) {
        if (!(is.character(`net_amount`) && length(`net_amount`) == 1)) {
          stop(paste("Error! Invalid data for `net_amount`. Must be a string:", `net_amount`))
        }
        self$`net_amount` <- `net_amount`
      }
      if (!missing(`tax_amount`)) {
        if (!(is.character(`tax_amount`) && length(`tax_amount`) == 1)) {
          stop(paste("Error! Invalid data for `tax_amount`. Must be a string:", `tax_amount`))
        }
        self$`tax_amount` <- `tax_amount`
      }
      if (!missing(`tax_rate`)) {
        if (!(is.character(`tax_rate`) && length(`tax_rate`) == 1)) {
          stop(paste("Error! Invalid data for `tax_rate`. Must be a string:", `tax_rate`))
        }
        self$`tax_rate` <- `tax_rate`
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
    #' @return VatItem as a base R list.
    #' @examples
    #' # convert array of VatItem (x) to a data frame
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
    #' Convert VatItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VatItemObject <- list()
      if (!is.null(self$`net_amount`)) {
        VatItemObject[["net_amount"]] <-
          self$`net_amount`
      }
      if (!is.null(self$`tax_amount`)) {
        VatItemObject[["tax_amount"]] <-
          self$`tax_amount`
      }
      if (!is.null(self$`tax_rate`)) {
        VatItemObject[["tax_rate"]] <-
          self$`tax_rate`
      }
      return(VatItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of VatItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of VatItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`net_amount`)) {
        self$`net_amount` <- this_object$`net_amount`
      }
      if (!is.null(this_object$`tax_amount`)) {
        self$`tax_amount` <- this_object$`tax_amount`
      }
      if (!is.null(this_object$`tax_rate`)) {
        self$`tax_rate` <- this_object$`tax_rate`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VatItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VatItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of VatItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`net_amount` <- this_object$`net_amount`
      self$`tax_amount` <- this_object$`tax_amount`
      self$`tax_rate` <- this_object$`tax_rate`
      self
    },

    #' @description
    #' Validate JSON input with respect to VatItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `net_amount`
      if (!is.null(input_json$`net_amount`)) {
        if (!(is.character(input_json$`net_amount`) && length(input_json$`net_amount`) == 1)) {
          stop(paste("Error! Invalid data for `net_amount`. Must be a string:", input_json$`net_amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VatItem: the required field `net_amount` is missing."))
      }
      # check the required field `tax_amount`
      if (!is.null(input_json$`tax_amount`)) {
        if (!(is.character(input_json$`tax_amount`) && length(input_json$`tax_amount`) == 1)) {
          stop(paste("Error! Invalid data for `tax_amount`. Must be a string:", input_json$`tax_amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VatItem: the required field `tax_amount` is missing."))
      }
      # check the required field `tax_rate`
      if (!is.null(input_json$`tax_rate`)) {
        if (!(is.character(input_json$`tax_rate`) && length(input_json$`tax_rate`) == 1)) {
          stop(paste("Error! Invalid data for `tax_rate`. Must be a string:", input_json$`tax_rate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VatItem: the required field `tax_rate` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VatItem
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `net_amount` is null
      if (is.null(self$`net_amount`)) {
        return(FALSE)
      }

      # check if the required `tax_amount` is null
      if (is.null(self$`tax_amount`)) {
        return(FALSE)
      }

      # check if the required `tax_rate` is null
      if (is.null(self$`tax_rate`)) {
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
      # check if the required `net_amount` is null
      if (is.null(self$`net_amount`)) {
        invalid_fields["net_amount"] <- "Non-nullable required field `net_amount` cannot be null."
      }

      # check if the required `tax_amount` is null
      if (is.null(self$`tax_amount`)) {
        invalid_fields["tax_amount"] <- "Non-nullable required field `tax_amount` cannot be null."
      }

      # check if the required `tax_rate` is null
      if (is.null(self$`tax_rate`)) {
        invalid_fields["tax_rate"] <- "Non-nullable required field `tax_rate` cannot be null."
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
# VatItem$unlock()
#
## Below is an example to define the print function
# VatItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VatItem$lock()

