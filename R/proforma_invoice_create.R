#' Create a new ProformaInvoiceCreate
#'
#' @description
#' ProformaInvoiceCreate Class
#'
#' @docType class
#' @title ProformaInvoiceCreate
#' @description ProformaInvoiceCreate Class
#' @format An \code{R6Class} generator object
#' @field convertedAt  character [optional]
#' @field convertedToInvoiceId Set when the proforma was converted into a real invoice. References the invoice entity. character [optional]
#' @field currency  \link{CurrencyCode}
#' @field customerId References the customer entity. character [optional]
#' @field customerSnapshot Snapshot of the recipient at issue time (address, VAT id, …). \link{AnyType} [optional]
#' @field issueDate  character
#' @field lineItems  \link{AnyType}
#' @field notes  character [optional]
#' @field orderNumber Reference to the order/quote this proforma belongs to. character [optional]
#' @field paymentDueDate Optional deadline the real invoice should carry after conversion. character [optional]
#' @field quotationId References the quotation entity. character [optional]
#' @field status `draft` | `sent` | `converted`. \link{ProformaInvoiceStatus}
#' @field subtotal  character
#' @field totalAmount  character
#' @field totalTax  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProformaInvoiceCreate <- R6::R6Class(
  "ProformaInvoiceCreate",
  public = list(
    `convertedAt` = NULL,
    `convertedToInvoiceId` = NULL,
    `currency` = NULL,
    `customerId` = NULL,
    `customerSnapshot` = NULL,
    `issueDate` = NULL,
    `lineItems` = NULL,
    `notes` = NULL,
    `orderNumber` = NULL,
    `paymentDueDate` = NULL,
    `quotationId` = NULL,
    `status` = NULL,
    `subtotal` = NULL,
    `totalAmount` = NULL,
    `totalTax` = NULL,

    #' @description
    #' Initialize a new ProformaInvoiceCreate class.
    #'
    #' @param currency currency
    #' @param issueDate issueDate
    #' @param lineItems lineItems
    #' @param status `draft` | `sent` | `converted`.
    #' @param subtotal subtotal
    #' @param totalAmount totalAmount
    #' @param totalTax totalTax
    #' @param convertedAt convertedAt
    #' @param convertedToInvoiceId Set when the proforma was converted into a real invoice. References the invoice entity.
    #' @param customerId References the customer entity.
    #' @param customerSnapshot Snapshot of the recipient at issue time (address, VAT id, …).
    #' @param notes notes
    #' @param orderNumber Reference to the order/quote this proforma belongs to.
    #' @param paymentDueDate Optional deadline the real invoice should carry after conversion.
    #' @param quotationId References the quotation entity.
    #' @param ... Other optional arguments.
    initialize = function(`currency`, `issueDate`, `lineItems`, `status`, `subtotal`, `totalAmount`, `totalTax`, `convertedAt` = NULL, `convertedToInvoiceId` = NULL, `customerId` = NULL, `customerSnapshot` = NULL, `notes` = NULL, `orderNumber` = NULL, `paymentDueDate` = NULL, `quotationId` = NULL, ...) {
      if (!missing(`currency`)) {
        if (!(`currency` %in% c())) {
          stop(paste("Error! \"", `currency`, "\" cannot be assigned to `currency`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`currency`))
        self$`currency` <- `currency`
      }
      if (!missing(`issueDate`)) {
        if (!(is.character(`issueDate`) && length(`issueDate`) == 1)) {
          stop(paste("Error! Invalid data for `issueDate`. Must be a string:", `issueDate`))
        }
        self$`issueDate` <- `issueDate`
      }
      if (!missing(`lineItems`)) {
        stopifnot(R6::is.R6(`lineItems`))
        self$`lineItems` <- `lineItems`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`subtotal`)) {
        if (!(is.character(`subtotal`) && length(`subtotal`) == 1)) {
          stop(paste("Error! Invalid data for `subtotal`. Must be a string:", `subtotal`))
        }
        self$`subtotal` <- `subtotal`
      }
      if (!missing(`totalAmount`)) {
        if (!(is.character(`totalAmount`) && length(`totalAmount`) == 1)) {
          stop(paste("Error! Invalid data for `totalAmount`. Must be a string:", `totalAmount`))
        }
        self$`totalAmount` <- `totalAmount`
      }
      if (!missing(`totalTax`)) {
        if (!(is.character(`totalTax`) && length(`totalTax`) == 1)) {
          stop(paste("Error! Invalid data for `totalTax`. Must be a string:", `totalTax`))
        }
        self$`totalTax` <- `totalTax`
      }
      if (!is.null(`convertedAt`)) {
        if (!is.character(`convertedAt`)) {
          stop(paste("Error! Invalid data for `convertedAt`. Must be a string:", `convertedAt`))
        }
        self$`convertedAt` <- `convertedAt`
      }
      if (!is.null(`convertedToInvoiceId`)) {
        if (!(is.character(`convertedToInvoiceId`) && length(`convertedToInvoiceId`) == 1)) {
          stop(paste("Error! Invalid data for `convertedToInvoiceId`. Must be a string:", `convertedToInvoiceId`))
        }
        self$`convertedToInvoiceId` <- `convertedToInvoiceId`
      }
      if (!is.null(`customerId`)) {
        if (!(is.character(`customerId`) && length(`customerId`) == 1)) {
          stop(paste("Error! Invalid data for `customerId`. Must be a string:", `customerId`))
        }
        self$`customerId` <- `customerId`
      }
      if (!is.null(`customerSnapshot`)) {
        stopifnot(R6::is.R6(`customerSnapshot`))
        self$`customerSnapshot` <- `customerSnapshot`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`orderNumber`)) {
        if (!(is.character(`orderNumber`) && length(`orderNumber`) == 1)) {
          stop(paste("Error! Invalid data for `orderNumber`. Must be a string:", `orderNumber`))
        }
        self$`orderNumber` <- `orderNumber`
      }
      if (!is.null(`paymentDueDate`)) {
        if (!is.character(`paymentDueDate`)) {
          stop(paste("Error! Invalid data for `paymentDueDate`. Must be a string:", `paymentDueDate`))
        }
        self$`paymentDueDate` <- `paymentDueDate`
      }
      if (!is.null(`quotationId`)) {
        if (!(is.character(`quotationId`) && length(`quotationId`) == 1)) {
          stop(paste("Error! Invalid data for `quotationId`. Must be a string:", `quotationId`))
        }
        self$`quotationId` <- `quotationId`
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
    #' @return ProformaInvoiceCreate as a base R list.
    #' @examples
    #' # convert array of ProformaInvoiceCreate (x) to a data frame
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
    #' Convert ProformaInvoiceCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProformaInvoiceCreateObject <- list()
      if (!is.null(self$`convertedAt`)) {
        ProformaInvoiceCreateObject[["convertedAt"]] <-
          self$`convertedAt`
      }
      if (!is.null(self$`convertedToInvoiceId`)) {
        ProformaInvoiceCreateObject[["convertedToInvoiceId"]] <-
          self$`convertedToInvoiceId`
      }
      if (!is.null(self$`currency`)) {
        ProformaInvoiceCreateObject[["currency"]] <-
          self$extractSimpleType(self$`currency`)
      }
      if (!is.null(self$`customerId`)) {
        ProformaInvoiceCreateObject[["customerId"]] <-
          self$`customerId`
      }
      if (!is.null(self$`customerSnapshot`)) {
        ProformaInvoiceCreateObject[["customerSnapshot"]] <-
          self$extractSimpleType(self$`customerSnapshot`)
      }
      if (!is.null(self$`issueDate`)) {
        ProformaInvoiceCreateObject[["issueDate"]] <-
          self$`issueDate`
      }
      if (!is.null(self$`lineItems`)) {
        ProformaInvoiceCreateObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`notes`)) {
        ProformaInvoiceCreateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`orderNumber`)) {
        ProformaInvoiceCreateObject[["orderNumber"]] <-
          self$`orderNumber`
      }
      if (!is.null(self$`paymentDueDate`)) {
        ProformaInvoiceCreateObject[["paymentDueDate"]] <-
          self$`paymentDueDate`
      }
      if (!is.null(self$`quotationId`)) {
        ProformaInvoiceCreateObject[["quotationId"]] <-
          self$`quotationId`
      }
      if (!is.null(self$`status`)) {
        ProformaInvoiceCreateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`subtotal`)) {
        ProformaInvoiceCreateObject[["subtotal"]] <-
          self$`subtotal`
      }
      if (!is.null(self$`totalAmount`)) {
        ProformaInvoiceCreateObject[["totalAmount"]] <-
          self$`totalAmount`
      }
      if (!is.null(self$`totalTax`)) {
        ProformaInvoiceCreateObject[["totalTax"]] <-
          self$`totalTax`
      }
      return(ProformaInvoiceCreateObject)
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
    #' Deserialize JSON string into an instance of ProformaInvoiceCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProformaInvoiceCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`convertedAt`)) {
        self$`convertedAt` <- this_object$`convertedAt`
      }
      if (!is.null(this_object$`convertedToInvoiceId`)) {
        self$`convertedToInvoiceId` <- this_object$`convertedToInvoiceId`
      }
      if (!is.null(this_object$`currency`)) {
        `currency_object` <- CurrencyCode$new()
        `currency_object`$fromJSON(jsonlite::toJSON(this_object$`currency`, auto_unbox = TRUE, digits = NA))
        self$`currency` <- `currency_object`
      }
      if (!is.null(this_object$`customerId`)) {
        self$`customerId` <- this_object$`customerId`
      }
      if (!is.null(this_object$`customerSnapshot`)) {
        `customersnapshot_object` <- AnyType$new()
        `customersnapshot_object`$fromJSON(jsonlite::toJSON(this_object$`customerSnapshot`, auto_unbox = TRUE, digits = NA))
        self$`customerSnapshot` <- `customersnapshot_object`
      }
      if (!is.null(this_object$`issueDate`)) {
        self$`issueDate` <- this_object$`issueDate`
      }
      if (!is.null(this_object$`lineItems`)) {
        `lineitems_object` <- AnyType$new()
        `lineitems_object`$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
        self$`lineItems` <- `lineitems_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`orderNumber`)) {
        self$`orderNumber` <- this_object$`orderNumber`
      }
      if (!is.null(this_object$`paymentDueDate`)) {
        self$`paymentDueDate` <- this_object$`paymentDueDate`
      }
      if (!is.null(this_object$`quotationId`)) {
        self$`quotationId` <- this_object$`quotationId`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- ProformaInvoiceStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`subtotal`)) {
        self$`subtotal` <- this_object$`subtotal`
      }
      if (!is.null(this_object$`totalAmount`)) {
        self$`totalAmount` <- this_object$`totalAmount`
      }
      if (!is.null(this_object$`totalTax`)) {
        self$`totalTax` <- this_object$`totalTax`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProformaInvoiceCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProformaInvoiceCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProformaInvoiceCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`convertedAt` <- this_object$`convertedAt`
      self$`convertedToInvoiceId` <- this_object$`convertedToInvoiceId`
      self$`currency` <- CurrencyCode$new()$fromJSON(jsonlite::toJSON(this_object$`currency`, auto_unbox = TRUE, digits = NA))
      self$`customerId` <- this_object$`customerId`
      self$`customerSnapshot` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`customerSnapshot`, auto_unbox = TRUE, digits = NA))
      self$`issueDate` <- this_object$`issueDate`
      self$`lineItems` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- this_object$`notes`
      self$`orderNumber` <- this_object$`orderNumber`
      self$`paymentDueDate` <- this_object$`paymentDueDate`
      self$`quotationId` <- this_object$`quotationId`
      self$`status` <- ProformaInvoiceStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`subtotal` <- this_object$`subtotal`
      self$`totalAmount` <- this_object$`totalAmount`
      self$`totalTax` <- this_object$`totalTax`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProformaInvoiceCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `currency`
      if (!is.null(input_json$`currency`)) {
        stopifnot(R6::is.R6(input_json$`currency`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProformaInvoiceCreate: the required field `currency` is missing."))
      }
      # check the required field `issueDate`
      if (!is.null(input_json$`issueDate`)) {
        if (!(is.character(input_json$`issueDate`) && length(input_json$`issueDate`) == 1)) {
          stop(paste("Error! Invalid data for `issueDate`. Must be a string:", input_json$`issueDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProformaInvoiceCreate: the required field `issueDate` is missing."))
      }
      # check the required field `lineItems`
      if (!is.null(input_json$`lineItems`)) {
        stopifnot(R6::is.R6(input_json$`lineItems`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProformaInvoiceCreate: the required field `lineItems` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProformaInvoiceCreate: the required field `status` is missing."))
      }
      # check the required field `subtotal`
      if (!is.null(input_json$`subtotal`)) {
        if (!(is.character(input_json$`subtotal`) && length(input_json$`subtotal`) == 1)) {
          stop(paste("Error! Invalid data for `subtotal`. Must be a string:", input_json$`subtotal`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProformaInvoiceCreate: the required field `subtotal` is missing."))
      }
      # check the required field `totalAmount`
      if (!is.null(input_json$`totalAmount`)) {
        if (!(is.character(input_json$`totalAmount`) && length(input_json$`totalAmount`) == 1)) {
          stop(paste("Error! Invalid data for `totalAmount`. Must be a string:", input_json$`totalAmount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProformaInvoiceCreate: the required field `totalAmount` is missing."))
      }
      # check the required field `totalTax`
      if (!is.null(input_json$`totalTax`)) {
        if (!(is.character(input_json$`totalTax`) && length(input_json$`totalTax`) == 1)) {
          stop(paste("Error! Invalid data for `totalTax`. Must be a string:", input_json$`totalTax`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProformaInvoiceCreate: the required field `totalTax` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProformaInvoiceCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        return(FALSE)
      }

      # check if the required `issueDate` is null
      if (is.null(self$`issueDate`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `subtotal` is null
      if (is.null(self$`subtotal`)) {
        return(FALSE)
      }

      # check if the required `totalAmount` is null
      if (is.null(self$`totalAmount`)) {
        return(FALSE)
      }

      # check if the required `totalTax` is null
      if (is.null(self$`totalTax`)) {
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
      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        invalid_fields["currency"] <- "Non-nullable required field `currency` cannot be null."
      }

      # check if the required `issueDate` is null
      if (is.null(self$`issueDate`)) {
        invalid_fields["issueDate"] <- "Non-nullable required field `issueDate` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `subtotal` is null
      if (is.null(self$`subtotal`)) {
        invalid_fields["subtotal"] <- "Non-nullable required field `subtotal` cannot be null."
      }

      # check if the required `totalAmount` is null
      if (is.null(self$`totalAmount`)) {
        invalid_fields["totalAmount"] <- "Non-nullable required field `totalAmount` cannot be null."
      }

      # check if the required `totalTax` is null
      if (is.null(self$`totalTax`)) {
        invalid_fields["totalTax"] <- "Non-nullable required field `totalTax` cannot be null."
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
# ProformaInvoiceCreate$unlock()
#
## Below is an example to define the print function
# ProformaInvoiceCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProformaInvoiceCreate$lock()

