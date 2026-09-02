#' Create a new ShippingCredentials
#'
#' @description
#' Per-tenant credentials for real shipping provider APIs (stored in the `shipping` key of the settings JSON blob). Auth is either OAuth client credentials (UPS) or a user-supplied API key (DHL).
#'
#' @docType class
#' @title ShippingCredentials
#' @description ShippingCredentials Class
#' @format An \code{R6Class} generator object
#' @field dhl  \link{DhlCredentials} [optional]
#' @field ups  \link{UpsCredentials} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ShippingCredentials <- R6::R6Class(
  "ShippingCredentials",
  public = list(
    `dhl` = NULL,
    `ups` = NULL,

    #' @description
    #' Initialize a new ShippingCredentials class.
    #'
    #' @param dhl dhl
    #' @param ups ups
    #' @param ... Other optional arguments.
    initialize = function(`dhl` = NULL, `ups` = NULL, ...) {
      if (!is.null(`dhl`)) {
        stopifnot(R6::is.R6(`dhl`))
        self$`dhl` <- `dhl`
      }
      if (!is.null(`ups`)) {
        stopifnot(R6::is.R6(`ups`))
        self$`ups` <- `ups`
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
    #' @return ShippingCredentials as a base R list.
    #' @examples
    #' # convert array of ShippingCredentials (x) to a data frame
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
    #' Convert ShippingCredentials to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShippingCredentialsObject <- list()
      if (!is.null(self$`dhl`)) {
        ShippingCredentialsObject[["dhl"]] <-
          self$extractSimpleType(self$`dhl`)
      }
      if (!is.null(self$`ups`)) {
        ShippingCredentialsObject[["ups"]] <-
          self$extractSimpleType(self$`ups`)
      }
      return(ShippingCredentialsObject)
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
    #' Deserialize JSON string into an instance of ShippingCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShippingCredentials
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`dhl`)) {
        `dhl_object` <- DhlCredentials$new()
        `dhl_object`$fromJSON(jsonlite::toJSON(this_object$`dhl`, auto_unbox = TRUE, digits = NA))
        self$`dhl` <- `dhl_object`
      }
      if (!is.null(this_object$`ups`)) {
        `ups_object` <- UpsCredentials$new()
        `ups_object`$fromJSON(jsonlite::toJSON(this_object$`ups`, auto_unbox = TRUE, digits = NA))
        self$`ups` <- `ups_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ShippingCredentials in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ShippingCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShippingCredentials
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`dhl` <- DhlCredentials$new()$fromJSON(jsonlite::toJSON(this_object$`dhl`, auto_unbox = TRUE, digits = NA))
      self$`ups` <- UpsCredentials$new()$fromJSON(jsonlite::toJSON(this_object$`ups`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ShippingCredentials and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ShippingCredentials
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# ShippingCredentials$unlock()
#
## Below is an example to define the print function
# ShippingCredentials$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ShippingCredentials$lock()

