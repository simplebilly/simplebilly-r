#' Create a new AllocatePaymentRequest
#'
#' @description
#' AllocatePaymentRequest Class
#'
#' @docType class
#' @title AllocatePaymentRequest
#' @description AllocatePaymentRequest Class
#' @format An \code{R6Class} generator object
#' @field amount  numeric
#' @field invoice_id  character
#' @field payment_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AllocatePaymentRequest <- R6::R6Class(
  "AllocatePaymentRequest",
  public = list(
    `amount` = NULL,
    `invoice_id` = NULL,
    `payment_id` = NULL,

    #' @description
    #' Initialize a new AllocatePaymentRequest class.
    #'
    #' @param amount amount
    #' @param invoice_id invoice_id
    #' @param payment_id payment_id
    #' @param ... Other optional arguments.
    initialize = function(`amount`, `invoice_id`, `payment_id`, ...) {
      if (!missing(`amount`)) {
        if (!(is.numeric(`amount`) && length(`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a number:", `amount`))
        }
        self$`amount` <- `amount`
      }
      if (!missing(`invoice_id`)) {
        if (!(is.character(`invoice_id`) && length(`invoice_id`) == 1)) {
          stop(paste("Error! Invalid data for `invoice_id`. Must be a string:", `invoice_id`))
        }
        self$`invoice_id` <- `invoice_id`
      }
      if (!missing(`payment_id`)) {
        if (!(is.character(`payment_id`) && length(`payment_id`) == 1)) {
          stop(paste("Error! Invalid data for `payment_id`. Must be a string:", `payment_id`))
        }
        self$`payment_id` <- `payment_id`
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
    #' @return AllocatePaymentRequest as a base R list.
    #' @examples
    #' # convert array of AllocatePaymentRequest (x) to a data frame
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
    #' Convert AllocatePaymentRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AllocatePaymentRequestObject <- list()
      if (!is.null(self$`amount`)) {
        AllocatePaymentRequestObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`invoice_id`)) {
        AllocatePaymentRequestObject[["invoice_id"]] <-
          self$`invoice_id`
      }
      if (!is.null(self$`payment_id`)) {
        AllocatePaymentRequestObject[["payment_id"]] <-
          self$`payment_id`
      }
      return(AllocatePaymentRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AllocatePaymentRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AllocatePaymentRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`invoice_id`)) {
        self$`invoice_id` <- this_object$`invoice_id`
      }
      if (!is.null(this_object$`payment_id`)) {
        self$`payment_id` <- this_object$`payment_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AllocatePaymentRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AllocatePaymentRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AllocatePaymentRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`amount` <- this_object$`amount`
      self$`invoice_id` <- this_object$`invoice_id`
      self$`payment_id` <- this_object$`payment_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to AllocatePaymentRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `amount`
      if (!is.null(input_json$`amount`)) {
        if (!(is.numeric(input_json$`amount`) && length(input_json$`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a number:", input_json$`amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AllocatePaymentRequest: the required field `amount` is missing."))
      }
      # check the required field `invoice_id`
      if (!is.null(input_json$`invoice_id`)) {
        if (!(is.character(input_json$`invoice_id`) && length(input_json$`invoice_id`) == 1)) {
          stop(paste("Error! Invalid data for `invoice_id`. Must be a string:", input_json$`invoice_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AllocatePaymentRequest: the required field `invoice_id` is missing."))
      }
      # check the required field `payment_id`
      if (!is.null(input_json$`payment_id`)) {
        if (!(is.character(input_json$`payment_id`) && length(input_json$`payment_id`) == 1)) {
          stop(paste("Error! Invalid data for `payment_id`. Must be a string:", input_json$`payment_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AllocatePaymentRequest: the required field `payment_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AllocatePaymentRequest
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

      # check if the required `invoice_id` is null
      if (is.null(self$`invoice_id`)) {
        return(FALSE)
      }

      # check if the required `payment_id` is null
      if (is.null(self$`payment_id`)) {
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

      # check if the required `invoice_id` is null
      if (is.null(self$`invoice_id`)) {
        invalid_fields["invoice_id"] <- "Non-nullable required field `invoice_id` cannot be null."
      }

      # check if the required `payment_id` is null
      if (is.null(self$`payment_id`)) {
        invalid_fields["payment_id"] <- "Non-nullable required field `payment_id` cannot be null."
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
# AllocatePaymentRequest$unlock()
#
## Below is an example to define the print function
# AllocatePaymentRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AllocatePaymentRequest$lock()

