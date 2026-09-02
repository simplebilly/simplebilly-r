#' Create a new DatevBookingPreview
#'
#' @description
#' DatevBookingPreview Class
#'
#' @docType class
#' @title DatevBookingPreview
#' @description DatevBookingPreview Class
#' @format An \code{R6Class} generator object
#' @field account_number  character
#' @field debit_credit  character
#' @field document_date  character
#' @field document_text  character
#' @field net_amount  character
#' @field opposite_account  character
#' @field tax_amount  character [optional]
#' @field tax_rate  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DatevBookingPreview <- R6::R6Class(
  "DatevBookingPreview",
  public = list(
    `account_number` = NULL,
    `debit_credit` = NULL,
    `document_date` = NULL,
    `document_text` = NULL,
    `net_amount` = NULL,
    `opposite_account` = NULL,
    `tax_amount` = NULL,
    `tax_rate` = NULL,

    #' @description
    #' Initialize a new DatevBookingPreview class.
    #'
    #' @param account_number account_number
    #' @param debit_credit debit_credit
    #' @param document_date document_date
    #' @param document_text document_text
    #' @param net_amount net_amount
    #' @param opposite_account opposite_account
    #' @param tax_amount tax_amount
    #' @param tax_rate tax_rate
    #' @param ... Other optional arguments.
    initialize = function(`account_number`, `debit_credit`, `document_date`, `document_text`, `net_amount`, `opposite_account`, `tax_amount` = NULL, `tax_rate` = NULL, ...) {
      if (!missing(`account_number`)) {
        if (!(is.character(`account_number`) && length(`account_number`) == 1)) {
          stop(paste("Error! Invalid data for `account_number`. Must be a string:", `account_number`))
        }
        self$`account_number` <- `account_number`
      }
      if (!missing(`debit_credit`)) {
        if (!(is.character(`debit_credit`) && length(`debit_credit`) == 1)) {
          stop(paste("Error! Invalid data for `debit_credit`. Must be a string:", `debit_credit`))
        }
        self$`debit_credit` <- `debit_credit`
      }
      if (!missing(`document_date`)) {
        if (!(is.character(`document_date`) && length(`document_date`) == 1)) {
          stop(paste("Error! Invalid data for `document_date`. Must be a string:", `document_date`))
        }
        self$`document_date` <- `document_date`
      }
      if (!missing(`document_text`)) {
        if (!(is.character(`document_text`) && length(`document_text`) == 1)) {
          stop(paste("Error! Invalid data for `document_text`. Must be a string:", `document_text`))
        }
        self$`document_text` <- `document_text`
      }
      if (!missing(`net_amount`)) {
        if (!(is.character(`net_amount`) && length(`net_amount`) == 1)) {
          stop(paste("Error! Invalid data for `net_amount`. Must be a string:", `net_amount`))
        }
        self$`net_amount` <- `net_amount`
      }
      if (!missing(`opposite_account`)) {
        if (!(is.character(`opposite_account`) && length(`opposite_account`) == 1)) {
          stop(paste("Error! Invalid data for `opposite_account`. Must be a string:", `opposite_account`))
        }
        self$`opposite_account` <- `opposite_account`
      }
      if (!is.null(`tax_amount`)) {
        if (!(is.character(`tax_amount`) && length(`tax_amount`) == 1)) {
          stop(paste("Error! Invalid data for `tax_amount`. Must be a string:", `tax_amount`))
        }
        self$`tax_amount` <- `tax_amount`
      }
      if (!is.null(`tax_rate`)) {
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
    #' @return DatevBookingPreview as a base R list.
    #' @examples
    #' # convert array of DatevBookingPreview (x) to a data frame
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
    #' Convert DatevBookingPreview to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DatevBookingPreviewObject <- list()
      if (!is.null(self$`account_number`)) {
        DatevBookingPreviewObject[["account_number"]] <-
          self$`account_number`
      }
      if (!is.null(self$`debit_credit`)) {
        DatevBookingPreviewObject[["debit_credit"]] <-
          self$`debit_credit`
      }
      if (!is.null(self$`document_date`)) {
        DatevBookingPreviewObject[["document_date"]] <-
          self$`document_date`
      }
      if (!is.null(self$`document_text`)) {
        DatevBookingPreviewObject[["document_text"]] <-
          self$`document_text`
      }
      if (!is.null(self$`net_amount`)) {
        DatevBookingPreviewObject[["net_amount"]] <-
          self$`net_amount`
      }
      if (!is.null(self$`opposite_account`)) {
        DatevBookingPreviewObject[["opposite_account"]] <-
          self$`opposite_account`
      }
      if (!is.null(self$`tax_amount`)) {
        DatevBookingPreviewObject[["tax_amount"]] <-
          self$`tax_amount`
      }
      if (!is.null(self$`tax_rate`)) {
        DatevBookingPreviewObject[["tax_rate"]] <-
          self$`tax_rate`
      }
      return(DatevBookingPreviewObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DatevBookingPreview
    #'
    #' @param input_json the JSON input
    #' @return the instance of DatevBookingPreview
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`account_number`)) {
        self$`account_number` <- this_object$`account_number`
      }
      if (!is.null(this_object$`debit_credit`)) {
        self$`debit_credit` <- this_object$`debit_credit`
      }
      if (!is.null(this_object$`document_date`)) {
        self$`document_date` <- this_object$`document_date`
      }
      if (!is.null(this_object$`document_text`)) {
        self$`document_text` <- this_object$`document_text`
      }
      if (!is.null(this_object$`net_amount`)) {
        self$`net_amount` <- this_object$`net_amount`
      }
      if (!is.null(this_object$`opposite_account`)) {
        self$`opposite_account` <- this_object$`opposite_account`
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
    #' @return DatevBookingPreview in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DatevBookingPreview
    #'
    #' @param input_json the JSON input
    #' @return the instance of DatevBookingPreview
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`account_number` <- this_object$`account_number`
      self$`debit_credit` <- this_object$`debit_credit`
      self$`document_date` <- this_object$`document_date`
      self$`document_text` <- this_object$`document_text`
      self$`net_amount` <- this_object$`net_amount`
      self$`opposite_account` <- this_object$`opposite_account`
      self$`tax_amount` <- this_object$`tax_amount`
      self$`tax_rate` <- this_object$`tax_rate`
      self
    },

    #' @description
    #' Validate JSON input with respect to DatevBookingPreview and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `account_number`
      if (!is.null(input_json$`account_number`)) {
        if (!(is.character(input_json$`account_number`) && length(input_json$`account_number`) == 1)) {
          stop(paste("Error! Invalid data for `account_number`. Must be a string:", input_json$`account_number`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevBookingPreview: the required field `account_number` is missing."))
      }
      # check the required field `debit_credit`
      if (!is.null(input_json$`debit_credit`)) {
        if (!(is.character(input_json$`debit_credit`) && length(input_json$`debit_credit`) == 1)) {
          stop(paste("Error! Invalid data for `debit_credit`. Must be a string:", input_json$`debit_credit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevBookingPreview: the required field `debit_credit` is missing."))
      }
      # check the required field `document_date`
      if (!is.null(input_json$`document_date`)) {
        if (!(is.character(input_json$`document_date`) && length(input_json$`document_date`) == 1)) {
          stop(paste("Error! Invalid data for `document_date`. Must be a string:", input_json$`document_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevBookingPreview: the required field `document_date` is missing."))
      }
      # check the required field `document_text`
      if (!is.null(input_json$`document_text`)) {
        if (!(is.character(input_json$`document_text`) && length(input_json$`document_text`) == 1)) {
          stop(paste("Error! Invalid data for `document_text`. Must be a string:", input_json$`document_text`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevBookingPreview: the required field `document_text` is missing."))
      }
      # check the required field `net_amount`
      if (!is.null(input_json$`net_amount`)) {
        if (!(is.character(input_json$`net_amount`) && length(input_json$`net_amount`) == 1)) {
          stop(paste("Error! Invalid data for `net_amount`. Must be a string:", input_json$`net_amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevBookingPreview: the required field `net_amount` is missing."))
      }
      # check the required field `opposite_account`
      if (!is.null(input_json$`opposite_account`)) {
        if (!(is.character(input_json$`opposite_account`) && length(input_json$`opposite_account`) == 1)) {
          stop(paste("Error! Invalid data for `opposite_account`. Must be a string:", input_json$`opposite_account`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevBookingPreview: the required field `opposite_account` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DatevBookingPreview
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `account_number` is null
      if (is.null(self$`account_number`)) {
        return(FALSE)
      }

      # check if the required `debit_credit` is null
      if (is.null(self$`debit_credit`)) {
        return(FALSE)
      }

      # check if the required `document_date` is null
      if (is.null(self$`document_date`)) {
        return(FALSE)
      }

      # check if the required `document_text` is null
      if (is.null(self$`document_text`)) {
        return(FALSE)
      }

      # check if the required `net_amount` is null
      if (is.null(self$`net_amount`)) {
        return(FALSE)
      }

      # check if the required `opposite_account` is null
      if (is.null(self$`opposite_account`)) {
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
      # check if the required `account_number` is null
      if (is.null(self$`account_number`)) {
        invalid_fields["account_number"] <- "Non-nullable required field `account_number` cannot be null."
      }

      # check if the required `debit_credit` is null
      if (is.null(self$`debit_credit`)) {
        invalid_fields["debit_credit"] <- "Non-nullable required field `debit_credit` cannot be null."
      }

      # check if the required `document_date` is null
      if (is.null(self$`document_date`)) {
        invalid_fields["document_date"] <- "Non-nullable required field `document_date` cannot be null."
      }

      # check if the required `document_text` is null
      if (is.null(self$`document_text`)) {
        invalid_fields["document_text"] <- "Non-nullable required field `document_text` cannot be null."
      }

      # check if the required `net_amount` is null
      if (is.null(self$`net_amount`)) {
        invalid_fields["net_amount"] <- "Non-nullable required field `net_amount` cannot be null."
      }

      # check if the required `opposite_account` is null
      if (is.null(self$`opposite_account`)) {
        invalid_fields["opposite_account"] <- "Non-nullable required field `opposite_account` cannot be null."
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
# DatevBookingPreview$unlock()
#
## Below is an example to define the print function
# DatevBookingPreview$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DatevBookingPreview$lock()

