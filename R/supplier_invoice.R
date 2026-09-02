#' Create a new SupplierInvoice
#'
#' @description
#' SupplierInvoice Class
#'
#' @docType class
#' @title SupplierInvoice
#' @description SupplierInvoice Class
#' @format An \code{R6Class} generator object
#' @field currency  character [optional]
#' @field goodsReceiptId References the goods receipt entity. character [optional]
#' @field invoiceDate  character
#' @field invoiceNumber  character
#' @field lineItems JSON array of `{product_id, name, quantity, unitPriceNet, taxRate}`. \link{AnyType}
#' @field notes  character [optional]
#' @field purchaseOrderId References the purchase order entity. character [optional]
#' @field status One of: draft | matched | has_variances | posted | cancelled \link{SupplierInvoiceStatus}
#' @field supplierContactId References the supplier entity. character [optional]
#' @field supplierName  character [optional]
#' @field totalGrossAmount  character [optional]
#' @field totalNetAmount  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SupplierInvoice <- R6::R6Class(
  "SupplierInvoice",
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
    #' Initialize a new SupplierInvoice class.
    #'
    #' @param invoiceDate invoiceDate
    #' @param invoiceNumber invoiceNumber
    #' @param lineItems JSON array of `{product_id, name, quantity, unitPriceNet, taxRate}`.
    #' @param status One of: draft | matched | has_variances | posted | cancelled
    #' @param currency currency
    #' @param goodsReceiptId References the goods receipt entity.
    #' @param notes notes
    #' @param purchaseOrderId References the purchase order entity.
    #' @param supplierContactId References the supplier entity.
    #' @param supplierName supplierName
    #' @param totalGrossAmount totalGrossAmount
    #' @param totalNetAmount totalNetAmount
    #' @param ... Other optional arguments.
    initialize = function(`invoiceDate`, `invoiceNumber`, `lineItems`, `status`, `currency` = NULL, `goodsReceiptId` = NULL, `notes` = NULL, `purchaseOrderId` = NULL, `supplierContactId` = NULL, `supplierName` = NULL, `totalGrossAmount` = NULL, `totalNetAmount` = NULL, ...) {
      if (!missing(`invoiceDate`)) {
        if (!(is.character(`invoiceDate`) && length(`invoiceDate`) == 1)) {
          stop(paste("Error! Invalid data for `invoiceDate`. Must be a string:", `invoiceDate`))
        }
        self$`invoiceDate` <- `invoiceDate`
      }
      if (!missing(`invoiceNumber`)) {
        if (!(is.character(`invoiceNumber`) && length(`invoiceNumber`) == 1)) {
          stop(paste("Error! Invalid data for `invoiceNumber`. Must be a string:", `invoiceNumber`))
        }
        self$`invoiceNumber` <- `invoiceNumber`
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
    #' @return SupplierInvoice as a base R list.
    #' @examples
    #' # convert array of SupplierInvoice (x) to a data frame
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
    #' Convert SupplierInvoice to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SupplierInvoiceObject <- list()
      if (!is.null(self$`currency`)) {
        SupplierInvoiceObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`goodsReceiptId`)) {
        SupplierInvoiceObject[["goodsReceiptId"]] <-
          self$`goodsReceiptId`
      }
      if (!is.null(self$`invoiceDate`)) {
        SupplierInvoiceObject[["invoiceDate"]] <-
          self$`invoiceDate`
      }
      if (!is.null(self$`invoiceNumber`)) {
        SupplierInvoiceObject[["invoiceNumber"]] <-
          self$`invoiceNumber`
      }
      if (!is.null(self$`lineItems`)) {
        SupplierInvoiceObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`notes`)) {
        SupplierInvoiceObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`purchaseOrderId`)) {
        SupplierInvoiceObject[["purchaseOrderId"]] <-
          self$`purchaseOrderId`
      }
      if (!is.null(self$`status`)) {
        SupplierInvoiceObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`supplierContactId`)) {
        SupplierInvoiceObject[["supplierContactId"]] <-
          self$`supplierContactId`
      }
      if (!is.null(self$`supplierName`)) {
        SupplierInvoiceObject[["supplierName"]] <-
          self$`supplierName`
      }
      if (!is.null(self$`totalGrossAmount`)) {
        SupplierInvoiceObject[["totalGrossAmount"]] <-
          self$`totalGrossAmount`
      }
      if (!is.null(self$`totalNetAmount`)) {
        SupplierInvoiceObject[["totalNetAmount"]] <-
          self$`totalNetAmount`
      }
      return(SupplierInvoiceObject)
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
    #' Deserialize JSON string into an instance of SupplierInvoice
    #'
    #' @param input_json the JSON input
    #' @return the instance of SupplierInvoice
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
    #' @return SupplierInvoice in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SupplierInvoice
    #'
    #' @param input_json the JSON input
    #' @return the instance of SupplierInvoice
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
    #' Validate JSON input with respect to SupplierInvoice and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `invoiceDate`
      if (!is.null(input_json$`invoiceDate`)) {
        if (!(is.character(input_json$`invoiceDate`) && length(input_json$`invoiceDate`) == 1)) {
          stop(paste("Error! Invalid data for `invoiceDate`. Must be a string:", input_json$`invoiceDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SupplierInvoice: the required field `invoiceDate` is missing."))
      }
      # check the required field `invoiceNumber`
      if (!is.null(input_json$`invoiceNumber`)) {
        if (!(is.character(input_json$`invoiceNumber`) && length(input_json$`invoiceNumber`) == 1)) {
          stop(paste("Error! Invalid data for `invoiceNumber`. Must be a string:", input_json$`invoiceNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SupplierInvoice: the required field `invoiceNumber` is missing."))
      }
      # check the required field `lineItems`
      if (!is.null(input_json$`lineItems`)) {
        stopifnot(R6::is.R6(input_json$`lineItems`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SupplierInvoice: the required field `lineItems` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SupplierInvoice: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SupplierInvoice
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `invoiceDate` is null
      if (is.null(self$`invoiceDate`)) {
        return(FALSE)
      }

      # check if the required `invoiceNumber` is null
      if (is.null(self$`invoiceNumber`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
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
      # check if the required `invoiceDate` is null
      if (is.null(self$`invoiceDate`)) {
        invalid_fields["invoiceDate"] <- "Non-nullable required field `invoiceDate` cannot be null."
      }

      # check if the required `invoiceNumber` is null
      if (is.null(self$`invoiceNumber`)) {
        invalid_fields["invoiceNumber"] <- "Non-nullable required field `invoiceNumber` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# SupplierInvoice$unlock()
#
## Below is an example to define the print function
# SupplierInvoice$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SupplierInvoice$lock()

