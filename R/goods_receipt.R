#' Create a new GoodsReceipt
#'
#' @description
#' GoodsReceipt Class
#'
#' @docType class
#' @title GoodsReceipt
#' @description GoodsReceipt Class
#' @format An \code{R6Class} generator object
#' @field grNumber  character
#' @field lineItems JSON array of `{product_id, name, quantity, batch_number?, expiry_date?, bin_location?}`. \link{AnyType}
#' @field notes  character [optional]
#' @field purchaseOrderId References the purchase order entity. character [optional]
#' @field receiptDate  character
#' @field supplierContactId References the supplier entity. character [optional]
#' @field supplierName  character [optional]
#' @field warehouseId References the warehouse entity. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GoodsReceipt <- R6::R6Class(
  "GoodsReceipt",
  public = list(
    `grNumber` = NULL,
    `lineItems` = NULL,
    `notes` = NULL,
    `purchaseOrderId` = NULL,
    `receiptDate` = NULL,
    `supplierContactId` = NULL,
    `supplierName` = NULL,
    `warehouseId` = NULL,

    #' @description
    #' Initialize a new GoodsReceipt class.
    #'
    #' @param grNumber grNumber
    #' @param lineItems JSON array of `{product_id, name, quantity, batch_number?, expiry_date?, bin_location?}`.
    #' @param receiptDate receiptDate
    #' @param warehouseId References the warehouse entity.
    #' @param notes notes
    #' @param purchaseOrderId References the purchase order entity.
    #' @param supplierContactId References the supplier entity.
    #' @param supplierName supplierName
    #' @param ... Other optional arguments.
    initialize = function(`grNumber`, `lineItems`, `receiptDate`, `warehouseId`, `notes` = NULL, `purchaseOrderId` = NULL, `supplierContactId` = NULL, `supplierName` = NULL, ...) {
      if (!missing(`grNumber`)) {
        if (!(is.character(`grNumber`) && length(`grNumber`) == 1)) {
          stop(paste("Error! Invalid data for `grNumber`. Must be a string:", `grNumber`))
        }
        self$`grNumber` <- `grNumber`
      }
      if (!missing(`lineItems`)) {
        stopifnot(R6::is.R6(`lineItems`))
        self$`lineItems` <- `lineItems`
      }
      if (!missing(`receiptDate`)) {
        if (!(is.character(`receiptDate`) && length(`receiptDate`) == 1)) {
          stop(paste("Error! Invalid data for `receiptDate`. Must be a string:", `receiptDate`))
        }
        self$`receiptDate` <- `receiptDate`
      }
      if (!missing(`warehouseId`)) {
        if (!(is.character(`warehouseId`) && length(`warehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseId`. Must be a string:", `warehouseId`))
        }
        self$`warehouseId` <- `warehouseId`
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
    #' @return GoodsReceipt as a base R list.
    #' @examples
    #' # convert array of GoodsReceipt (x) to a data frame
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
    #' Convert GoodsReceipt to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GoodsReceiptObject <- list()
      if (!is.null(self$`grNumber`)) {
        GoodsReceiptObject[["grNumber"]] <-
          self$`grNumber`
      }
      if (!is.null(self$`lineItems`)) {
        GoodsReceiptObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`notes`)) {
        GoodsReceiptObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`purchaseOrderId`)) {
        GoodsReceiptObject[["purchaseOrderId"]] <-
          self$`purchaseOrderId`
      }
      if (!is.null(self$`receiptDate`)) {
        GoodsReceiptObject[["receiptDate"]] <-
          self$`receiptDate`
      }
      if (!is.null(self$`supplierContactId`)) {
        GoodsReceiptObject[["supplierContactId"]] <-
          self$`supplierContactId`
      }
      if (!is.null(self$`supplierName`)) {
        GoodsReceiptObject[["supplierName"]] <-
          self$`supplierName`
      }
      if (!is.null(self$`warehouseId`)) {
        GoodsReceiptObject[["warehouseId"]] <-
          self$`warehouseId`
      }
      return(GoodsReceiptObject)
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
    #' Deserialize JSON string into an instance of GoodsReceipt
    #'
    #' @param input_json the JSON input
    #' @return the instance of GoodsReceipt
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`grNumber`)) {
        self$`grNumber` <- this_object$`grNumber`
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
      if (!is.null(this_object$`receiptDate`)) {
        self$`receiptDate` <- this_object$`receiptDate`
      }
      if (!is.null(this_object$`supplierContactId`)) {
        self$`supplierContactId` <- this_object$`supplierContactId`
      }
      if (!is.null(this_object$`supplierName`)) {
        self$`supplierName` <- this_object$`supplierName`
      }
      if (!is.null(this_object$`warehouseId`)) {
        self$`warehouseId` <- this_object$`warehouseId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GoodsReceipt in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GoodsReceipt
    #'
    #' @param input_json the JSON input
    #' @return the instance of GoodsReceipt
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`grNumber` <- this_object$`grNumber`
      self$`lineItems` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- this_object$`notes`
      self$`purchaseOrderId` <- this_object$`purchaseOrderId`
      self$`receiptDate` <- this_object$`receiptDate`
      self$`supplierContactId` <- this_object$`supplierContactId`
      self$`supplierName` <- this_object$`supplierName`
      self$`warehouseId` <- this_object$`warehouseId`
      self
    },

    #' @description
    #' Validate JSON input with respect to GoodsReceipt and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `grNumber`
      if (!is.null(input_json$`grNumber`)) {
        if (!(is.character(input_json$`grNumber`) && length(input_json$`grNumber`) == 1)) {
          stop(paste("Error! Invalid data for `grNumber`. Must be a string:", input_json$`grNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GoodsReceipt: the required field `grNumber` is missing."))
      }
      # check the required field `lineItems`
      if (!is.null(input_json$`lineItems`)) {
        stopifnot(R6::is.R6(input_json$`lineItems`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GoodsReceipt: the required field `lineItems` is missing."))
      }
      # check the required field `receiptDate`
      if (!is.null(input_json$`receiptDate`)) {
        if (!(is.character(input_json$`receiptDate`) && length(input_json$`receiptDate`) == 1)) {
          stop(paste("Error! Invalid data for `receiptDate`. Must be a string:", input_json$`receiptDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GoodsReceipt: the required field `receiptDate` is missing."))
      }
      # check the required field `warehouseId`
      if (!is.null(input_json$`warehouseId`)) {
        if (!(is.character(input_json$`warehouseId`) && length(input_json$`warehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseId`. Must be a string:", input_json$`warehouseId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GoodsReceipt: the required field `warehouseId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GoodsReceipt
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `grNumber` is null
      if (is.null(self$`grNumber`)) {
        return(FALSE)
      }

      # check if the required `receiptDate` is null
      if (is.null(self$`receiptDate`)) {
        return(FALSE)
      }

      # check if the required `warehouseId` is null
      if (is.null(self$`warehouseId`)) {
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
      # check if the required `grNumber` is null
      if (is.null(self$`grNumber`)) {
        invalid_fields["grNumber"] <- "Non-nullable required field `grNumber` cannot be null."
      }

      # check if the required `receiptDate` is null
      if (is.null(self$`receiptDate`)) {
        invalid_fields["receiptDate"] <- "Non-nullable required field `receiptDate` cannot be null."
      }

      # check if the required `warehouseId` is null
      if (is.null(self$`warehouseId`)) {
        invalid_fields["warehouseId"] <- "Non-nullable required field `warehouseId` cannot be null."
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
# GoodsReceipt$unlock()
#
## Below is an example to define the print function
# GoodsReceipt$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GoodsReceipt$lock()

