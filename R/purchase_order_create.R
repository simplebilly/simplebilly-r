#' Create a new PurchaseOrderCreate
#'
#' @description
#' PurchaseOrderCreate Class
#'
#' @docType class
#' @title PurchaseOrderCreate
#' @description PurchaseOrderCreate Class
#' @format An \code{R6Class} generator object
#' @field currency  character [optional]
#' @field deliveryAddress  \link{AnyType} [optional]
#' @field expectedDeliveryDate  character [optional]
#' @field lineItems JSON array of `{product_id, name, quantity, unit_price_net, tax_rate, delivery_date}`. \link{AnyType} [optional]
#' @field notes  character [optional]
#' @field orderDate  character
#' @field poNumber  character
#' @field status One of: draft | ordered | partially_received | received | cancelled \link{PurchaseOrderStatus}
#' @field supplierContactId References the supplier entity. character [optional]
#' @field supplierName  character [optional]
#' @field totalGrossAmount  character [optional]
#' @field totalNetAmount  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PurchaseOrderCreate <- R6::R6Class(
  "PurchaseOrderCreate",
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
    #' Initialize a new PurchaseOrderCreate class.
    #'
    #' @param orderDate orderDate
    #' @param poNumber poNumber
    #' @param status One of: draft | ordered | partially_received | received | cancelled
    #' @param currency currency
    #' @param deliveryAddress deliveryAddress
    #' @param expectedDeliveryDate expectedDeliveryDate
    #' @param lineItems JSON array of `{product_id, name, quantity, unit_price_net, tax_rate, delivery_date}`.
    #' @param notes notes
    #' @param supplierContactId References the supplier entity.
    #' @param supplierName supplierName
    #' @param totalGrossAmount totalGrossAmount
    #' @param totalNetAmount totalNetAmount
    #' @param ... Other optional arguments.
    initialize = function(`orderDate`, `poNumber`, `status`, `currency` = NULL, `deliveryAddress` = NULL, `expectedDeliveryDate` = NULL, `lineItems` = NULL, `notes` = NULL, `supplierContactId` = NULL, `supplierName` = NULL, `totalGrossAmount` = NULL, `totalNetAmount` = NULL, ...) {
      if (!missing(`orderDate`)) {
        if (!(is.character(`orderDate`) && length(`orderDate`) == 1)) {
          stop(paste("Error! Invalid data for `orderDate`. Must be a string:", `orderDate`))
        }
        self$`orderDate` <- `orderDate`
      }
      if (!missing(`poNumber`)) {
        if (!(is.character(`poNumber`) && length(`poNumber`) == 1)) {
          stop(paste("Error! Invalid data for `poNumber`. Must be a string:", `poNumber`))
        }
        self$`poNumber` <- `poNumber`
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
    #' @return PurchaseOrderCreate as a base R list.
    #' @examples
    #' # convert array of PurchaseOrderCreate (x) to a data frame
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
    #' Convert PurchaseOrderCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PurchaseOrderCreateObject <- list()
      if (!is.null(self$`currency`)) {
        PurchaseOrderCreateObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`deliveryAddress`)) {
        PurchaseOrderCreateObject[["deliveryAddress"]] <-
          self$extractSimpleType(self$`deliveryAddress`)
      }
      if (!is.null(self$`expectedDeliveryDate`)) {
        PurchaseOrderCreateObject[["expectedDeliveryDate"]] <-
          self$`expectedDeliveryDate`
      }
      if (!is.null(self$`lineItems`)) {
        PurchaseOrderCreateObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`notes`)) {
        PurchaseOrderCreateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`orderDate`)) {
        PurchaseOrderCreateObject[["orderDate"]] <-
          self$`orderDate`
      }
      if (!is.null(self$`poNumber`)) {
        PurchaseOrderCreateObject[["poNumber"]] <-
          self$`poNumber`
      }
      if (!is.null(self$`status`)) {
        PurchaseOrderCreateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`supplierContactId`)) {
        PurchaseOrderCreateObject[["supplierContactId"]] <-
          self$`supplierContactId`
      }
      if (!is.null(self$`supplierName`)) {
        PurchaseOrderCreateObject[["supplierName"]] <-
          self$`supplierName`
      }
      if (!is.null(self$`totalGrossAmount`)) {
        PurchaseOrderCreateObject[["totalGrossAmount"]] <-
          self$`totalGrossAmount`
      }
      if (!is.null(self$`totalNetAmount`)) {
        PurchaseOrderCreateObject[["totalNetAmount"]] <-
          self$`totalNetAmount`
      }
      return(PurchaseOrderCreateObject)
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
    #' Deserialize JSON string into an instance of PurchaseOrderCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PurchaseOrderCreate
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
    #' @return PurchaseOrderCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PurchaseOrderCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PurchaseOrderCreate
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
    #' Validate JSON input with respect to PurchaseOrderCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `orderDate`
      if (!is.null(input_json$`orderDate`)) {
        if (!(is.character(input_json$`orderDate`) && length(input_json$`orderDate`) == 1)) {
          stop(paste("Error! Invalid data for `orderDate`. Must be a string:", input_json$`orderDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PurchaseOrderCreate: the required field `orderDate` is missing."))
      }
      # check the required field `poNumber`
      if (!is.null(input_json$`poNumber`)) {
        if (!(is.character(input_json$`poNumber`) && length(input_json$`poNumber`) == 1)) {
          stop(paste("Error! Invalid data for `poNumber`. Must be a string:", input_json$`poNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PurchaseOrderCreate: the required field `poNumber` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PurchaseOrderCreate: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PurchaseOrderCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `orderDate` is null
      if (is.null(self$`orderDate`)) {
        return(FALSE)
      }

      # check if the required `poNumber` is null
      if (is.null(self$`poNumber`)) {
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
      # check if the required `orderDate` is null
      if (is.null(self$`orderDate`)) {
        invalid_fields["orderDate"] <- "Non-nullable required field `orderDate` cannot be null."
      }

      # check if the required `poNumber` is null
      if (is.null(self$`poNumber`)) {
        invalid_fields["poNumber"] <- "Non-nullable required field `poNumber` cannot be null."
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
# PurchaseOrderCreate$unlock()
#
## Below is an example to define the print function
# PurchaseOrderCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PurchaseOrderCreate$lock()

