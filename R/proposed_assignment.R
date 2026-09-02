#' Create a new ProposedAssignment
#'
#' @description
#' ProposedAssignment Class
#'
#' @docType class
#' @title ProposedAssignment
#' @description ProposedAssignment Class
#' @format An \code{R6Class} generator object
#' @field amount_paid  character
#' @field confidence  numeric
#' @field customer_id  character [optional]
#' @field invoice_id  character
#' @field invoice_number  character
#' @field open_amount  character
#' @field payment_date  character
#' @field payment_id  character
#' @field reason  character
#' @field reference  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProposedAssignment <- R6::R6Class(
  "ProposedAssignment",
  public = list(
    `amount_paid` = NULL,
    `confidence` = NULL,
    `customer_id` = NULL,
    `invoice_id` = NULL,
    `invoice_number` = NULL,
    `open_amount` = NULL,
    `payment_date` = NULL,
    `payment_id` = NULL,
    `reason` = NULL,
    `reference` = NULL,

    #' @description
    #' Initialize a new ProposedAssignment class.
    #'
    #' @param amount_paid amount_paid
    #' @param confidence confidence
    #' @param invoice_id invoice_id
    #' @param invoice_number invoice_number
    #' @param open_amount open_amount
    #' @param payment_date payment_date
    #' @param payment_id payment_id
    #' @param reason reason
    #' @param customer_id customer_id
    #' @param reference reference
    #' @param ... Other optional arguments.
    initialize = function(`amount_paid`, `confidence`, `invoice_id`, `invoice_number`, `open_amount`, `payment_date`, `payment_id`, `reason`, `customer_id` = NULL, `reference` = NULL, ...) {
      if (!missing(`amount_paid`)) {
        if (!(is.character(`amount_paid`) && length(`amount_paid`) == 1)) {
          stop(paste("Error! Invalid data for `amount_paid`. Must be a string:", `amount_paid`))
        }
        self$`amount_paid` <- `amount_paid`
      }
      if (!missing(`confidence`)) {
        if (!(is.numeric(`confidence`) && length(`confidence`) == 1)) {
          stop(paste("Error! Invalid data for `confidence`. Must be a number:", `confidence`))
        }
        self$`confidence` <- `confidence`
      }
      if (!missing(`invoice_id`)) {
        if (!(is.character(`invoice_id`) && length(`invoice_id`) == 1)) {
          stop(paste("Error! Invalid data for `invoice_id`. Must be a string:", `invoice_id`))
        }
        self$`invoice_id` <- `invoice_id`
      }
      if (!missing(`invoice_number`)) {
        if (!(is.character(`invoice_number`) && length(`invoice_number`) == 1)) {
          stop(paste("Error! Invalid data for `invoice_number`. Must be a string:", `invoice_number`))
        }
        self$`invoice_number` <- `invoice_number`
      }
      if (!missing(`open_amount`)) {
        if (!(is.character(`open_amount`) && length(`open_amount`) == 1)) {
          stop(paste("Error! Invalid data for `open_amount`. Must be a string:", `open_amount`))
        }
        self$`open_amount` <- `open_amount`
      }
      if (!missing(`payment_date`)) {
        if (!(is.character(`payment_date`) && length(`payment_date`) == 1)) {
          stop(paste("Error! Invalid data for `payment_date`. Must be a string:", `payment_date`))
        }
        self$`payment_date` <- `payment_date`
      }
      if (!missing(`payment_id`)) {
        if (!(is.character(`payment_id`) && length(`payment_id`) == 1)) {
          stop(paste("Error! Invalid data for `payment_id`. Must be a string:", `payment_id`))
        }
        self$`payment_id` <- `payment_id`
      }
      if (!missing(`reason`)) {
        if (!(is.character(`reason`) && length(`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", `reason`))
        }
        self$`reason` <- `reason`
      }
      if (!is.null(`customer_id`)) {
        if (!(is.character(`customer_id`) && length(`customer_id`) == 1)) {
          stop(paste("Error! Invalid data for `customer_id`. Must be a string:", `customer_id`))
        }
        self$`customer_id` <- `customer_id`
      }
      if (!is.null(`reference`)) {
        if (!(is.character(`reference`) && length(`reference`) == 1)) {
          stop(paste("Error! Invalid data for `reference`. Must be a string:", `reference`))
        }
        self$`reference` <- `reference`
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
    #' @return ProposedAssignment as a base R list.
    #' @examples
    #' # convert array of ProposedAssignment (x) to a data frame
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
    #' Convert ProposedAssignment to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProposedAssignmentObject <- list()
      if (!is.null(self$`amount_paid`)) {
        ProposedAssignmentObject[["amount_paid"]] <-
          self$`amount_paid`
      }
      if (!is.null(self$`confidence`)) {
        ProposedAssignmentObject[["confidence"]] <-
          self$`confidence`
      }
      if (!is.null(self$`customer_id`)) {
        ProposedAssignmentObject[["customer_id"]] <-
          self$`customer_id`
      }
      if (!is.null(self$`invoice_id`)) {
        ProposedAssignmentObject[["invoice_id"]] <-
          self$`invoice_id`
      }
      if (!is.null(self$`invoice_number`)) {
        ProposedAssignmentObject[["invoice_number"]] <-
          self$`invoice_number`
      }
      if (!is.null(self$`open_amount`)) {
        ProposedAssignmentObject[["open_amount"]] <-
          self$`open_amount`
      }
      if (!is.null(self$`payment_date`)) {
        ProposedAssignmentObject[["payment_date"]] <-
          self$`payment_date`
      }
      if (!is.null(self$`payment_id`)) {
        ProposedAssignmentObject[["payment_id"]] <-
          self$`payment_id`
      }
      if (!is.null(self$`reason`)) {
        ProposedAssignmentObject[["reason"]] <-
          self$`reason`
      }
      if (!is.null(self$`reference`)) {
        ProposedAssignmentObject[["reference"]] <-
          self$`reference`
      }
      return(ProposedAssignmentObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProposedAssignment
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProposedAssignment
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`amount_paid`)) {
        self$`amount_paid` <- this_object$`amount_paid`
      }
      if (!is.null(this_object$`confidence`)) {
        self$`confidence` <- this_object$`confidence`
      }
      if (!is.null(this_object$`customer_id`)) {
        self$`customer_id` <- this_object$`customer_id`
      }
      if (!is.null(this_object$`invoice_id`)) {
        self$`invoice_id` <- this_object$`invoice_id`
      }
      if (!is.null(this_object$`invoice_number`)) {
        self$`invoice_number` <- this_object$`invoice_number`
      }
      if (!is.null(this_object$`open_amount`)) {
        self$`open_amount` <- this_object$`open_amount`
      }
      if (!is.null(this_object$`payment_date`)) {
        self$`payment_date` <- this_object$`payment_date`
      }
      if (!is.null(this_object$`payment_id`)) {
        self$`payment_id` <- this_object$`payment_id`
      }
      if (!is.null(this_object$`reason`)) {
        self$`reason` <- this_object$`reason`
      }
      if (!is.null(this_object$`reference`)) {
        self$`reference` <- this_object$`reference`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProposedAssignment in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProposedAssignment
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProposedAssignment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`amount_paid` <- this_object$`amount_paid`
      self$`confidence` <- this_object$`confidence`
      self$`customer_id` <- this_object$`customer_id`
      self$`invoice_id` <- this_object$`invoice_id`
      self$`invoice_number` <- this_object$`invoice_number`
      self$`open_amount` <- this_object$`open_amount`
      self$`payment_date` <- this_object$`payment_date`
      self$`payment_id` <- this_object$`payment_id`
      self$`reason` <- this_object$`reason`
      self$`reference` <- this_object$`reference`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProposedAssignment and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `amount_paid`
      if (!is.null(input_json$`amount_paid`)) {
        if (!(is.character(input_json$`amount_paid`) && length(input_json$`amount_paid`) == 1)) {
          stop(paste("Error! Invalid data for `amount_paid`. Must be a string:", input_json$`amount_paid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProposedAssignment: the required field `amount_paid` is missing."))
      }
      # check the required field `confidence`
      if (!is.null(input_json$`confidence`)) {
        if (!(is.numeric(input_json$`confidence`) && length(input_json$`confidence`) == 1)) {
          stop(paste("Error! Invalid data for `confidence`. Must be a number:", input_json$`confidence`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProposedAssignment: the required field `confidence` is missing."))
      }
      # check the required field `invoice_id`
      if (!is.null(input_json$`invoice_id`)) {
        if (!(is.character(input_json$`invoice_id`) && length(input_json$`invoice_id`) == 1)) {
          stop(paste("Error! Invalid data for `invoice_id`. Must be a string:", input_json$`invoice_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProposedAssignment: the required field `invoice_id` is missing."))
      }
      # check the required field `invoice_number`
      if (!is.null(input_json$`invoice_number`)) {
        if (!(is.character(input_json$`invoice_number`) && length(input_json$`invoice_number`) == 1)) {
          stop(paste("Error! Invalid data for `invoice_number`. Must be a string:", input_json$`invoice_number`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProposedAssignment: the required field `invoice_number` is missing."))
      }
      # check the required field `open_amount`
      if (!is.null(input_json$`open_amount`)) {
        if (!(is.character(input_json$`open_amount`) && length(input_json$`open_amount`) == 1)) {
          stop(paste("Error! Invalid data for `open_amount`. Must be a string:", input_json$`open_amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProposedAssignment: the required field `open_amount` is missing."))
      }
      # check the required field `payment_date`
      if (!is.null(input_json$`payment_date`)) {
        if (!(is.character(input_json$`payment_date`) && length(input_json$`payment_date`) == 1)) {
          stop(paste("Error! Invalid data for `payment_date`. Must be a string:", input_json$`payment_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProposedAssignment: the required field `payment_date` is missing."))
      }
      # check the required field `payment_id`
      if (!is.null(input_json$`payment_id`)) {
        if (!(is.character(input_json$`payment_id`) && length(input_json$`payment_id`) == 1)) {
          stop(paste("Error! Invalid data for `payment_id`. Must be a string:", input_json$`payment_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProposedAssignment: the required field `payment_id` is missing."))
      }
      # check the required field `reason`
      if (!is.null(input_json$`reason`)) {
        if (!(is.character(input_json$`reason`) && length(input_json$`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", input_json$`reason`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProposedAssignment: the required field `reason` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProposedAssignment
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `amount_paid` is null
      if (is.null(self$`amount_paid`)) {
        return(FALSE)
      }

      # check if the required `confidence` is null
      if (is.null(self$`confidence`)) {
        return(FALSE)
      }

      # check if the required `invoice_id` is null
      if (is.null(self$`invoice_id`)) {
        return(FALSE)
      }

      # check if the required `invoice_number` is null
      if (is.null(self$`invoice_number`)) {
        return(FALSE)
      }

      # check if the required `open_amount` is null
      if (is.null(self$`open_amount`)) {
        return(FALSE)
      }

      # check if the required `payment_date` is null
      if (is.null(self$`payment_date`)) {
        return(FALSE)
      }

      # check if the required `payment_id` is null
      if (is.null(self$`payment_id`)) {
        return(FALSE)
      }

      # check if the required `reason` is null
      if (is.null(self$`reason`)) {
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
      # check if the required `amount_paid` is null
      if (is.null(self$`amount_paid`)) {
        invalid_fields["amount_paid"] <- "Non-nullable required field `amount_paid` cannot be null."
      }

      # check if the required `confidence` is null
      if (is.null(self$`confidence`)) {
        invalid_fields["confidence"] <- "Non-nullable required field `confidence` cannot be null."
      }

      # check if the required `invoice_id` is null
      if (is.null(self$`invoice_id`)) {
        invalid_fields["invoice_id"] <- "Non-nullable required field `invoice_id` cannot be null."
      }

      # check if the required `invoice_number` is null
      if (is.null(self$`invoice_number`)) {
        invalid_fields["invoice_number"] <- "Non-nullable required field `invoice_number` cannot be null."
      }

      # check if the required `open_amount` is null
      if (is.null(self$`open_amount`)) {
        invalid_fields["open_amount"] <- "Non-nullable required field `open_amount` cannot be null."
      }

      # check if the required `payment_date` is null
      if (is.null(self$`payment_date`)) {
        invalid_fields["payment_date"] <- "Non-nullable required field `payment_date` cannot be null."
      }

      # check if the required `payment_id` is null
      if (is.null(self$`payment_id`)) {
        invalid_fields["payment_id"] <- "Non-nullable required field `payment_id` cannot be null."
      }

      # check if the required `reason` is null
      if (is.null(self$`reason`)) {
        invalid_fields["reason"] <- "Non-nullable required field `reason` cannot be null."
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
# ProposedAssignment$unlock()
#
## Below is an example to define the print function
# ProposedAssignment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProposedAssignment$lock()

