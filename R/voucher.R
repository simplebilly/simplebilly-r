#' Create a new Voucher
#'
#' @description
#' Voucher Class
#'
#' @docType class
#' @title Voucher
#' @description Voucher Class
#' @format An \code{R6Class} generator object
#' @field categoryId  character [optional]
#' @field contactId References the contact entity. character [optional]
#' @field contactName  character [optional]
#' @field currency  character
#' @field description  character [optional]
#' @field fileAttachments  \link{AnyType} [optional]
#' @field lineItems  \link{AnyType} [optional]
#' @field metadata  \link{AnyType} [optional]
#' @field notes  character [optional]
#' @field openAmount  character [optional]
#' @field paidDate  character [optional]
#' @field paymentStatus  \link{PaymentStatus} [optional]
#' @field taxAmounts  \link{AnyType} [optional]
#' @field taxCondition  character [optional]
#' @field totalGrossAmount  character [optional]
#' @field totalNetAmount  character [optional]
#' @field voucherDate  character
#' @field voucherNumber  character [optional]
#' @field voucherStatus  \link{VoucherStatus}
#' @field voucherType  \link{VoucherType}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Voucher <- R6::R6Class(
  "Voucher",
  public = list(
    `categoryId` = NULL,
    `contactId` = NULL,
    `contactName` = NULL,
    `currency` = NULL,
    `description` = NULL,
    `fileAttachments` = NULL,
    `lineItems` = NULL,
    `metadata` = NULL,
    `notes` = NULL,
    `openAmount` = NULL,
    `paidDate` = NULL,
    `paymentStatus` = NULL,
    `taxAmounts` = NULL,
    `taxCondition` = NULL,
    `totalGrossAmount` = NULL,
    `totalNetAmount` = NULL,
    `voucherDate` = NULL,
    `voucherNumber` = NULL,
    `voucherStatus` = NULL,
    `voucherType` = NULL,

    #' @description
    #' Initialize a new Voucher class.
    #'
    #' @param currency currency
    #' @param voucherDate voucherDate
    #' @param voucherStatus voucherStatus
    #' @param voucherType voucherType
    #' @param categoryId categoryId
    #' @param contactId References the contact entity.
    #' @param contactName contactName
    #' @param description description
    #' @param fileAttachments fileAttachments
    #' @param lineItems lineItems
    #' @param metadata metadata
    #' @param notes notes
    #' @param openAmount openAmount
    #' @param paidDate paidDate
    #' @param paymentStatus paymentStatus
    #' @param taxAmounts taxAmounts
    #' @param taxCondition taxCondition
    #' @param totalGrossAmount totalGrossAmount
    #' @param totalNetAmount totalNetAmount
    #' @param voucherNumber voucherNumber
    #' @param ... Other optional arguments.
    initialize = function(`currency`, `voucherDate`, `voucherStatus`, `voucherType`, `categoryId` = NULL, `contactId` = NULL, `contactName` = NULL, `description` = NULL, `fileAttachments` = NULL, `lineItems` = NULL, `metadata` = NULL, `notes` = NULL, `openAmount` = NULL, `paidDate` = NULL, `paymentStatus` = NULL, `taxAmounts` = NULL, `taxCondition` = NULL, `totalGrossAmount` = NULL, `totalNetAmount` = NULL, `voucherNumber` = NULL, ...) {
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
      if (!missing(`voucherType`)) {
        if (!(`voucherType` %in% c())) {
          stop(paste("Error! \"", `voucherType`, "\" cannot be assigned to `voucherType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`voucherType`))
        self$`voucherType` <- `voucherType`
      }
      if (!is.null(`categoryId`)) {
        if (!(is.character(`categoryId`) && length(`categoryId`) == 1)) {
          stop(paste("Error! Invalid data for `categoryId`. Must be a string:", `categoryId`))
        }
        self$`categoryId` <- `categoryId`
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
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`fileAttachments`)) {
        stopifnot(R6::is.R6(`fileAttachments`))
        self$`fileAttachments` <- `fileAttachments`
      }
      if (!is.null(`lineItems`)) {
        stopifnot(R6::is.R6(`lineItems`))
        self$`lineItems` <- `lineItems`
      }
      if (!is.null(`metadata`)) {
        stopifnot(R6::is.R6(`metadata`))
        self$`metadata` <- `metadata`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`openAmount`)) {
        if (!(is.character(`openAmount`) && length(`openAmount`) == 1)) {
          stop(paste("Error! Invalid data for `openAmount`. Must be a string:", `openAmount`))
        }
        self$`openAmount` <- `openAmount`
      }
      if (!is.null(`paidDate`)) {
        if (!is.character(`paidDate`)) {
          stop(paste("Error! Invalid data for `paidDate`. Must be a string:", `paidDate`))
        }
        self$`paidDate` <- `paidDate`
      }
      if (!is.null(`paymentStatus`)) {
        if (!(`paymentStatus` %in% c())) {
          stop(paste("Error! \"", `paymentStatus`, "\" cannot be assigned to `paymentStatus`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`paymentStatus`))
        self$`paymentStatus` <- `paymentStatus`
      }
      if (!is.null(`taxAmounts`)) {
        stopifnot(R6::is.R6(`taxAmounts`))
        self$`taxAmounts` <- `taxAmounts`
      }
      if (!is.null(`taxCondition`)) {
        if (!(is.character(`taxCondition`) && length(`taxCondition`) == 1)) {
          stop(paste("Error! Invalid data for `taxCondition`. Must be a string:", `taxCondition`))
        }
        self$`taxCondition` <- `taxCondition`
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
      if (!is.null(`voucherNumber`)) {
        if (!(is.character(`voucherNumber`) && length(`voucherNumber`) == 1)) {
          stop(paste("Error! Invalid data for `voucherNumber`. Must be a string:", `voucherNumber`))
        }
        self$`voucherNumber` <- `voucherNumber`
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
    #' @return Voucher as a base R list.
    #' @examples
    #' # convert array of Voucher (x) to a data frame
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
    #' Convert Voucher to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VoucherObject <- list()
      if (!is.null(self$`categoryId`)) {
        VoucherObject[["categoryId"]] <-
          self$`categoryId`
      }
      if (!is.null(self$`contactId`)) {
        VoucherObject[["contactId"]] <-
          self$`contactId`
      }
      if (!is.null(self$`contactName`)) {
        VoucherObject[["contactName"]] <-
          self$`contactName`
      }
      if (!is.null(self$`currency`)) {
        VoucherObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`description`)) {
        VoucherObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`fileAttachments`)) {
        VoucherObject[["fileAttachments"]] <-
          self$extractSimpleType(self$`fileAttachments`)
      }
      if (!is.null(self$`lineItems`)) {
        VoucherObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`metadata`)) {
        VoucherObject[["metadata"]] <-
          self$extractSimpleType(self$`metadata`)
      }
      if (!is.null(self$`notes`)) {
        VoucherObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`openAmount`)) {
        VoucherObject[["openAmount"]] <-
          self$`openAmount`
      }
      if (!is.null(self$`paidDate`)) {
        VoucherObject[["paidDate"]] <-
          self$`paidDate`
      }
      if (!is.null(self$`paymentStatus`)) {
        VoucherObject[["paymentStatus"]] <-
          self$extractSimpleType(self$`paymentStatus`)
      }
      if (!is.null(self$`taxAmounts`)) {
        VoucherObject[["taxAmounts"]] <-
          self$extractSimpleType(self$`taxAmounts`)
      }
      if (!is.null(self$`taxCondition`)) {
        VoucherObject[["taxCondition"]] <-
          self$`taxCondition`
      }
      if (!is.null(self$`totalGrossAmount`)) {
        VoucherObject[["totalGrossAmount"]] <-
          self$`totalGrossAmount`
      }
      if (!is.null(self$`totalNetAmount`)) {
        VoucherObject[["totalNetAmount"]] <-
          self$`totalNetAmount`
      }
      if (!is.null(self$`voucherDate`)) {
        VoucherObject[["voucherDate"]] <-
          self$`voucherDate`
      }
      if (!is.null(self$`voucherNumber`)) {
        VoucherObject[["voucherNumber"]] <-
          self$`voucherNumber`
      }
      if (!is.null(self$`voucherStatus`)) {
        VoucherObject[["voucherStatus"]] <-
          self$extractSimpleType(self$`voucherStatus`)
      }
      if (!is.null(self$`voucherType`)) {
        VoucherObject[["voucherType"]] <-
          self$extractSimpleType(self$`voucherType`)
      }
      return(VoucherObject)
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
    #' Deserialize JSON string into an instance of Voucher
    #'
    #' @param input_json the JSON input
    #' @return the instance of Voucher
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`categoryId`)) {
        self$`categoryId` <- this_object$`categoryId`
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
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`fileAttachments`)) {
        `fileattachments_object` <- AnyType$new()
        `fileattachments_object`$fromJSON(jsonlite::toJSON(this_object$`fileAttachments`, auto_unbox = TRUE, digits = NA))
        self$`fileAttachments` <- `fileattachments_object`
      }
      if (!is.null(this_object$`lineItems`)) {
        `lineitems_object` <- AnyType$new()
        `lineitems_object`$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
        self$`lineItems` <- `lineitems_object`
      }
      if (!is.null(this_object$`metadata`)) {
        `metadata_object` <- AnyType$new()
        `metadata_object`$fromJSON(jsonlite::toJSON(this_object$`metadata`, auto_unbox = TRUE, digits = NA))
        self$`metadata` <- `metadata_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`openAmount`)) {
        self$`openAmount` <- this_object$`openAmount`
      }
      if (!is.null(this_object$`paidDate`)) {
        self$`paidDate` <- this_object$`paidDate`
      }
      if (!is.null(this_object$`paymentStatus`)) {
        `paymentstatus_object` <- PaymentStatus$new()
        `paymentstatus_object`$fromJSON(jsonlite::toJSON(this_object$`paymentStatus`, auto_unbox = TRUE, digits = NA))
        self$`paymentStatus` <- `paymentstatus_object`
      }
      if (!is.null(this_object$`taxAmounts`)) {
        `taxamounts_object` <- AnyType$new()
        `taxamounts_object`$fromJSON(jsonlite::toJSON(this_object$`taxAmounts`, auto_unbox = TRUE, digits = NA))
        self$`taxAmounts` <- `taxamounts_object`
      }
      if (!is.null(this_object$`taxCondition`)) {
        self$`taxCondition` <- this_object$`taxCondition`
      }
      if (!is.null(this_object$`totalGrossAmount`)) {
        self$`totalGrossAmount` <- this_object$`totalGrossAmount`
      }
      if (!is.null(this_object$`totalNetAmount`)) {
        self$`totalNetAmount` <- this_object$`totalNetAmount`
      }
      if (!is.null(this_object$`voucherDate`)) {
        self$`voucherDate` <- this_object$`voucherDate`
      }
      if (!is.null(this_object$`voucherNumber`)) {
        self$`voucherNumber` <- this_object$`voucherNumber`
      }
      if (!is.null(this_object$`voucherStatus`)) {
        `voucherstatus_object` <- VoucherStatus$new()
        `voucherstatus_object`$fromJSON(jsonlite::toJSON(this_object$`voucherStatus`, auto_unbox = TRUE, digits = NA))
        self$`voucherStatus` <- `voucherstatus_object`
      }
      if (!is.null(this_object$`voucherType`)) {
        `vouchertype_object` <- VoucherType$new()
        `vouchertype_object`$fromJSON(jsonlite::toJSON(this_object$`voucherType`, auto_unbox = TRUE, digits = NA))
        self$`voucherType` <- `vouchertype_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Voucher in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Voucher
    #'
    #' @param input_json the JSON input
    #' @return the instance of Voucher
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`categoryId` <- this_object$`categoryId`
      self$`contactId` <- this_object$`contactId`
      self$`contactName` <- this_object$`contactName`
      self$`currency` <- this_object$`currency`
      self$`description` <- this_object$`description`
      self$`fileAttachments` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`fileAttachments`, auto_unbox = TRUE, digits = NA))
      self$`lineItems` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
      self$`metadata` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`metadata`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- this_object$`notes`
      self$`openAmount` <- this_object$`openAmount`
      self$`paidDate` <- this_object$`paidDate`
      self$`paymentStatus` <- PaymentStatus$new()$fromJSON(jsonlite::toJSON(this_object$`paymentStatus`, auto_unbox = TRUE, digits = NA))
      self$`taxAmounts` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`taxAmounts`, auto_unbox = TRUE, digits = NA))
      self$`taxCondition` <- this_object$`taxCondition`
      self$`totalGrossAmount` <- this_object$`totalGrossAmount`
      self$`totalNetAmount` <- this_object$`totalNetAmount`
      self$`voucherDate` <- this_object$`voucherDate`
      self$`voucherNumber` <- this_object$`voucherNumber`
      self$`voucherStatus` <- VoucherStatus$new()$fromJSON(jsonlite::toJSON(this_object$`voucherStatus`, auto_unbox = TRUE, digits = NA))
      self$`voucherType` <- VoucherType$new()$fromJSON(jsonlite::toJSON(this_object$`voucherType`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Voucher and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Voucher: the required field `currency` is missing."))
      }
      # check the required field `voucherDate`
      if (!is.null(input_json$`voucherDate`)) {
        if (!(is.character(input_json$`voucherDate`) && length(input_json$`voucherDate`) == 1)) {
          stop(paste("Error! Invalid data for `voucherDate`. Must be a string:", input_json$`voucherDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Voucher: the required field `voucherDate` is missing."))
      }
      # check the required field `voucherStatus`
      if (!is.null(input_json$`voucherStatus`)) {
        stopifnot(R6::is.R6(input_json$`voucherStatus`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Voucher: the required field `voucherStatus` is missing."))
      }
      # check the required field `voucherType`
      if (!is.null(input_json$`voucherType`)) {
        stopifnot(R6::is.R6(input_json$`voucherType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Voucher: the required field `voucherType` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Voucher
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

      # check if the required `voucherType` is null
      if (is.null(self$`voucherType`)) {
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

      # check if the required `voucherType` is null
      if (is.null(self$`voucherType`)) {
        invalid_fields["voucherType"] <- "Non-nullable required field `voucherType` cannot be null."
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
# Voucher$unlock()
#
## Below is an example to define the print function
# Voucher$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Voucher$lock()

