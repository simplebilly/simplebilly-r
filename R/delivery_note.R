#' Create a new DeliveryNote
#'
#' @description
#' DeliveryNote Class
#'
#' @docType class
#' @title DeliveryNote
#' @description DeliveryNote Class
#' @format An \code{R6Class} generator object
#' @field address  \link{AnyType} [optional]
#' @field contactId References the contact entity. character [optional]
#' @field contactName  character [optional]
#' @field currency  character
#' @field deliveryDate  character [optional]
#' @field deliveryNoteNumber  character [optional]
#' @field files  \link{AnyType} [optional]
#' @field introduction  character [optional]
#' @field lineItems  \link{AnyType} [optional]
#' @field precedingSalesVoucherId References the preceding sales voucher entity. character [optional]
#' @field precedingSalesVoucherType  \link{PrecedingSalesVoucherType} [optional]
#' @field remark  character [optional]
#' @field shippingDate  character [optional]
#' @field shippingMethod  character [optional]
#' @field subtotal  character [optional]
#' @field title  character [optional]
#' @field totalAmount  character [optional]
#' @field voucherDate  character
#' @field voucherStatus  \link{VoucherStatus}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeliveryNote <- R6::R6Class(
  "DeliveryNote",
  public = list(
    `address` = NULL,
    `contactId` = NULL,
    `contactName` = NULL,
    `currency` = NULL,
    `deliveryDate` = NULL,
    `deliveryNoteNumber` = NULL,
    `files` = NULL,
    `introduction` = NULL,
    `lineItems` = NULL,
    `precedingSalesVoucherId` = NULL,
    `precedingSalesVoucherType` = NULL,
    `remark` = NULL,
    `shippingDate` = NULL,
    `shippingMethod` = NULL,
    `subtotal` = NULL,
    `title` = NULL,
    `totalAmount` = NULL,
    `voucherDate` = NULL,
    `voucherStatus` = NULL,

    #' @description
    #' Initialize a new DeliveryNote class.
    #'
    #' @param currency currency
    #' @param voucherDate voucherDate
    #' @param voucherStatus voucherStatus
    #' @param address address
    #' @param contactId References the contact entity.
    #' @param contactName contactName
    #' @param deliveryDate deliveryDate
    #' @param deliveryNoteNumber deliveryNoteNumber
    #' @param files files
    #' @param introduction introduction
    #' @param lineItems lineItems
    #' @param precedingSalesVoucherId References the preceding sales voucher entity.
    #' @param precedingSalesVoucherType precedingSalesVoucherType
    #' @param remark remark
    #' @param shippingDate shippingDate
    #' @param shippingMethod shippingMethod
    #' @param subtotal subtotal
    #' @param title title
    #' @param totalAmount totalAmount
    #' @param ... Other optional arguments.
    initialize = function(`currency`, `voucherDate`, `voucherStatus`, `address` = NULL, `contactId` = NULL, `contactName` = NULL, `deliveryDate` = NULL, `deliveryNoteNumber` = NULL, `files` = NULL, `introduction` = NULL, `lineItems` = NULL, `precedingSalesVoucherId` = NULL, `precedingSalesVoucherType` = NULL, `remark` = NULL, `shippingDate` = NULL, `shippingMethod` = NULL, `subtotal` = NULL, `title` = NULL, `totalAmount` = NULL, ...) {
      if (!missing(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!missing(`voucherDate`)) {
        if (!(is.character(`voucherDate`) && length(`voucherDate`) == 1)) {
          stop(paste("Error! Invalid data for `voucherDate`. Must be a string:", `voucherDate`))
        }
        self$`voucherDate` <- `voucherDate`
      }
      if (!missing(`voucherStatus`)) {
        if (!(`voucherStatus` %in% c())) {
          stop(paste("Error! \"", `voucherStatus`, "\" cannot be assigned to `voucherStatus`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`voucherStatus`))
        self$`voucherStatus` <- `voucherStatus`
      }
      if (!is.null(`address`)) {
        stopifnot(R6::is.R6(`address`))
        self$`address` <- `address`
      }
      if (!is.null(`contactId`)) {
        if (!(is.character(`contactId`) && length(`contactId`) == 1)) {
          stop(paste("Error! Invalid data for `contactId`. Must be a string:", `contactId`))
        }
        self$`contactId` <- `contactId`
      }
      if (!is.null(`contactName`)) {
        if (!(is.character(`contactName`) && length(`contactName`) == 1)) {
          stop(paste("Error! Invalid data for `contactName`. Must be a string:", `contactName`))
        }
        self$`contactName` <- `contactName`
      }
      if (!is.null(`deliveryDate`)) {
        if (!is.character(`deliveryDate`)) {
          stop(paste("Error! Invalid data for `deliveryDate`. Must be a string:", `deliveryDate`))
        }
        self$`deliveryDate` <- `deliveryDate`
      }
      if (!is.null(`deliveryNoteNumber`)) {
        if (!(is.character(`deliveryNoteNumber`) && length(`deliveryNoteNumber`) == 1)) {
          stop(paste("Error! Invalid data for `deliveryNoteNumber`. Must be a string:", `deliveryNoteNumber`))
        }
        self$`deliveryNoteNumber` <- `deliveryNoteNumber`
      }
      if (!is.null(`files`)) {
        stopifnot(R6::is.R6(`files`))
        self$`files` <- `files`
      }
      if (!is.null(`introduction`)) {
        if (!(is.character(`introduction`) && length(`introduction`) == 1)) {
          stop(paste("Error! Invalid data for `introduction`. Must be a string:", `introduction`))
        }
        self$`introduction` <- `introduction`
      }
      if (!is.null(`lineItems`)) {
        stopifnot(R6::is.R6(`lineItems`))
        self$`lineItems` <- `lineItems`
      }
      if (!is.null(`precedingSalesVoucherId`)) {
        if (!(is.character(`precedingSalesVoucherId`) && length(`precedingSalesVoucherId`) == 1)) {
          stop(paste("Error! Invalid data for `precedingSalesVoucherId`. Must be a string:", `precedingSalesVoucherId`))
        }
        self$`precedingSalesVoucherId` <- `precedingSalesVoucherId`
      }
      if (!is.null(`precedingSalesVoucherType`)) {
        if (!(`precedingSalesVoucherType` %in% c())) {
          stop(paste("Error! \"", `precedingSalesVoucherType`, "\" cannot be assigned to `precedingSalesVoucherType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`precedingSalesVoucherType`))
        self$`precedingSalesVoucherType` <- `precedingSalesVoucherType`
      }
      if (!is.null(`remark`)) {
        if (!(is.character(`remark`) && length(`remark`) == 1)) {
          stop(paste("Error! Invalid data for `remark`. Must be a string:", `remark`))
        }
        self$`remark` <- `remark`
      }
      if (!is.null(`shippingDate`)) {
        if (!is.character(`shippingDate`)) {
          stop(paste("Error! Invalid data for `shippingDate`. Must be a string:", `shippingDate`))
        }
        self$`shippingDate` <- `shippingDate`
      }
      if (!is.null(`shippingMethod`)) {
        if (!(is.character(`shippingMethod`) && length(`shippingMethod`) == 1)) {
          stop(paste("Error! Invalid data for `shippingMethod`. Must be a string:", `shippingMethod`))
        }
        self$`shippingMethod` <- `shippingMethod`
      }
      if (!is.null(`subtotal`)) {
        if (!(is.character(`subtotal`) && length(`subtotal`) == 1)) {
          stop(paste("Error! Invalid data for `subtotal`. Must be a string:", `subtotal`))
        }
        self$`subtotal` <- `subtotal`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`totalAmount`)) {
        if (!(is.character(`totalAmount`) && length(`totalAmount`) == 1)) {
          stop(paste("Error! Invalid data for `totalAmount`. Must be a string:", `totalAmount`))
        }
        self$`totalAmount` <- `totalAmount`
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
    #' @return DeliveryNote as a base R list.
    #' @examples
    #' # convert array of DeliveryNote (x) to a data frame
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
    #' Convert DeliveryNote to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DeliveryNoteObject <- list()
      if (!is.null(self$`address`)) {
        DeliveryNoteObject[["address"]] <-
          self$extractSimpleType(self$`address`)
      }
      if (!is.null(self$`contactId`)) {
        DeliveryNoteObject[["contactId"]] <-
          self$`contactId`
      }
      if (!is.null(self$`contactName`)) {
        DeliveryNoteObject[["contactName"]] <-
          self$`contactName`
      }
      if (!is.null(self$`currency`)) {
        DeliveryNoteObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`deliveryDate`)) {
        DeliveryNoteObject[["deliveryDate"]] <-
          self$`deliveryDate`
      }
      if (!is.null(self$`deliveryNoteNumber`)) {
        DeliveryNoteObject[["deliveryNoteNumber"]] <-
          self$`deliveryNoteNumber`
      }
      if (!is.null(self$`files`)) {
        DeliveryNoteObject[["files"]] <-
          self$extractSimpleType(self$`files`)
      }
      if (!is.null(self$`introduction`)) {
        DeliveryNoteObject[["introduction"]] <-
          self$`introduction`
      }
      if (!is.null(self$`lineItems`)) {
        DeliveryNoteObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`precedingSalesVoucherId`)) {
        DeliveryNoteObject[["precedingSalesVoucherId"]] <-
          self$`precedingSalesVoucherId`
      }
      if (!is.null(self$`precedingSalesVoucherType`)) {
        DeliveryNoteObject[["precedingSalesVoucherType"]] <-
          self$extractSimpleType(self$`precedingSalesVoucherType`)
      }
      if (!is.null(self$`remark`)) {
        DeliveryNoteObject[["remark"]] <-
          self$`remark`
      }
      if (!is.null(self$`shippingDate`)) {
        DeliveryNoteObject[["shippingDate"]] <-
          self$`shippingDate`
      }
      if (!is.null(self$`shippingMethod`)) {
        DeliveryNoteObject[["shippingMethod"]] <-
          self$`shippingMethod`
      }
      if (!is.null(self$`subtotal`)) {
        DeliveryNoteObject[["subtotal"]] <-
          self$`subtotal`
      }
      if (!is.null(self$`title`)) {
        DeliveryNoteObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`totalAmount`)) {
        DeliveryNoteObject[["totalAmount"]] <-
          self$`totalAmount`
      }
      if (!is.null(self$`voucherDate`)) {
        DeliveryNoteObject[["voucherDate"]] <-
          self$`voucherDate`
      }
      if (!is.null(self$`voucherStatus`)) {
        DeliveryNoteObject[["voucherStatus"]] <-
          self$extractSimpleType(self$`voucherStatus`)
      }
      return(DeliveryNoteObject)
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
    #' Deserialize JSON string into an instance of DeliveryNote
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryNote
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`address`)) {
        `address_object` <- AnyType$new()
        `address_object`$fromJSON(jsonlite::toJSON(this_object$`address`, auto_unbox = TRUE, digits = NA))
        self$`address` <- `address_object`
      }
      if (!is.null(this_object$`contactId`)) {
        self$`contactId` <- this_object$`contactId`
      }
      if (!is.null(this_object$`contactName`)) {
        self$`contactName` <- this_object$`contactName`
      }
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`deliveryDate`)) {
        self$`deliveryDate` <- this_object$`deliveryDate`
      }
      if (!is.null(this_object$`deliveryNoteNumber`)) {
        self$`deliveryNoteNumber` <- this_object$`deliveryNoteNumber`
      }
      if (!is.null(this_object$`files`)) {
        `files_object` <- AnyType$new()
        `files_object`$fromJSON(jsonlite::toJSON(this_object$`files`, auto_unbox = TRUE, digits = NA))
        self$`files` <- `files_object`
      }
      if (!is.null(this_object$`introduction`)) {
        self$`introduction` <- this_object$`introduction`
      }
      if (!is.null(this_object$`lineItems`)) {
        `lineitems_object` <- AnyType$new()
        `lineitems_object`$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
        self$`lineItems` <- `lineitems_object`
      }
      if (!is.null(this_object$`precedingSalesVoucherId`)) {
        self$`precedingSalesVoucherId` <- this_object$`precedingSalesVoucherId`
      }
      if (!is.null(this_object$`precedingSalesVoucherType`)) {
        `precedingsalesvouchertype_object` <- PrecedingSalesVoucherType$new()
        `precedingsalesvouchertype_object`$fromJSON(jsonlite::toJSON(this_object$`precedingSalesVoucherType`, auto_unbox = TRUE, digits = NA))
        self$`precedingSalesVoucherType` <- `precedingsalesvouchertype_object`
      }
      if (!is.null(this_object$`remark`)) {
        self$`remark` <- this_object$`remark`
      }
      if (!is.null(this_object$`shippingDate`)) {
        self$`shippingDate` <- this_object$`shippingDate`
      }
      if (!is.null(this_object$`shippingMethod`)) {
        self$`shippingMethod` <- this_object$`shippingMethod`
      }
      if (!is.null(this_object$`subtotal`)) {
        self$`subtotal` <- this_object$`subtotal`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`totalAmount`)) {
        self$`totalAmount` <- this_object$`totalAmount`
      }
      if (!is.null(this_object$`voucherDate`)) {
        self$`voucherDate` <- this_object$`voucherDate`
      }
      if (!is.null(this_object$`voucherStatus`)) {
        `voucherstatus_object` <- VoucherStatus$new()
        `voucherstatus_object`$fromJSON(jsonlite::toJSON(this_object$`voucherStatus`, auto_unbox = TRUE, digits = NA))
        self$`voucherStatus` <- `voucherstatus_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DeliveryNote in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DeliveryNote
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryNote
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`address` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`address`, auto_unbox = TRUE, digits = NA))
      self$`contactId` <- this_object$`contactId`
      self$`contactName` <- this_object$`contactName`
      self$`currency` <- this_object$`currency`
      self$`deliveryDate` <- this_object$`deliveryDate`
      self$`deliveryNoteNumber` <- this_object$`deliveryNoteNumber`
      self$`files` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`files`, auto_unbox = TRUE, digits = NA))
      self$`introduction` <- this_object$`introduction`
      self$`lineItems` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
      self$`precedingSalesVoucherId` <- this_object$`precedingSalesVoucherId`
      self$`precedingSalesVoucherType` <- PrecedingSalesVoucherType$new()$fromJSON(jsonlite::toJSON(this_object$`precedingSalesVoucherType`, auto_unbox = TRUE, digits = NA))
      self$`remark` <- this_object$`remark`
      self$`shippingDate` <- this_object$`shippingDate`
      self$`shippingMethod` <- this_object$`shippingMethod`
      self$`subtotal` <- this_object$`subtotal`
      self$`title` <- this_object$`title`
      self$`totalAmount` <- this_object$`totalAmount`
      self$`voucherDate` <- this_object$`voucherDate`
      self$`voucherStatus` <- VoucherStatus$new()$fromJSON(jsonlite::toJSON(this_object$`voucherStatus`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to DeliveryNote and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `currency`
      if (!is.null(input_json$`currency`)) {
        if (!(is.character(input_json$`currency`) && length(input_json$`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", input_json$`currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliveryNote: the required field `currency` is missing."))
      }
      # check the required field `voucherDate`
      if (!is.null(input_json$`voucherDate`)) {
        if (!(is.character(input_json$`voucherDate`) && length(input_json$`voucherDate`) == 1)) {
          stop(paste("Error! Invalid data for `voucherDate`. Must be a string:", input_json$`voucherDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliveryNote: the required field `voucherDate` is missing."))
      }
      # check the required field `voucherStatus`
      if (!is.null(input_json$`voucherStatus`)) {
        stopifnot(R6::is.R6(input_json$`voucherStatus`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliveryNote: the required field `voucherStatus` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeliveryNote
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

      # check if the required `voucherDate` is null
      if (is.null(self$`voucherDate`)) {
        return(FALSE)
      }

      # check if the required `voucherStatus` is null
      if (is.null(self$`voucherStatus`)) {
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

      # check if the required `voucherDate` is null
      if (is.null(self$`voucherDate`)) {
        invalid_fields["voucherDate"] <- "Non-nullable required field `voucherDate` cannot be null."
      }

      # check if the required `voucherStatus` is null
      if (is.null(self$`voucherStatus`)) {
        invalid_fields["voucherStatus"] <- "Non-nullable required field `voucherStatus` cannot be null."
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
# DeliveryNote$unlock()
#
## Below is an example to define the print function
# DeliveryNote$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeliveryNote$lock()

