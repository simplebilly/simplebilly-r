#' Create a new PayrollPayPayload
#'
#' @description
#' PayrollPayPayload Class
#'
#' @docType class
#' @title PayrollPayPayload
#' @description PayrollPayPayload Class
#' @format An \code{R6Class} generator object
#' @field payment_date  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PayrollPayPayload <- R6::R6Class(
  "PayrollPayPayload",
  public = list(
    `payment_date` = NULL,

    #' @description
    #' Initialize a new PayrollPayPayload class.
    #'
    #' @param payment_date payment_date
    #' @param ... Other optional arguments.
    initialize = function(`payment_date`, ...) {
      if (!missing(`payment_date`)) {
        if (!(is.character(`payment_date`) && length(`payment_date`) == 1)) {
          stop(paste("Error! Invalid data for `payment_date`. Must be a string:", `payment_date`))
        }
        self$`payment_date` <- `payment_date`
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
    #' @return PayrollPayPayload as a base R list.
    #' @examples
    #' # convert array of PayrollPayPayload (x) to a data frame
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
    #' Convert PayrollPayPayload to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PayrollPayPayloadObject <- list()
      if (!is.null(self$`payment_date`)) {
        PayrollPayPayloadObject[["payment_date"]] <-
          self$`payment_date`
      }
      return(PayrollPayPayloadObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PayrollPayPayload
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollPayPayload
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`payment_date`)) {
        self$`payment_date` <- this_object$`payment_date`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PayrollPayPayload in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PayrollPayPayload
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollPayPayload
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`payment_date` <- this_object$`payment_date`
      self
    },

    #' @description
    #' Validate JSON input with respect to PayrollPayPayload and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `payment_date`
      if (!is.null(input_json$`payment_date`)) {
        if (!(is.character(input_json$`payment_date`) && length(input_json$`payment_date`) == 1)) {
          stop(paste("Error! Invalid data for `payment_date`. Must be a string:", input_json$`payment_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollPayPayload: the required field `payment_date` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PayrollPayPayload
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `payment_date` is null
      if (is.null(self$`payment_date`)) {
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
      # check if the required `payment_date` is null
      if (is.null(self$`payment_date`)) {
        invalid_fields["payment_date"] <- "Non-nullable required field `payment_date` cannot be null."
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
# PayrollPayPayload$unlock()
#
## Below is an example to define the print function
# PayrollPayPayload$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PayrollPayPayload$lock()

