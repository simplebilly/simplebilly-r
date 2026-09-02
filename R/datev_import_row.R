#' Create a new DatevImportRow
#'
#' @description
#' DatevImportRow Class
#'
#' @docType class
#' @title DatevImportRow
#' @description DatevImportRow Class
#' @format An \code{R6Class} generator object
#' @field account  character
#' @field amount  character
#' @field base_amount  character
#' @field base_currency  character
#' @field booking_text  character
#' @field bu_key  character
#' @field cost_center1  character
#' @field cost_center2  character
#' @field currency  character
#' @field debit_credit  character
#' @field discount  character
#' @field document_date  character
#' @field document_field2  character
#' @field document_number  character
#' @field eu_country_vat_id  character
#' @field eu_tax_rate  character
#' @field exchange_rate  character
#' @field opposite_account  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DatevImportRow <- R6::R6Class(
  "DatevImportRow",
  public = list(
    `account` = NULL,
    `amount` = NULL,
    `base_amount` = NULL,
    `base_currency` = NULL,
    `booking_text` = NULL,
    `bu_key` = NULL,
    `cost_center1` = NULL,
    `cost_center2` = NULL,
    `currency` = NULL,
    `debit_credit` = NULL,
    `discount` = NULL,
    `document_date` = NULL,
    `document_field2` = NULL,
    `document_number` = NULL,
    `eu_country_vat_id` = NULL,
    `eu_tax_rate` = NULL,
    `exchange_rate` = NULL,
    `opposite_account` = NULL,

    #' @description
    #' Initialize a new DatevImportRow class.
    #'
    #' @param account account
    #' @param amount amount
    #' @param base_amount base_amount
    #' @param base_currency base_currency
    #' @param booking_text booking_text
    #' @param bu_key bu_key
    #' @param cost_center1 cost_center1
    #' @param cost_center2 cost_center2
    #' @param currency currency
    #' @param debit_credit debit_credit
    #' @param discount discount
    #' @param document_date document_date
    #' @param document_field2 document_field2
    #' @param document_number document_number
    #' @param eu_country_vat_id eu_country_vat_id
    #' @param eu_tax_rate eu_tax_rate
    #' @param exchange_rate exchange_rate
    #' @param opposite_account opposite_account
    #' @param ... Other optional arguments.
    initialize = function(`account`, `amount`, `base_amount`, `base_currency`, `booking_text`, `bu_key`, `cost_center1`, `cost_center2`, `currency`, `debit_credit`, `discount`, `document_date`, `document_field2`, `document_number`, `eu_country_vat_id`, `eu_tax_rate`, `exchange_rate`, `opposite_account`, ...) {
      if (!missing(`account`)) {
        if (!(is.character(`account`) && length(`account`) == 1)) {
          stop(paste("Error! Invalid data for `account`. Must be a string:", `account`))
        }
        self$`account` <- `account`
      }
      if (!missing(`amount`)) {
        if (!(is.character(`amount`) && length(`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a string:", `amount`))
        }
        self$`amount` <- `amount`
      }
      if (!missing(`base_amount`)) {
        if (!(is.character(`base_amount`) && length(`base_amount`) == 1)) {
          stop(paste("Error! Invalid data for `base_amount`. Must be a string:", `base_amount`))
        }
        self$`base_amount` <- `base_amount`
      }
      if (!missing(`base_currency`)) {
        if (!(is.character(`base_currency`) && length(`base_currency`) == 1)) {
          stop(paste("Error! Invalid data for `base_currency`. Must be a string:", `base_currency`))
        }
        self$`base_currency` <- `base_currency`
      }
      if (!missing(`booking_text`)) {
        if (!(is.character(`booking_text`) && length(`booking_text`) == 1)) {
          stop(paste("Error! Invalid data for `booking_text`. Must be a string:", `booking_text`))
        }
        self$`booking_text` <- `booking_text`
      }
      if (!missing(`bu_key`)) {
        if (!(is.character(`bu_key`) && length(`bu_key`) == 1)) {
          stop(paste("Error! Invalid data for `bu_key`. Must be a string:", `bu_key`))
        }
        self$`bu_key` <- `bu_key`
      }
      if (!missing(`cost_center1`)) {
        if (!(is.character(`cost_center1`) && length(`cost_center1`) == 1)) {
          stop(paste("Error! Invalid data for `cost_center1`. Must be a string:", `cost_center1`))
        }
        self$`cost_center1` <- `cost_center1`
      }
      if (!missing(`cost_center2`)) {
        if (!(is.character(`cost_center2`) && length(`cost_center2`) == 1)) {
          stop(paste("Error! Invalid data for `cost_center2`. Must be a string:", `cost_center2`))
        }
        self$`cost_center2` <- `cost_center2`
      }
      if (!missing(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!missing(`debit_credit`)) {
        if (!(is.character(`debit_credit`) && length(`debit_credit`) == 1)) {
          stop(paste("Error! Invalid data for `debit_credit`. Must be a string:", `debit_credit`))
        }
        self$`debit_credit` <- `debit_credit`
      }
      if (!missing(`discount`)) {
        if (!(is.character(`discount`) && length(`discount`) == 1)) {
          stop(paste("Error! Invalid data for `discount`. Must be a string:", `discount`))
        }
        self$`discount` <- `discount`
      }
      if (!missing(`document_date`)) {
        if (!(is.character(`document_date`) && length(`document_date`) == 1)) {
          stop(paste("Error! Invalid data for `document_date`. Must be a string:", `document_date`))
        }
        self$`document_date` <- `document_date`
      }
      if (!missing(`document_field2`)) {
        if (!(is.character(`document_field2`) && length(`document_field2`) == 1)) {
          stop(paste("Error! Invalid data for `document_field2`. Must be a string:", `document_field2`))
        }
        self$`document_field2` <- `document_field2`
      }
      if (!missing(`document_number`)) {
        if (!(is.character(`document_number`) && length(`document_number`) == 1)) {
          stop(paste("Error! Invalid data for `document_number`. Must be a string:", `document_number`))
        }
        self$`document_number` <- `document_number`
      }
      if (!missing(`eu_country_vat_id`)) {
        if (!(is.character(`eu_country_vat_id`) && length(`eu_country_vat_id`) == 1)) {
          stop(paste("Error! Invalid data for `eu_country_vat_id`. Must be a string:", `eu_country_vat_id`))
        }
        self$`eu_country_vat_id` <- `eu_country_vat_id`
      }
      if (!missing(`eu_tax_rate`)) {
        if (!(is.character(`eu_tax_rate`) && length(`eu_tax_rate`) == 1)) {
          stop(paste("Error! Invalid data for `eu_tax_rate`. Must be a string:", `eu_tax_rate`))
        }
        self$`eu_tax_rate` <- `eu_tax_rate`
      }
      if (!missing(`exchange_rate`)) {
        if (!(is.character(`exchange_rate`) && length(`exchange_rate`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_rate`. Must be a string:", `exchange_rate`))
        }
        self$`exchange_rate` <- `exchange_rate`
      }
      if (!missing(`opposite_account`)) {
        if (!(is.character(`opposite_account`) && length(`opposite_account`) == 1)) {
          stop(paste("Error! Invalid data for `opposite_account`. Must be a string:", `opposite_account`))
        }
        self$`opposite_account` <- `opposite_account`
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
    #' @return DatevImportRow as a base R list.
    #' @examples
    #' # convert array of DatevImportRow (x) to a data frame
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
    #' Convert DatevImportRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DatevImportRowObject <- list()
      if (!is.null(self$`account`)) {
        DatevImportRowObject[["account"]] <-
          self$`account`
      }
      if (!is.null(self$`amount`)) {
        DatevImportRowObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`base_amount`)) {
        DatevImportRowObject[["base_amount"]] <-
          self$`base_amount`
      }
      if (!is.null(self$`base_currency`)) {
        DatevImportRowObject[["base_currency"]] <-
          self$`base_currency`
      }
      if (!is.null(self$`booking_text`)) {
        DatevImportRowObject[["booking_text"]] <-
          self$`booking_text`
      }
      if (!is.null(self$`bu_key`)) {
        DatevImportRowObject[["bu_key"]] <-
          self$`bu_key`
      }
      if (!is.null(self$`cost_center1`)) {
        DatevImportRowObject[["cost_center1"]] <-
          self$`cost_center1`
      }
      if (!is.null(self$`cost_center2`)) {
        DatevImportRowObject[["cost_center2"]] <-
          self$`cost_center2`
      }
      if (!is.null(self$`currency`)) {
        DatevImportRowObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`debit_credit`)) {
        DatevImportRowObject[["debit_credit"]] <-
          self$`debit_credit`
      }
      if (!is.null(self$`discount`)) {
        DatevImportRowObject[["discount"]] <-
          self$`discount`
      }
      if (!is.null(self$`document_date`)) {
        DatevImportRowObject[["document_date"]] <-
          self$`document_date`
      }
      if (!is.null(self$`document_field2`)) {
        DatevImportRowObject[["document_field2"]] <-
          self$`document_field2`
      }
      if (!is.null(self$`document_number`)) {
        DatevImportRowObject[["document_number"]] <-
          self$`document_number`
      }
      if (!is.null(self$`eu_country_vat_id`)) {
        DatevImportRowObject[["eu_country_vat_id"]] <-
          self$`eu_country_vat_id`
      }
      if (!is.null(self$`eu_tax_rate`)) {
        DatevImportRowObject[["eu_tax_rate"]] <-
          self$`eu_tax_rate`
      }
      if (!is.null(self$`exchange_rate`)) {
        DatevImportRowObject[["exchange_rate"]] <-
          self$`exchange_rate`
      }
      if (!is.null(self$`opposite_account`)) {
        DatevImportRowObject[["opposite_account"]] <-
          self$`opposite_account`
      }
      return(DatevImportRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DatevImportRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of DatevImportRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`account`)) {
        self$`account` <- this_object$`account`
      }
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`base_amount`)) {
        self$`base_amount` <- this_object$`base_amount`
      }
      if (!is.null(this_object$`base_currency`)) {
        self$`base_currency` <- this_object$`base_currency`
      }
      if (!is.null(this_object$`booking_text`)) {
        self$`booking_text` <- this_object$`booking_text`
      }
      if (!is.null(this_object$`bu_key`)) {
        self$`bu_key` <- this_object$`bu_key`
      }
      if (!is.null(this_object$`cost_center1`)) {
        self$`cost_center1` <- this_object$`cost_center1`
      }
      if (!is.null(this_object$`cost_center2`)) {
        self$`cost_center2` <- this_object$`cost_center2`
      }
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`debit_credit`)) {
        self$`debit_credit` <- this_object$`debit_credit`
      }
      if (!is.null(this_object$`discount`)) {
        self$`discount` <- this_object$`discount`
      }
      if (!is.null(this_object$`document_date`)) {
        self$`document_date` <- this_object$`document_date`
      }
      if (!is.null(this_object$`document_field2`)) {
        self$`document_field2` <- this_object$`document_field2`
      }
      if (!is.null(this_object$`document_number`)) {
        self$`document_number` <- this_object$`document_number`
      }
      if (!is.null(this_object$`eu_country_vat_id`)) {
        self$`eu_country_vat_id` <- this_object$`eu_country_vat_id`
      }
      if (!is.null(this_object$`eu_tax_rate`)) {
        self$`eu_tax_rate` <- this_object$`eu_tax_rate`
      }
      if (!is.null(this_object$`exchange_rate`)) {
        self$`exchange_rate` <- this_object$`exchange_rate`
      }
      if (!is.null(this_object$`opposite_account`)) {
        self$`opposite_account` <- this_object$`opposite_account`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DatevImportRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DatevImportRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of DatevImportRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`account` <- this_object$`account`
      self$`amount` <- this_object$`amount`
      self$`base_amount` <- this_object$`base_amount`
      self$`base_currency` <- this_object$`base_currency`
      self$`booking_text` <- this_object$`booking_text`
      self$`bu_key` <- this_object$`bu_key`
      self$`cost_center1` <- this_object$`cost_center1`
      self$`cost_center2` <- this_object$`cost_center2`
      self$`currency` <- this_object$`currency`
      self$`debit_credit` <- this_object$`debit_credit`
      self$`discount` <- this_object$`discount`
      self$`document_date` <- this_object$`document_date`
      self$`document_field2` <- this_object$`document_field2`
      self$`document_number` <- this_object$`document_number`
      self$`eu_country_vat_id` <- this_object$`eu_country_vat_id`
      self$`eu_tax_rate` <- this_object$`eu_tax_rate`
      self$`exchange_rate` <- this_object$`exchange_rate`
      self$`opposite_account` <- this_object$`opposite_account`
      self
    },

    #' @description
    #' Validate JSON input with respect to DatevImportRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `account`
      if (!is.null(input_json$`account`)) {
        if (!(is.character(input_json$`account`) && length(input_json$`account`) == 1)) {
          stop(paste("Error! Invalid data for `account`. Must be a string:", input_json$`account`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `account` is missing."))
      }
      # check the required field `amount`
      if (!is.null(input_json$`amount`)) {
        if (!(is.character(input_json$`amount`) && length(input_json$`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a string:", input_json$`amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `amount` is missing."))
      }
      # check the required field `base_amount`
      if (!is.null(input_json$`base_amount`)) {
        if (!(is.character(input_json$`base_amount`) && length(input_json$`base_amount`) == 1)) {
          stop(paste("Error! Invalid data for `base_amount`. Must be a string:", input_json$`base_amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `base_amount` is missing."))
      }
      # check the required field `base_currency`
      if (!is.null(input_json$`base_currency`)) {
        if (!(is.character(input_json$`base_currency`) && length(input_json$`base_currency`) == 1)) {
          stop(paste("Error! Invalid data for `base_currency`. Must be a string:", input_json$`base_currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `base_currency` is missing."))
      }
      # check the required field `booking_text`
      if (!is.null(input_json$`booking_text`)) {
        if (!(is.character(input_json$`booking_text`) && length(input_json$`booking_text`) == 1)) {
          stop(paste("Error! Invalid data for `booking_text`. Must be a string:", input_json$`booking_text`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `booking_text` is missing."))
      }
      # check the required field `bu_key`
      if (!is.null(input_json$`bu_key`)) {
        if (!(is.character(input_json$`bu_key`) && length(input_json$`bu_key`) == 1)) {
          stop(paste("Error! Invalid data for `bu_key`. Must be a string:", input_json$`bu_key`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `bu_key` is missing."))
      }
      # check the required field `cost_center1`
      if (!is.null(input_json$`cost_center1`)) {
        if (!(is.character(input_json$`cost_center1`) && length(input_json$`cost_center1`) == 1)) {
          stop(paste("Error! Invalid data for `cost_center1`. Must be a string:", input_json$`cost_center1`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `cost_center1` is missing."))
      }
      # check the required field `cost_center2`
      if (!is.null(input_json$`cost_center2`)) {
        if (!(is.character(input_json$`cost_center2`) && length(input_json$`cost_center2`) == 1)) {
          stop(paste("Error! Invalid data for `cost_center2`. Must be a string:", input_json$`cost_center2`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `cost_center2` is missing."))
      }
      # check the required field `currency`
      if (!is.null(input_json$`currency`)) {
        if (!(is.character(input_json$`currency`) && length(input_json$`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", input_json$`currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `currency` is missing."))
      }
      # check the required field `debit_credit`
      if (!is.null(input_json$`debit_credit`)) {
        if (!(is.character(input_json$`debit_credit`) && length(input_json$`debit_credit`) == 1)) {
          stop(paste("Error! Invalid data for `debit_credit`. Must be a string:", input_json$`debit_credit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `debit_credit` is missing."))
      }
      # check the required field `discount`
      if (!is.null(input_json$`discount`)) {
        if (!(is.character(input_json$`discount`) && length(input_json$`discount`) == 1)) {
          stop(paste("Error! Invalid data for `discount`. Must be a string:", input_json$`discount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `discount` is missing."))
      }
      # check the required field `document_date`
      if (!is.null(input_json$`document_date`)) {
        if (!(is.character(input_json$`document_date`) && length(input_json$`document_date`) == 1)) {
          stop(paste("Error! Invalid data for `document_date`. Must be a string:", input_json$`document_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `document_date` is missing."))
      }
      # check the required field `document_field2`
      if (!is.null(input_json$`document_field2`)) {
        if (!(is.character(input_json$`document_field2`) && length(input_json$`document_field2`) == 1)) {
          stop(paste("Error! Invalid data for `document_field2`. Must be a string:", input_json$`document_field2`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `document_field2` is missing."))
      }
      # check the required field `document_number`
      if (!is.null(input_json$`document_number`)) {
        if (!(is.character(input_json$`document_number`) && length(input_json$`document_number`) == 1)) {
          stop(paste("Error! Invalid data for `document_number`. Must be a string:", input_json$`document_number`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `document_number` is missing."))
      }
      # check the required field `eu_country_vat_id`
      if (!is.null(input_json$`eu_country_vat_id`)) {
        if (!(is.character(input_json$`eu_country_vat_id`) && length(input_json$`eu_country_vat_id`) == 1)) {
          stop(paste("Error! Invalid data for `eu_country_vat_id`. Must be a string:", input_json$`eu_country_vat_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `eu_country_vat_id` is missing."))
      }
      # check the required field `eu_tax_rate`
      if (!is.null(input_json$`eu_tax_rate`)) {
        if (!(is.character(input_json$`eu_tax_rate`) && length(input_json$`eu_tax_rate`) == 1)) {
          stop(paste("Error! Invalid data for `eu_tax_rate`. Must be a string:", input_json$`eu_tax_rate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `eu_tax_rate` is missing."))
      }
      # check the required field `exchange_rate`
      if (!is.null(input_json$`exchange_rate`)) {
        if (!(is.character(input_json$`exchange_rate`) && length(input_json$`exchange_rate`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_rate`. Must be a string:", input_json$`exchange_rate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `exchange_rate` is missing."))
      }
      # check the required field `opposite_account`
      if (!is.null(input_json$`opposite_account`)) {
        if (!(is.character(input_json$`opposite_account`) && length(input_json$`opposite_account`) == 1)) {
          stop(paste("Error! Invalid data for `opposite_account`. Must be a string:", input_json$`opposite_account`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DatevImportRow: the required field `opposite_account` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DatevImportRow
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `account` is null
      if (is.null(self$`account`)) {
        return(FALSE)
      }

      # check if the required `amount` is null
      if (is.null(self$`amount`)) {
        return(FALSE)
      }

      # check if the required `base_amount` is null
      if (is.null(self$`base_amount`)) {
        return(FALSE)
      }

      # check if the required `base_currency` is null
      if (is.null(self$`base_currency`)) {
        return(FALSE)
      }

      # check if the required `booking_text` is null
      if (is.null(self$`booking_text`)) {
        return(FALSE)
      }

      # check if the required `bu_key` is null
      if (is.null(self$`bu_key`)) {
        return(FALSE)
      }

      # check if the required `cost_center1` is null
      if (is.null(self$`cost_center1`)) {
        return(FALSE)
      }

      # check if the required `cost_center2` is null
      if (is.null(self$`cost_center2`)) {
        return(FALSE)
      }

      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        return(FALSE)
      }

      # check if the required `debit_credit` is null
      if (is.null(self$`debit_credit`)) {
        return(FALSE)
      }

      # check if the required `discount` is null
      if (is.null(self$`discount`)) {
        return(FALSE)
      }

      # check if the required `document_date` is null
      if (is.null(self$`document_date`)) {
        return(FALSE)
      }

      # check if the required `document_field2` is null
      if (is.null(self$`document_field2`)) {
        return(FALSE)
      }

      # check if the required `document_number` is null
      if (is.null(self$`document_number`)) {
        return(FALSE)
      }

      # check if the required `eu_country_vat_id` is null
      if (is.null(self$`eu_country_vat_id`)) {
        return(FALSE)
      }

      # check if the required `eu_tax_rate` is null
      if (is.null(self$`eu_tax_rate`)) {
        return(FALSE)
      }

      # check if the required `exchange_rate` is null
      if (is.null(self$`exchange_rate`)) {
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
      # check if the required `account` is null
      if (is.null(self$`account`)) {
        invalid_fields["account"] <- "Non-nullable required field `account` cannot be null."
      }

      # check if the required `amount` is null
      if (is.null(self$`amount`)) {
        invalid_fields["amount"] <- "Non-nullable required field `amount` cannot be null."
      }

      # check if the required `base_amount` is null
      if (is.null(self$`base_amount`)) {
        invalid_fields["base_amount"] <- "Non-nullable required field `base_amount` cannot be null."
      }

      # check if the required `base_currency` is null
      if (is.null(self$`base_currency`)) {
        invalid_fields["base_currency"] <- "Non-nullable required field `base_currency` cannot be null."
      }

      # check if the required `booking_text` is null
      if (is.null(self$`booking_text`)) {
        invalid_fields["booking_text"] <- "Non-nullable required field `booking_text` cannot be null."
      }

      # check if the required `bu_key` is null
      if (is.null(self$`bu_key`)) {
        invalid_fields["bu_key"] <- "Non-nullable required field `bu_key` cannot be null."
      }

      # check if the required `cost_center1` is null
      if (is.null(self$`cost_center1`)) {
        invalid_fields["cost_center1"] <- "Non-nullable required field `cost_center1` cannot be null."
      }

      # check if the required `cost_center2` is null
      if (is.null(self$`cost_center2`)) {
        invalid_fields["cost_center2"] <- "Non-nullable required field `cost_center2` cannot be null."
      }

      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        invalid_fields["currency"] <- "Non-nullable required field `currency` cannot be null."
      }

      # check if the required `debit_credit` is null
      if (is.null(self$`debit_credit`)) {
        invalid_fields["debit_credit"] <- "Non-nullable required field `debit_credit` cannot be null."
      }

      # check if the required `discount` is null
      if (is.null(self$`discount`)) {
        invalid_fields["discount"] <- "Non-nullable required field `discount` cannot be null."
      }

      # check if the required `document_date` is null
      if (is.null(self$`document_date`)) {
        invalid_fields["document_date"] <- "Non-nullable required field `document_date` cannot be null."
      }

      # check if the required `document_field2` is null
      if (is.null(self$`document_field2`)) {
        invalid_fields["document_field2"] <- "Non-nullable required field `document_field2` cannot be null."
      }

      # check if the required `document_number` is null
      if (is.null(self$`document_number`)) {
        invalid_fields["document_number"] <- "Non-nullable required field `document_number` cannot be null."
      }

      # check if the required `eu_country_vat_id` is null
      if (is.null(self$`eu_country_vat_id`)) {
        invalid_fields["eu_country_vat_id"] <- "Non-nullable required field `eu_country_vat_id` cannot be null."
      }

      # check if the required `eu_tax_rate` is null
      if (is.null(self$`eu_tax_rate`)) {
        invalid_fields["eu_tax_rate"] <- "Non-nullable required field `eu_tax_rate` cannot be null."
      }

      # check if the required `exchange_rate` is null
      if (is.null(self$`exchange_rate`)) {
        invalid_fields["exchange_rate"] <- "Non-nullable required field `exchange_rate` cannot be null."
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
# DatevImportRow$unlock()
#
## Below is an example to define the print function
# DatevImportRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DatevImportRow$lock()

