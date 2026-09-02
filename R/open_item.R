#' Create a new OpenItem
#'
#' @description
#' OpenItem Class
#'
#' @docType class
#' @title OpenItem
#' @description OpenItem Class
#' @format An \code{R6Class} generator object
#' @field amount_due  character
#' @field amount_paid  character
#' @field customer_id  character [optional]
#' @field days_overdue  integer [optional]
#' @field due_date  character [optional]
#' @field invoice_id  character
#' @field invoice_number  character
#' @field issue_date  character
#' @field open_amount  character
#' @field reminder_level  \link{ReminderLevel}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OpenItem <- R6::R6Class(
  "OpenItem",
  public = list(
    `amount_due` = NULL,
    `amount_paid` = NULL,
    `customer_id` = NULL,
    `days_overdue` = NULL,
    `due_date` = NULL,
    `invoice_id` = NULL,
    `invoice_number` = NULL,
    `issue_date` = NULL,
    `open_amount` = NULL,
    `reminder_level` = NULL,

    #' @description
    #' Initialize a new OpenItem class.
    #'
    #' @param amount_due amount_due
    #' @param amount_paid amount_paid
    #' @param invoice_id invoice_id
    #' @param invoice_number invoice_number
    #' @param issue_date issue_date
    #' @param open_amount open_amount
    #' @param reminder_level reminder_level
    #' @param customer_id customer_id
    #' @param days_overdue days_overdue
    #' @param due_date due_date
    #' @param ... Other optional arguments.
    initialize = function(`amount_due`, `amount_paid`, `invoice_id`, `invoice_number`, `issue_date`, `open_amount`, `reminder_level`, `customer_id` = NULL, `days_overdue` = NULL, `due_date` = NULL, ...) {
      if (!missing(`amount_due`)) {
        if (!(is.character(`amount_due`) && length(`amount_due`) == 1)) {
          stop(paste("Error! Invalid data for `amount_due`. Must be a string:", `amount_due`))
        }
        self$`amount_due` <- `amount_due`
      }
      if (!missing(`amount_paid`)) {
        if (!(is.character(`amount_paid`) && length(`amount_paid`) == 1)) {
          stop(paste("Error! Invalid data for `amount_paid`. Must be a string:", `amount_paid`))
        }
        self$`amount_paid` <- `amount_paid`
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
      if (!missing(`issue_date`)) {
        if (!(is.character(`issue_date`) && length(`issue_date`) == 1)) {
          stop(paste("Error! Invalid data for `issue_date`. Must be a string:", `issue_date`))
        }
        self$`issue_date` <- `issue_date`
      }
      if (!missing(`open_amount`)) {
        if (!(is.character(`open_amount`) && length(`open_amount`) == 1)) {
          stop(paste("Error! Invalid data for `open_amount`. Must be a string:", `open_amount`))
        }
        self$`open_amount` <- `open_amount`
      }
      if (!missing(`reminder_level`)) {
        if (!(`reminder_level` %in% c())) {
          stop(paste("Error! \"", `reminder_level`, "\" cannot be assigned to `reminder_level`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`reminder_level`))
        self$`reminder_level` <- `reminder_level`
      }
      if (!is.null(`customer_id`)) {
        if (!(is.character(`customer_id`) && length(`customer_id`) == 1)) {
          stop(paste("Error! Invalid data for `customer_id`. Must be a string:", `customer_id`))
        }
        self$`customer_id` <- `customer_id`
      }
      if (!is.null(`days_overdue`)) {
        if (!(is.numeric(`days_overdue`) && length(`days_overdue`) == 1)) {
          stop(paste("Error! Invalid data for `days_overdue`. Must be an integer:", `days_overdue`))
        }
        self$`days_overdue` <- `days_overdue`
      }
      if (!is.null(`due_date`)) {
        if (!(is.character(`due_date`) && length(`due_date`) == 1)) {
          stop(paste("Error! Invalid data for `due_date`. Must be a string:", `due_date`))
        }
        self$`due_date` <- `due_date`
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
    #' @return OpenItem as a base R list.
    #' @examples
    #' # convert array of OpenItem (x) to a data frame
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
    #' Convert OpenItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OpenItemObject <- list()
      if (!is.null(self$`amount_due`)) {
        OpenItemObject[["amount_due"]] <-
          self$`amount_due`
      }
      if (!is.null(self$`amount_paid`)) {
        OpenItemObject[["amount_paid"]] <-
          self$`amount_paid`
      }
      if (!is.null(self$`customer_id`)) {
        OpenItemObject[["customer_id"]] <-
          self$`customer_id`
      }
      if (!is.null(self$`days_overdue`)) {
        OpenItemObject[["days_overdue"]] <-
          self$`days_overdue`
      }
      if (!is.null(self$`due_date`)) {
        OpenItemObject[["due_date"]] <-
          self$`due_date`
      }
      if (!is.null(self$`invoice_id`)) {
        OpenItemObject[["invoice_id"]] <-
          self$`invoice_id`
      }
      if (!is.null(self$`invoice_number`)) {
        OpenItemObject[["invoice_number"]] <-
          self$`invoice_number`
      }
      if (!is.null(self$`issue_date`)) {
        OpenItemObject[["issue_date"]] <-
          self$`issue_date`
      }
      if (!is.null(self$`open_amount`)) {
        OpenItemObject[["open_amount"]] <-
          self$`open_amount`
      }
      if (!is.null(self$`reminder_level`)) {
        OpenItemObject[["reminder_level"]] <-
          self$extractSimpleType(self$`reminder_level`)
      }
      return(OpenItemObject)
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
    #' Deserialize JSON string into an instance of OpenItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of OpenItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`amount_due`)) {
        self$`amount_due` <- this_object$`amount_due`
      }
      if (!is.null(this_object$`amount_paid`)) {
        self$`amount_paid` <- this_object$`amount_paid`
      }
      if (!is.null(this_object$`customer_id`)) {
        self$`customer_id` <- this_object$`customer_id`
      }
      if (!is.null(this_object$`days_overdue`)) {
        self$`days_overdue` <- this_object$`days_overdue`
      }
      if (!is.null(this_object$`due_date`)) {
        self$`due_date` <- this_object$`due_date`
      }
      if (!is.null(this_object$`invoice_id`)) {
        self$`invoice_id` <- this_object$`invoice_id`
      }
      if (!is.null(this_object$`invoice_number`)) {
        self$`invoice_number` <- this_object$`invoice_number`
      }
      if (!is.null(this_object$`issue_date`)) {
        self$`issue_date` <- this_object$`issue_date`
      }
      if (!is.null(this_object$`open_amount`)) {
        self$`open_amount` <- this_object$`open_amount`
      }
      if (!is.null(this_object$`reminder_level`)) {
        `reminder_level_object` <- ReminderLevel$new()
        `reminder_level_object`$fromJSON(jsonlite::toJSON(this_object$`reminder_level`, auto_unbox = TRUE, digits = NA))
        self$`reminder_level` <- `reminder_level_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OpenItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OpenItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of OpenItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`amount_due` <- this_object$`amount_due`
      self$`amount_paid` <- this_object$`amount_paid`
      self$`customer_id` <- this_object$`customer_id`
      self$`days_overdue` <- this_object$`days_overdue`
      self$`due_date` <- this_object$`due_date`
      self$`invoice_id` <- this_object$`invoice_id`
      self$`invoice_number` <- this_object$`invoice_number`
      self$`issue_date` <- this_object$`issue_date`
      self$`open_amount` <- this_object$`open_amount`
      self$`reminder_level` <- ReminderLevel$new()$fromJSON(jsonlite::toJSON(this_object$`reminder_level`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to OpenItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `amount_due`
      if (!is.null(input_json$`amount_due`)) {
        if (!(is.character(input_json$`amount_due`) && length(input_json$`amount_due`) == 1)) {
          stop(paste("Error! Invalid data for `amount_due`. Must be a string:", input_json$`amount_due`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OpenItem: the required field `amount_due` is missing."))
      }
      # check the required field `amount_paid`
      if (!is.null(input_json$`amount_paid`)) {
        if (!(is.character(input_json$`amount_paid`) && length(input_json$`amount_paid`) == 1)) {
          stop(paste("Error! Invalid data for `amount_paid`. Must be a string:", input_json$`amount_paid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OpenItem: the required field `amount_paid` is missing."))
      }
      # check the required field `invoice_id`
      if (!is.null(input_json$`invoice_id`)) {
        if (!(is.character(input_json$`invoice_id`) && length(input_json$`invoice_id`) == 1)) {
          stop(paste("Error! Invalid data for `invoice_id`. Must be a string:", input_json$`invoice_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OpenItem: the required field `invoice_id` is missing."))
      }
      # check the required field `invoice_number`
      if (!is.null(input_json$`invoice_number`)) {
        if (!(is.character(input_json$`invoice_number`) && length(input_json$`invoice_number`) == 1)) {
          stop(paste("Error! Invalid data for `invoice_number`. Must be a string:", input_json$`invoice_number`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OpenItem: the required field `invoice_number` is missing."))
      }
      # check the required field `issue_date`
      if (!is.null(input_json$`issue_date`)) {
        if (!(is.character(input_json$`issue_date`) && length(input_json$`issue_date`) == 1)) {
          stop(paste("Error! Invalid data for `issue_date`. Must be a string:", input_json$`issue_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OpenItem: the required field `issue_date` is missing."))
      }
      # check the required field `open_amount`
      if (!is.null(input_json$`open_amount`)) {
        if (!(is.character(input_json$`open_amount`) && length(input_json$`open_amount`) == 1)) {
          stop(paste("Error! Invalid data for `open_amount`. Must be a string:", input_json$`open_amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OpenItem: the required field `open_amount` is missing."))
      }
      # check the required field `reminder_level`
      if (!is.null(input_json$`reminder_level`)) {
        stopifnot(R6::is.R6(input_json$`reminder_level`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OpenItem: the required field `reminder_level` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OpenItem
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `amount_due` is null
      if (is.null(self$`amount_due`)) {
        return(FALSE)
      }

      # check if the required `amount_paid` is null
      if (is.null(self$`amount_paid`)) {
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

      # check if the required `issue_date` is null
      if (is.null(self$`issue_date`)) {
        return(FALSE)
      }

      # check if the required `open_amount` is null
      if (is.null(self$`open_amount`)) {
        return(FALSE)
      }

      # check if the required `reminder_level` is null
      if (is.null(self$`reminder_level`)) {
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
      # check if the required `amount_due` is null
      if (is.null(self$`amount_due`)) {
        invalid_fields["amount_due"] <- "Non-nullable required field `amount_due` cannot be null."
      }

      # check if the required `amount_paid` is null
      if (is.null(self$`amount_paid`)) {
        invalid_fields["amount_paid"] <- "Non-nullable required field `amount_paid` cannot be null."
      }

      # check if the required `invoice_id` is null
      if (is.null(self$`invoice_id`)) {
        invalid_fields["invoice_id"] <- "Non-nullable required field `invoice_id` cannot be null."
      }

      # check if the required `invoice_number` is null
      if (is.null(self$`invoice_number`)) {
        invalid_fields["invoice_number"] <- "Non-nullable required field `invoice_number` cannot be null."
      }

      # check if the required `issue_date` is null
      if (is.null(self$`issue_date`)) {
        invalid_fields["issue_date"] <- "Non-nullable required field `issue_date` cannot be null."
      }

      # check if the required `open_amount` is null
      if (is.null(self$`open_amount`)) {
        invalid_fields["open_amount"] <- "Non-nullable required field `open_amount` cannot be null."
      }

      # check if the required `reminder_level` is null
      if (is.null(self$`reminder_level`)) {
        invalid_fields["reminder_level"] <- "Non-nullable required field `reminder_level` cannot be null."
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
# OpenItem$unlock()
#
## Below is an example to define the print function
# OpenItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OpenItem$lock()

