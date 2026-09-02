#' Create a new RateResponse
#'
#' @description
#' RateResponse Class
#'
#' @docType class
#' @title RateResponse
#' @description RateResponse Class
#' @format An \code{R6Class} generator object
#' @field rates  list(\link{ShippingRate})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RateResponse <- R6::R6Class(
  "RateResponse",
  public = list(
    `rates` = NULL,

    #' @description
    #' Initialize a new RateResponse class.
    #'
    #' @param rates rates
    #' @param ... Other optional arguments.
    initialize = function(`rates`, ...) {
      if (!missing(`rates`)) {
        stopifnot(is.vector(`rates`), length(`rates`) != 0)
        sapply(`rates`, function(x) stopifnot(R6::is.R6(x)))
        self$`rates` <- `rates`
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
    #' @return RateResponse as a base R list.
    #' @examples
    #' # convert array of RateResponse (x) to a data frame
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
    #' Convert RateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RateResponseObject <- list()
      if (!is.null(self$`rates`)) {
        RateResponseObject[["rates"]] <-
          self$extractSimpleType(self$`rates`)
      }
      return(RateResponseObject)
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
    #' Deserialize JSON string into an instance of RateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`rates`)) {
        self$`rates` <- ApiClient$new()$deserializeObj(this_object$`rates`, "array[ShippingRate]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`rates` <- ApiClient$new()$deserializeObj(this_object$`rates`, "array[ShippingRate]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to RateResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `rates`
      if (!is.null(input_json$`rates`)) {
        stopifnot(is.vector(input_json$`rates`), length(input_json$`rates`) != 0)
        tmp <- sapply(input_json$`rates`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RateResponse: the required field `rates` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RateResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `rates` is null
      if (is.null(self$`rates`)) {
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
      # check if the required `rates` is null
      if (is.null(self$`rates`)) {
        invalid_fields["rates"] <- "Non-nullable required field `rates` cannot be null."
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
# RateResponse$unlock()
#
## Below is an example to define the print function
# RateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RateResponse$lock()

