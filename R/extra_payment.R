#' Create a new ExtraPayment
#'
#' @description
#' ExtraPayment Class
#'
#' @docType class
#' @title ExtraPayment
#' @description ExtraPayment Class
#' @format An \code{R6Class} generator object
#' @field amount  character
#' @field employee_id  character
#' @field reason  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExtraPayment <- R6::R6Class(
  "ExtraPayment",
  public = list(
    `amount` = NULL,
    `employee_id` = NULL,
    `reason` = NULL,

    #' @description
    #' Initialize a new ExtraPayment class.
    #'
    #' @param amount amount
    #' @param employee_id employee_id
    #' @param reason reason
    #' @param ... Other optional arguments.
    initialize = function(`amount`, `employee_id`, `reason` = NULL, ...) {
      if (!missing(`amount`)) {
        if (!(is.character(`amount`) && length(`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a string:", `amount`))
        }
        self$`amount` <- `amount`
      }
      if (!missing(`employee_id`)) {
        if (!(is.character(`employee_id`) && length(`employee_id`) == 1)) {
          stop(paste("Error! Invalid data for `employee_id`. Must be a string:", `employee_id`))
        }
        self$`employee_id` <- `employee_id`
      }
      if (!is.null(`reason`)) {
        if (!(is.character(`reason`) && length(`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", `reason`))
        }
        self$`reason` <- `reason`
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
    #' @return ExtraPayment as a base R list.
    #' @examples
    #' # convert array of ExtraPayment (x) to a data frame
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
    #' Convert ExtraPayment to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExtraPaymentObject <- list()
      if (!is.null(self$`amount`)) {
        ExtraPaymentObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`employee_id`)) {
        ExtraPaymentObject[["employee_id"]] <-
          self$`employee_id`
      }
      if (!is.null(self$`reason`)) {
        ExtraPaymentObject[["reason"]] <-
          self$`reason`
      }
      return(ExtraPaymentObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExtraPayment
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExtraPayment
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`employee_id`)) {
        self$`employee_id` <- this_object$`employee_id`
      }
      if (!is.null(this_object$`reason`)) {
        self$`reason` <- this_object$`reason`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExtraPayment in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExtraPayment
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExtraPayment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`amount` <- this_object$`amount`
      self$`employee_id` <- this_object$`employee_id`
      self$`reason` <- this_object$`reason`
      self
    },

    #' @description
    #' Validate JSON input with respect to ExtraPayment and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ExtraPayment: the required field `amount` is missing."))
      }
      # check the required field `employee_id`
      if (!is.null(input_json$`employee_id`)) {
        if (!(is.character(input_json$`employee_id`) && length(input_json$`employee_id`) == 1)) {
          stop(paste("Error! Invalid data for `employee_id`. Must be a string:", input_json$`employee_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ExtraPayment: the required field `employee_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExtraPayment
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

      # check if the required `employee_id` is null
      if (is.null(self$`employee_id`)) {
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

      # check if the required `employee_id` is null
      if (is.null(self$`employee_id`)) {
        invalid_fields["employee_id"] <- "Non-nullable required field `employee_id` cannot be null."
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
# ExtraPayment$unlock()
#
## Below is an example to define the print function
# ExtraPayment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExtraPayment$lock()

