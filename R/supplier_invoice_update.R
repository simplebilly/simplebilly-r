#' Create a new SupplierInvoiceUpdate
#'
#' @description
#' SupplierInvoiceUpdate Class
#'
#' @docType class
#' @title SupplierInvoiceUpdate
#' @description SupplierInvoiceUpdate Class
#' @format An \code{R6Class} generator object
#' @field currency  character [optional]
#' @field goodsReceiptId References the goods receipt entity. character [optional]
#' @field invoiceDate  character [optional]
#' @field invoiceNumber  character [optional]
#' @field lineItems JSON array of `{product_id, name, quantity, unitPriceNet, taxRate}`. \link{AnyType} [optional]
#' @field notes  character [optional]
#' @field purchaseOrderId References the purchase order entity. character [optional]
#' @field status One of: draft | matched | has_variances | posted | cancelled \link{SupplierInvoiceStatus} [optional]
#' @field supplierContactId References the supplier entity. character [optional]
#' @field supplierName  character [optional]
#' @field totalGrossAmount  character [optional]
#' @field totalNetAmount  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SupplierInvoiceUpdate <- R6::R6Class(
  "SupplierInvoiceUpdate",
  public = list(
    `currency` = NULL,
    `goodsReceiptId` = NULL,
    `invoiceDate` = NULL,
    `invoiceNumber` = NULL,
    `lineItems` = NULL,
    `notes` = NULL,
    `purchaseOrderId` = NULL,
    `status` = NULL,
    `supplierContactId` = NULL,
    `supplierName` = NULL,
    `totalGrossAmount` = NULL,
    `totalNetAmount` = NULL,

    #' @description
    #' Initialize a new SupplierInvoiceUpdate class.
    #'
    #' @param currency currency
    #' @param goodsReceiptId References the goods receipt entity.
    #' @param invoiceDate invoiceDate
    #' @param invoiceNumber invoiceNumber
    #' @param lineItems JSON array of `{product_id, name, quantity, unitPriceNet, taxRate}`.
    #' @param notes notes
    #' @param purchaseOrderId References the purchase order entity.
    #' @param status One of: draft | matched | has_variances | posted | cancelled
    #' @param supplierContactId References the supplier entity.
    #' @param supplierName supplierName
    #' @param totalGrossAmount totalGrossAmount
    #' @param totalNetAmount totalNetAmount
    #' @param ... Other optional arguments.
    initialize = function(`currency` = NULL, `goodsReceiptId` = NULL, `invoiceDate` = NULL, `invoiceNumber` = NULL, `lineItems` = NULL, `notes` = NULL, `purchaseOrderId` = NULL, `status` = NULL, `supplierContactId` = NULL, `supplierName` = NULL, `totalGrossAmount` = NULL, `totalNetAmount` = NULL, ...) {
      if (!is.null(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!is.null(`goodsReceiptId`)) {
        if (!(is.character(`goodsReceiptId`) && length(`goodsReceiptId`) == 1)) {
          stop(paste("Error! Invalid data for `goodsReceiptId`. Must be a string:", `goodsReceiptId`))
        }
        self$`goodsReceiptId` <- `goodsReceiptId`
      }
      if (!is.null(`invoiceDate`)) {
        if (!is.character(`invoiceDate`)) {
          stop(paste("Error! Invalid data for `invoiceDate`. Must be a string:", `invoiceDate`))
        }
        self$`invoiceDate` <- `invoiceDate`
      }
      if (!is.null(`invoiceNumber`)) {
        if (!(is.character(`invoiceNumber`) && length(`invoiceNumber`) == 1)) {
          stop(paste("Error! Invalid data for `invoiceNumber`. Must be a string:", `invoiceNumber`))
        }
        self$`invoiceNumber` <- `invoiceNumber`
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
      if (!is.null(`purchaseOrderId`)) {
        if (!(is.character(`purchaseOrderId`) && length(`purchaseOrderId`) == 1)) {
          stop(paste("Error! Invalid data for `purchaseOrderId`. Must be a string:", `purchaseOrderId`))
        }
        self$`purchaseOrderId` <- `purchaseOrderId`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`supplierContactId`)) {
        if (!(is.character(`supplierContactId`) && length(`supplierContactId`) == 1)) {
          stop(paste("Error! Invalid data for `supplierContactId`. Must be a string:", `supplierContactId`))
        }
        self$`supplierContactId` <- `supplierContactId`
      }
      if (!is.null(`supplierName`)) {
        if (!(is.character(`supplierName`) && length(`supplierName`) == 1)) {
          stop(paste("Error! Invalid data for `supplierName`. Must be a string:", `supplierName`))
        }
        self$`supplierName` <- `supplierName`
      }
      if (!is.null(`totalGrossAmount`)) {
        if (!(is.character(`totalGrossAmount`) && length(`totalGrossAmount`) == 1)) {
          stop(paste("Error! Invalid data for `totalGrossAmount`. Must be a string:", `totalGrossAmount`))
        }
        self$`totalGrossAmount` <- `totalGrossAmount`
      }
      if (!is.null(`totalNetAmount`)) {
        if (!(is.character(`totalNetAmount`) && length(`totalNetAmount`) == 1)) {
          stop(paste("Error! Invalid data for `totalNetAmount`. Must be a string:", `totalNetAmount`))
        }
        self$`totalNetAmount` <- `totalNetAmount`
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
    #' @return SupplierInvoiceUpdate as a base R list.
    #' @examples
    #' # convert array of SupplierInvoiceUpdate (x) to a data frame
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
    #' Convert SupplierInvoiceUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SupplierInvoiceUpdateObject <- list()
      if (!is.null(self$`currency`)) {
        SupplierInvoiceUpdateObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`goodsReceiptId`)) {
        SupplierInvoiceUpdateObject[["goodsReceiptId"]] <-
          self$`goodsReceiptId`
      }
      if (!is.null(self$`invoiceDate`)) {
        SupplierInvoiceUpdateObject[["invoiceDate"]] <-
          self$`invoiceDate`
      }
      if (!is.null(self$`invoiceNumber`)) {
        SupplierInvoiceUpdateObject[["invoiceNumber"]] <-
          self$`invoiceNumber`
      }
      if (!is.null(self$`lineItems`)) {
        SupplierInvoiceUpdateObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`notes`)) {
        SupplierInvoiceUpdateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`purchaseOrderId`)) {
        SupplierInvoiceUpdateObject[["purchaseOrderId"]] <-
          self$`purchaseOrderId`
      }
      if (!is.null(self$`status`)) {
        SupplierInvoiceUpdateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`supplierContactId`)) {
        SupplierInvoiceUpdateObject[["supplierContactId"]] <-
          self$`supplierContactId`
      }
      if (!is.null(self$`supplierName`)) {
        SupplierInvoiceUpdateObject[["supplierName"]] <-
          self$`supplierName`
      }
      if (!is.null(self$`totalGrossAmount`)) {
        SupplierInvoiceUpdateObject[["totalGrossAmount"]] <-
          self$`totalGrossAmount`
      }
      if (!is.null(self$`totalNetAmount`)) {
        SupplierInvoiceUpdateObject[["totalNetAmount"]] <-
          self$`totalNetAmount`
      }
      return(SupplierInvoiceUpdateObject)
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
    #' Deserialize JSON string into an instance of SupplierInvoiceUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of SupplierInvoiceUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`goodsReceiptId`)) {
        self$`goodsReceiptId` <- this_object$`goodsReceiptId`
      }
      if (!is.null(this_object$`invoiceDate`)) {
        self$`invoiceDate` <- this_object$`invoiceDate`
      }
      if (!is.null(this_object$`invoiceNumber`)) {
        self$`invoiceNumber` <- this_object$`invoiceNumber`
      }
      if (!is.null(this_object$`lineItems`)) {
        `lineitems_object` <- AnyType$new()
        `lineitems_object`$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
        self$`lineItems` <- `lineitems_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`purchaseOrderId`)) {
        self$`purchaseOrderId` <- this_object$`purchaseOrderId`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- SupplierInvoiceStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`supplierContactId`)) {
        self$`supplierContactId` <- this_object$`supplierContactId`
      }
      if (!is.null(this_object$`supplierName`)) {
        self$`supplierName` <- this_object$`supplierName`
      }
      if (!is.null(this_object$`totalGrossAmount`)) {
        self$`totalGrossAmount` <- this_object$`totalGrossAmount`
      }
      if (!is.null(this_object$`totalNetAmount`)) {
        self$`totalNetAmount` <- this_object$`totalNetAmount`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SupplierInvoiceUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SupplierInvoiceUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of SupplierInvoiceUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`currency` <- this_object$`currency`
      self$`goodsReceiptId` <- this_object$`goodsReceiptId`
      self$`invoiceDate` <- this_object$`invoiceDate`
      self$`invoiceNumber` <- this_object$`invoiceNumber`
      self$`lineItems` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- this_object$`notes`
      self$`purchaseOrderId` <- this_object$`purchaseOrderId`
      self$`status` <- SupplierInvoiceStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`supplierContactId` <- this_object$`supplierContactId`
      self$`supplierName` <- this_object$`supplierName`
      self$`totalGrossAmount` <- this_object$`totalGrossAmount`
      self$`totalNetAmount` <- this_object$`totalNetAmount`
      self
    },

    #' @description
    #' Validate JSON input with respect to SupplierInvoiceUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SupplierInvoiceUpdate
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
# SupplierInvoiceUpdate$unlock()
#
## Below is an example to define the print function
# SupplierInvoiceUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SupplierInvoiceUpdate$lock()

