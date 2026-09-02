#' Create a new PayrollAutopayPayload
#'
#' @description
#' PayrollAutopayPayload Class
#'
#' @docType class
#' @title PayrollAutopayPayload
#' @description PayrollAutopayPayload Class
#' @format An \code{R6Class} generator object
#' @field debtor_bic  character [optional]
#' @field debtor_iban  character [optional]
#' @field debtor_name  character [optional]
#' @field execution_date  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PayrollAutopayPayload <- R6::R6Class(
  "PayrollAutopayPayload",
  public = list(
    `debtor_bic` = NULL,
    `debtor_iban` = NULL,
    `debtor_name` = NULL,
    `execution_date` = NULL,

    #' @description
    #' Initialize a new PayrollAutopayPayload class.
    #'
    #' @param debtor_bic debtor_bic
    #' @param debtor_iban debtor_iban
    #' @param debtor_name debtor_name
    #' @param execution_date execution_date
    #' @param ... Other optional arguments.
    initialize = function(`debtor_bic` = NULL, `debtor_iban` = NULL, `debtor_name` = NULL, `execution_date` = NULL, ...) {
      if (!is.null(`debtor_bic`)) {
        if (!(is.character(`debtor_bic`) && length(`debtor_bic`) == 1)) {
          stop(paste("Error! Invalid data for `debtor_bic`. Must be a string:", `debtor_bic`))
        }
        self$`debtor_bic` <- `debtor_bic`
      }
      if (!is.null(`debtor_iban`)) {
        if (!(is.character(`debtor_iban`) && length(`debtor_iban`) == 1)) {
          stop(paste("Error! Invalid data for `debtor_iban`. Must be a string:", `debtor_iban`))
        }
        self$`debtor_iban` <- `debtor_iban`
      }
      if (!is.null(`debtor_name`)) {
        if (!(is.character(`debtor_name`) && length(`debtor_name`) == 1)) {
          stop(paste("Error! Invalid data for `debtor_name`. Must be a string:", `debtor_name`))
        }
        self$`debtor_name` <- `debtor_name`
      }
      if (!is.null(`execution_date`)) {
        if (!is.character(`execution_date`)) {
          stop(paste("Error! Invalid data for `execution_date`. Must be a string:", `execution_date`))
        }
        self$`execution_date` <- `execution_date`
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
    #' @return PayrollAutopayPayload as a base R list.
    #' @examples
    #' # convert array of PayrollAutopayPayload (x) to a data frame
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
    #' Convert PayrollAutopayPayload to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PayrollAutopayPayloadObject <- list()
      if (!is.null(self$`debtor_bic`)) {
        PayrollAutopayPayloadObject[["debtor_bic"]] <-
          self$`debtor_bic`
      }
      if (!is.null(self$`debtor_iban`)) {
        PayrollAutopayPayloadObject[["debtor_iban"]] <-
          self$`debtor_iban`
      }
      if (!is.null(self$`debtor_name`)) {
        PayrollAutopayPayloadObject[["debtor_name"]] <-
          self$`debtor_name`
      }
      if (!is.null(self$`execution_date`)) {
        PayrollAutopayPayloadObject[["execution_date"]] <-
          self$`execution_date`
      }
      return(PayrollAutopayPayloadObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PayrollAutopayPayload
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollAutopayPayload
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`debtor_bic`)) {
        self$`debtor_bic` <- this_object$`debtor_bic`
      }
      if (!is.null(this_object$`debtor_iban`)) {
        self$`debtor_iban` <- this_object$`debtor_iban`
      }
      if (!is.null(this_object$`debtor_name`)) {
        self$`debtor_name` <- this_object$`debtor_name`
      }
      if (!is.null(this_object$`execution_date`)) {
        self$`execution_date` <- this_object$`execution_date`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PayrollAutopayPayload in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PayrollAutopayPayload
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollAutopayPayload
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`debtor_bic` <- this_object$`debtor_bic`
      self$`debtor_iban` <- this_object$`debtor_iban`
      self$`debtor_name` <- this_object$`debtor_name`
      self$`execution_date` <- this_object$`execution_date`
      self
    },

    #' @description
    #' Validate JSON input with respect to PayrollAutopayPayload and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PayrollAutopayPayload
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
# PayrollAutopayPayload$unlock()
#
## Below is an example to define the print function
# PayrollAutopayPayload$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PayrollAutopayPayload$lock()

