#' Create a new PurchaseOrderUpdate
#'
#' @description
#' PurchaseOrderUpdate Class
#'
#' @docType class
#' @title PurchaseOrderUpdate
#' @description PurchaseOrderUpdate Class
#' @format An \code{R6Class} generator object
#' @field currency  character [optional]
#' @field deliveryAddress  \link{AnyType} [optional]
#' @field expectedDeliveryDate  character [optional]
#' @field lineItems JSON array of `{product_id, name, quantity, unit_price_net, tax_rate, delivery_date}`. \link{AnyType} [optional]
#' @field notes  character [optional]
#' @field orderDate  character [optional]
#' @field poNumber  character [optional]
#' @field status One of: draft | ordered | partially_received | received | cancelled \link{PurchaseOrderStatus} [optional]
#' @field supplierContactId References the supplier entity. character [optional]
#' @field supplierName  character [optional]
#' @field totalGrossAmount  character [optional]
#' @field totalNetAmount  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PurchaseOrderUpdate <- R6::R6Class(
  "PurchaseOrderUpdate",
  public = list(
    `currency` = NULL,
    `deliveryAddress` = NULL,
    `expectedDeliveryDate` = NULL,
    `lineItems` = NULL,
    `notes` = NULL,
    `orderDate` = NULL,
    `poNumber` = NULL,
    `status` = NULL,
    `supplierContactId` = NULL,
    `supplierName` = NULL,
    `totalGrossAmount` = NULL,
    `totalNetAmount` = NULL,

    #' @description
    #' Initialize a new PurchaseOrderUpdate class.
    #'
    #' @param currency currency
    #' @param deliveryAddress deliveryAddress
    #' @param expectedDeliveryDate expectedDeliveryDate
    #' @param lineItems JSON array of `{product_id, name, quantity, unit_price_net, tax_rate, delivery_date}`.
    #' @param notes notes
    #' @param orderDate orderDate
    #' @param poNumber poNumber
    #' @param status One of: draft | ordered | partially_received | received | cancelled
    #' @param supplierContactId References the supplier entity.
    #' @param supplierName supplierName
    #' @param totalGrossAmount totalGrossAmount
    #' @param totalNetAmount totalNetAmount
    #' @param ... Other optional arguments.
    initialize = function(`currency` = NULL, `deliveryAddress` = NULL, `expectedDeliveryDate` = NULL, `lineItems` = NULL, `notes` = NULL, `orderDate` = NULL, `poNumber` = NULL, `status` = NULL, `supplierContactId` = NULL, `supplierName` = NULL, `totalGrossAmount` = NULL, `totalNetAmount` = NULL, ...) {
      if (!is.null(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!is.null(`deliveryAddress`)) {
        stopifnot(R6::is.R6(`deliveryAddress`))
        self$`deliveryAddress` <- `deliveryAddress`
      }
      if (!is.null(`expectedDeliveryDate`)) {
        if (!is.character(`expectedDeliveryDate`)) {
          stop(paste("Error! Invalid data for `expectedDeliveryDate`. Must be a string:", `expectedDeliveryDate`))
        }
        self$`expectedDeliveryDate` <- `expectedDeliveryDate`
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
      if (!is.null(`orderDate`)) {
        if (!is.character(`orderDate`)) {
          stop(paste("Error! Invalid data for `orderDate`. Must be a string:", `orderDate`))
        }
        self$`orderDate` <- `orderDate`
      }
      if (!is.null(`poNumber`)) {
        if (!(is.character(`poNumber`) && length(`poNumber`) == 1)) {
          stop(paste("Error! Invalid data for `poNumber`. Must be a string:", `poNumber`))
        }
        self$`poNumber` <- `poNumber`
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
    #' @return PurchaseOrderUpdate as a base R list.
    #' @examples
    #' # convert array of PurchaseOrderUpdate (x) to a data frame
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
    #' Convert PurchaseOrderUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PurchaseOrderUpdateObject <- list()
      if (!is.null(self$`currency`)) {
        PurchaseOrderUpdateObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`deliveryAddress`)) {
        PurchaseOrderUpdateObject[["deliveryAddress"]] <-
          self$extractSimpleType(self$`deliveryAddress`)
      }
      if (!is.null(self$`expectedDeliveryDate`)) {
        PurchaseOrderUpdateObject[["expectedDeliveryDate"]] <-
          self$`expectedDeliveryDate`
      }
      if (!is.null(self$`lineItems`)) {
        PurchaseOrderUpdateObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`notes`)) {
        PurchaseOrderUpdateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`orderDate`)) {
        PurchaseOrderUpdateObject[["orderDate"]] <-
          self$`orderDate`
      }
      if (!is.null(self$`poNumber`)) {
        PurchaseOrderUpdateObject[["poNumber"]] <-
          self$`poNumber`
      }
      if (!is.null(self$`status`)) {
        PurchaseOrderUpdateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`supplierContactId`)) {
        PurchaseOrderUpdateObject[["supplierContactId"]] <-
          self$`supplierContactId`
      }
      if (!is.null(self$`supplierName`)) {
        PurchaseOrderUpdateObject[["supplierName"]] <-
          self$`supplierName`
      }
      if (!is.null(self$`totalGrossAmount`)) {
        PurchaseOrderUpdateObject[["totalGrossAmount"]] <-
          self$`totalGrossAmount`
      }
      if (!is.null(self$`totalNetAmount`)) {
        PurchaseOrderUpdateObject[["totalNetAmount"]] <-
          self$`totalNetAmount`
      }
      return(PurchaseOrderUpdateObject)
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
    #' Deserialize JSON string into an instance of PurchaseOrderUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PurchaseOrderUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`deliveryAddress`)) {
        `deliveryaddress_object` <- AnyType$new()
        `deliveryaddress_object`$fromJSON(jsonlite::toJSON(this_object$`deliveryAddress`, auto_unbox = TRUE, digits = NA))
        self$`deliveryAddress` <- `deliveryaddress_object`
      }
      if (!is.null(this_object$`expectedDeliveryDate`)) {
        self$`expectedDeliveryDate` <- this_object$`expectedDeliveryDate`
      }
      if (!is.null(this_object$`lineItems`)) {
        `lineitems_object` <- AnyType$new()
        `lineitems_object`$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
        self$`lineItems` <- `lineitems_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`orderDate`)) {
        self$`orderDate` <- this_object$`orderDate`
      }
      if (!is.null(this_object$`poNumber`)) {
        self$`poNumber` <- this_object$`poNumber`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- PurchaseOrderStatus$new()
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
    #' @return PurchaseOrderUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PurchaseOrderUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PurchaseOrderUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`currency` <- this_object$`currency`
      self$`deliveryAddress` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`deliveryAddress`, auto_unbox = TRUE, digits = NA))
      self$`expectedDeliveryDate` <- this_object$`expectedDeliveryDate`
      self$`lineItems` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- this_object$`notes`
      self$`orderDate` <- this_object$`orderDate`
      self$`poNumber` <- this_object$`poNumber`
      self$`status` <- PurchaseOrderStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`supplierContactId` <- this_object$`supplierContactId`
      self$`supplierName` <- this_object$`supplierName`
      self$`totalGrossAmount` <- this_object$`totalGrossAmount`
      self$`totalNetAmount` <- this_object$`totalNetAmount`
      self
    },

    #' @description
    #' Validate JSON input with respect to PurchaseOrderUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PurchaseOrderUpdate
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
# PurchaseOrderUpdate$unlock()
#
## Below is an example to define the print function
# PurchaseOrderUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PurchaseOrderUpdate$lock()

