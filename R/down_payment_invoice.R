#' Create a new DownPaymentInvoice
#'
#' @description
#' DownPaymentInvoice Class
#'
#' @docType class
#' @title DownPaymentInvoice
#' @description DownPaymentInvoice Class
#' @format An \code{R6Class} generator object
#' @field contact_id  character [optional]
#' @field contact_name  character [optional]
#' @field created_at  character
#' @field currency  character
#' @field id  character
#' @field notes  character [optional]
#' @field paid_amount  character
#' @field total_amount  character
#' @field voucher_date  character
#' @field voucher_number  character [optional]
#' @field voucher_status  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DownPaymentInvoice <- R6::R6Class(
  "DownPaymentInvoice",
  public = list(
    `contact_id` = NULL,
    `contact_name` = NULL,
    `created_at` = NULL,
    `currency` = NULL,
    `id` = NULL,
    `notes` = NULL,
    `paid_amount` = NULL,
    `total_amount` = NULL,
    `voucher_date` = NULL,
    `voucher_number` = NULL,
    `voucher_status` = NULL,

    #' @description
    #' Initialize a new DownPaymentInvoice class.
    #'
    #' @param created_at created_at
    #' @param currency currency
    #' @param id id
    #' @param paid_amount paid_amount
    #' @param total_amount total_amount
    #' @param voucher_date voucher_date
    #' @param voucher_status voucher_status
    #' @param contact_id contact_id
    #' @param contact_name contact_name
    #' @param notes notes
    #' @param voucher_number voucher_number
    #' @param ... Other optional arguments.
    initialize = function(`created_at`, `currency`, `id`, `paid_amount`, `total_amount`, `voucher_date`, `voucher_status`, `contact_id` = NULL, `contact_name` = NULL, `notes` = NULL, `voucher_number` = NULL, ...) {
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`paid_amount`)) {
        if (!(is.character(`paid_amount`) && length(`paid_amount`) == 1)) {
          stop(paste("Error! Invalid data for `paid_amount`. Must be a string:", `paid_amount`))
        }
        self$`paid_amount` <- `paid_amount`
      }
      if (!missing(`total_amount`)) {
        if (!(is.character(`total_amount`) && length(`total_amount`) == 1)) {
          stop(paste("Error! Invalid data for `total_amount`. Must be a string:", `total_amount`))
        }
        self$`total_amount` <- `total_amount`
      }
      if (!missing(`voucher_date`)) {
        if (!(is.character(`voucher_date`) && length(`voucher_date`) == 1)) {
          stop(paste("Error! Invalid data for `voucher_date`. Must be a string:", `voucher_date`))
        }
        self$`voucher_date` <- `voucher_date`
      }
      if (!missing(`voucher_status`)) {
        if (!(is.character(`voucher_status`) && length(`voucher_status`) == 1)) {
          stop(paste("Error! Invalid data for `voucher_status`. Must be a string:", `voucher_status`))
        }
        self$`voucher_status` <- `voucher_status`
      }
      if (!is.null(`contact_id`)) {
        if (!(is.character(`contact_id`) && length(`contact_id`) == 1)) {
          stop(paste("Error! Invalid data for `contact_id`. Must be a string:", `contact_id`))
        }
        self$`contact_id` <- `contact_id`
      }
      if (!is.null(`contact_name`)) {
        if (!(is.character(`contact_name`) && length(`contact_name`) == 1)) {
          stop(paste("Error! Invalid data for `contact_name`. Must be a string:", `contact_name`))
        }
        self$`contact_name` <- `contact_name`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`voucher_number`)) {
        if (!(is.character(`voucher_number`) && length(`voucher_number`) == 1)) {
          stop(paste("Error! Invalid data for `voucher_number`. Must be a string:", `voucher_number`))
        }
        self$`voucher_number` <- `voucher_number`
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
    #' @return DownPaymentInvoice as a base R list.
    #' @examples
    #' # convert array of DownPaymentInvoice (x) to a data frame
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
    #' Convert DownPaymentInvoice to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DownPaymentInvoiceObject <- list()
      if (!is.null(self$`contact_id`)) {
        DownPaymentInvoiceObject[["contact_id"]] <-
          self$`contact_id`
      }
      if (!is.null(self$`contact_name`)) {
        DownPaymentInvoiceObject[["contact_name"]] <-
          self$`contact_name`
      }
      if (!is.null(self$`created_at`)) {
        DownPaymentInvoiceObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`currency`)) {
        DownPaymentInvoiceObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`id`)) {
        DownPaymentInvoiceObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`notes`)) {
        DownPaymentInvoiceObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`paid_amount`)) {
        DownPaymentInvoiceObject[["paid_amount"]] <-
          self$`paid_amount`
      }
      if (!is.null(self$`total_amount`)) {
        DownPaymentInvoiceObject[["total_amount"]] <-
          self$`total_amount`
      }
      if (!is.null(self$`voucher_date`)) {
        DownPaymentInvoiceObject[["voucher_date"]] <-
          self$`voucher_date`
      }
      if (!is.null(self$`voucher_number`)) {
        DownPaymentInvoiceObject[["voucher_number"]] <-
          self$`voucher_number`
      }
      if (!is.null(self$`voucher_status`)) {
        DownPaymentInvoiceObject[["voucher_status"]] <-
          self$`voucher_status`
      }
      return(DownPaymentInvoiceObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DownPaymentInvoice
    #'
    #' @param input_json the JSON input
    #' @return the instance of DownPaymentInvoice
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`contact_id`)) {
        self$`contact_id` <- this_object$`contact_id`
      }
      if (!is.null(this_object$`contact_name`)) {
        self$`contact_name` <- this_object$`contact_name`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`paid_amount`)) {
        self$`paid_amount` <- this_object$`paid_amount`
      }
      if (!is.null(this_object$`total_amount`)) {
        self$`total_amount` <- this_object$`total_amount`
      }
      if (!is.null(this_object$`voucher_date`)) {
        self$`voucher_date` <- this_object$`voucher_date`
      }
      if (!is.null(this_object$`voucher_number`)) {
        self$`voucher_number` <- this_object$`voucher_number`
      }
      if (!is.null(this_object$`voucher_status`)) {
        self$`voucher_status` <- this_object$`voucher_status`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DownPaymentInvoice in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DownPaymentInvoice
    #'
    #' @param input_json the JSON input
    #' @return the instance of DownPaymentInvoice
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`contact_id` <- this_object$`contact_id`
      self$`contact_name` <- this_object$`contact_name`
      self$`created_at` <- this_object$`created_at`
      self$`currency` <- this_object$`currency`
      self$`id` <- this_object$`id`
      self$`notes` <- this_object$`notes`
      self$`paid_amount` <- this_object$`paid_amount`
      self$`total_amount` <- this_object$`total_amount`
      self$`voucher_date` <- this_object$`voucher_date`
      self$`voucher_number` <- this_object$`voucher_number`
      self$`voucher_status` <- this_object$`voucher_status`
      self
    },

    #' @description
    #' Validate JSON input with respect to DownPaymentInvoice and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DownPaymentInvoice: the required field `created_at` is missing."))
      }
      # check the required field `currency`
      if (!is.null(input_json$`currency`)) {
        if (!(is.character(input_json$`currency`) && length(input_json$`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", input_json$`currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DownPaymentInvoice: the required field `currency` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DownPaymentInvoice: the required field `id` is missing."))
      }
      # check the required field `paid_amount`
      if (!is.null(input_json$`paid_amount`)) {
        if (!(is.character(input_json$`paid_amount`) && length(input_json$`paid_amount`) == 1)) {
          stop(paste("Error! Invalid data for `paid_amount`. Must be a string:", input_json$`paid_amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DownPaymentInvoice: the required field `paid_amount` is missing."))
      }
      # check the required field `total_amount`
      if (!is.null(input_json$`total_amount`)) {
        if (!(is.character(input_json$`total_amount`) && length(input_json$`total_amount`) == 1)) {
          stop(paste("Error! Invalid data for `total_amount`. Must be a string:", input_json$`total_amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DownPaymentInvoice: the required field `total_amount` is missing."))
      }
      # check the required field `voucher_date`
      if (!is.null(input_json$`voucher_date`)) {
        if (!(is.character(input_json$`voucher_date`) && length(input_json$`voucher_date`) == 1)) {
          stop(paste("Error! Invalid data for `voucher_date`. Must be a string:", input_json$`voucher_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DownPaymentInvoice: the required field `voucher_date` is missing."))
      }
      # check the required field `voucher_status`
      if (!is.null(input_json$`voucher_status`)) {
        if (!(is.character(input_json$`voucher_status`) && length(input_json$`voucher_status`) == 1)) {
          stop(paste("Error! Invalid data for `voucher_status`. Must be a string:", input_json$`voucher_status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DownPaymentInvoice: the required field `voucher_status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DownPaymentInvoice
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `paid_amount` is null
      if (is.null(self$`paid_amount`)) {
        return(FALSE)
      }

      # check if the required `total_amount` is null
      if (is.null(self$`total_amount`)) {
        return(FALSE)
      }

      # check if the required `voucher_date` is null
      if (is.null(self$`voucher_date`)) {
        return(FALSE)
      }

      # check if the required `voucher_status` is null
      if (is.null(self$`voucher_status`)) {
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
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        invalid_fields["currency"] <- "Non-nullable required field `currency` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `paid_amount` is null
      if (is.null(self$`paid_amount`)) {
        invalid_fields["paid_amount"] <- "Non-nullable required field `paid_amount` cannot be null."
      }

      # check if the required `total_amount` is null
      if (is.null(self$`total_amount`)) {
        invalid_fields["total_amount"] <- "Non-nullable required field `total_amount` cannot be null."
      }

      # check if the required `voucher_date` is null
      if (is.null(self$`voucher_date`)) {
        invalid_fields["voucher_date"] <- "Non-nullable required field `voucher_date` cannot be null."
      }

      # check if the required `voucher_status` is null
      if (is.null(self$`voucher_status`)) {
        invalid_fields["voucher_status"] <- "Non-nullable required field `voucher_status` cannot be null."
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
# DownPaymentInvoice$unlock()
#
## Below is an example to define the print function
# DownPaymentInvoice$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DownPaymentInvoice$lock()

