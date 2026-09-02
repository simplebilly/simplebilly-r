#' Create a new ProformaInvoiceUpdate
#'
#' @description
#' ProformaInvoiceUpdate Class
#'
#' @docType class
#' @title ProformaInvoiceUpdate
#' @description ProformaInvoiceUpdate Class
#' @format An \code{R6Class} generator object
#' @field convertedAt  character [optional]
#' @field convertedToInvoiceId Set when the proforma was converted into a real invoice. References the invoice entity. character [optional]
#' @field currency  \link{CurrencyCode} [optional]
#' @field customerId References the customer entity. character [optional]
#' @field customerSnapshot Snapshot of the recipient at issue time (address, VAT id, …). \link{AnyType} [optional]
#' @field issueDate  character [optional]
#' @field lineItems  \link{AnyType} [optional]
#' @field notes  character [optional]
#' @field orderNumber Reference to the order/quote this proforma belongs to. character [optional]
#' @field paymentDueDate Optional deadline the real invoice should carry after conversion. character [optional]
#' @field quotationId References the quotation entity. character [optional]
#' @field status `draft` | `sent` | `converted`. \link{ProformaInvoiceStatus} [optional]
#' @field subtotal  character [optional]
#' @field totalAmount  character [optional]
#' @field totalTax  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProformaInvoiceUpdate <- R6::R6Class(
  "ProformaInvoiceUpdate",
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
    #' Initialize a new ProformaInvoiceUpdate class.
    #'
    #' @param convertedAt convertedAt
    #' @param convertedToInvoiceId Set when the proforma was converted into a real invoice. References the invoice entity.
    #' @param currency currency
    #' @param customerId References the customer entity.
    #' @param customerSnapshot Snapshot of the recipient at issue time (address, VAT id, …).
    #' @param issueDate issueDate
    #' @param lineItems lineItems
    #' @param notes notes
    #' @param orderNumber Reference to the order/quote this proforma belongs to.
    #' @param paymentDueDate Optional deadline the real invoice should carry after conversion.
    #' @param quotationId References the quotation entity.
    #' @param status `draft` | `sent` | `converted`.
    #' @param subtotal subtotal
    #' @param totalAmount totalAmount
    #' @param totalTax totalTax
    #' @param ... Other optional arguments.
    initialize = function(`convertedAt` = NULL, `convertedToInvoiceId` = NULL, `currency` = NULL, `customerId` = NULL, `customerSnapshot` = NULL, `issueDate` = NULL, `lineItems` = NULL, `notes` = NULL, `orderNumber` = NULL, `paymentDueDate` = NULL, `quotationId` = NULL, `status` = NULL, `subtotal` = NULL, `totalAmount` = NULL, `totalTax` = NULL, ...) {
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
      if (!is.null(`currency`)) {
        if (!(`currency` %in% c())) {
          stop(paste("Error! \"", `currency`, "\" cannot be assigned to `currency`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`currency`))
        self$`currency` <- `currency`
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
      if (!is.null(`issueDate`)) {
        if (!is.character(`issueDate`)) {
          stop(paste("Error! Invalid data for `issueDate`. Must be a string:", `issueDate`))
        }
        self$`issueDate` <- `issueDate`
      }
      if (!is.null(`lineItems`)) {
        stopifnot(R6::is.R6(`lineItems`))
        self$`lineItems` <- `lineItems`
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
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`subtotal`)) {
        if (!(is.character(`subtotal`) && length(`subtotal`) == 1)) {
          stop(paste("Error! Invalid data for `subtotal`. Must be a string:", `subtotal`))
        }
        self$`subtotal` <- `subtotal`
      }
      if (!is.null(`totalAmount`)) {
        if (!(is.character(`totalAmount`) && length(`totalAmount`) == 1)) {
          stop(paste("Error! Invalid data for `totalAmount`. Must be a string:", `totalAmount`))
        }
        self$`totalAmount` <- `totalAmount`
      }
      if (!is.null(`totalTax`)) {
        if (!(is.character(`totalTax`) && length(`totalTax`) == 1)) {
          stop(paste("Error! Invalid data for `totalTax`. Must be a string:", `totalTax`))
        }
        self$`totalTax` <- `totalTax`
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
    #' @return ProformaInvoiceUpdate as a base R list.
    #' @examples
    #' # convert array of ProformaInvoiceUpdate (x) to a data frame
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
    #' Convert ProformaInvoiceUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProformaInvoiceUpdateObject <- list()
      if (!is.null(self$`convertedAt`)) {
        ProformaInvoiceUpdateObject[["convertedAt"]] <-
          self$`convertedAt`
      }
      if (!is.null(self$`convertedToInvoiceId`)) {
        ProformaInvoiceUpdateObject[["convertedToInvoiceId"]] <-
          self$`convertedToInvoiceId`
      }
      if (!is.null(self$`currency`)) {
        ProformaInvoiceUpdateObject[["currency"]] <-
          self$extractSimpleType(self$`currency`)
      }
      if (!is.null(self$`customerId`)) {
        ProformaInvoiceUpdateObject[["customerId"]] <-
          self$`customerId`
      }
      if (!is.null(self$`customerSnapshot`)) {
        ProformaInvoiceUpdateObject[["customerSnapshot"]] <-
          self$extractSimpleType(self$`customerSnapshot`)
      }
      if (!is.null(self$`issueDate`)) {
        ProformaInvoiceUpdateObject[["issueDate"]] <-
          self$`issueDate`
      }
      if (!is.null(self$`lineItems`)) {
        ProformaInvoiceUpdateObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`notes`)) {
        ProformaInvoiceUpdateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`orderNumber`)) {
        ProformaInvoiceUpdateObject[["orderNumber"]] <-
          self$`orderNumber`
      }
      if (!is.null(self$`paymentDueDate`)) {
        ProformaInvoiceUpdateObject[["paymentDueDate"]] <-
          self$`paymentDueDate`
      }
      if (!is.null(self$`quotationId`)) {
        ProformaInvoiceUpdateObject[["quotationId"]] <-
          self$`quotationId`
      }
      if (!is.null(self$`status`)) {
        ProformaInvoiceUpdateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`subtotal`)) {
        ProformaInvoiceUpdateObject[["subtotal"]] <-
          self$`subtotal`
      }
      if (!is.null(self$`totalAmount`)) {
        ProformaInvoiceUpdateObject[["totalAmount"]] <-
          self$`totalAmount`
      }
      if (!is.null(self$`totalTax`)) {
        ProformaInvoiceUpdateObject[["totalTax"]] <-
          self$`totalTax`
      }
      return(ProformaInvoiceUpdateObject)
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
    #' Deserialize JSON string into an instance of ProformaInvoiceUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProformaInvoiceUpdate
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
    #' @return ProformaInvoiceUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProformaInvoiceUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProformaInvoiceUpdate
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
    #' Validate JSON input with respect to ProformaInvoiceUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProformaInvoiceUpdate
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
# ProformaInvoiceUpdate$unlock()
#
## Below is an example to define the print function
# ProformaInvoiceUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProformaInvoiceUpdate$lock()

