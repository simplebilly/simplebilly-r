#' Create a new OrderConfirmationCreate
#'
#' @description
#' OrderConfirmationCreate Class
#'
#' @docType class
#' @title OrderConfirmationCreate
#' @description OrderConfirmationCreate Class
#' @format An \code{R6Class} generator object
#' @field address  \link{AnyType} [optional]
#' @field confirmationNumber  character [optional]
#' @field contactId References the contact entity. character [optional]
#' @field contactName  character [optional]
#' @field currency  character
#' @field files  \link{AnyType} [optional]
#' @field introduction  character [optional]
#' @field lineItems  \link{AnyType} [optional]
#' @field precedingSalesVoucherId References the preceding sales voucher entity. character [optional]
#' @field precedingSalesVoucherType  \link{PrecedingSalesVoucherType} [optional]
#' @field remark  character [optional]
#' @field taxCondition  character [optional]
#' @field title  character [optional]
#' @field voucherDate  character
#' @field voucherStatus  \link{VoucherStatus}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrderConfirmationCreate <- R6::R6Class(
  "OrderConfirmationCreate",
  public = list(
    `address` = NULL,
    `confirmationNumber` = NULL,
    `contactId` = NULL,
    `contactName` = NULL,
    `currency` = NULL,
    `files` = NULL,
    `introduction` = NULL,
    `lineItems` = NULL,
    `precedingSalesVoucherId` = NULL,
    `precedingSalesVoucherType` = NULL,
    `remark` = NULL,
    `taxCondition` = NULL,
    `title` = NULL,
    `voucherDate` = NULL,
    `voucherStatus` = NULL,

    #' @description
    #' Initialize a new OrderConfirmationCreate class.
    #'
    #' @param currency currency
    #' @param voucherDate voucherDate
    #' @param voucherStatus voucherStatus
    #' @param address address
    #' @param confirmationNumber confirmationNumber
    #' @param contactId References the contact entity.
    #' @param contactName contactName
    #' @param files files
    #' @param introduction introduction
    #' @param lineItems lineItems
    #' @param precedingSalesVoucherId References the preceding sales voucher entity.
    #' @param precedingSalesVoucherType precedingSalesVoucherType
    #' @param remark remark
    #' @param taxCondition taxCondition
    #' @param title title
    #' @param ... Other optional arguments.
    initialize = function(`currency`, `voucherDate`, `voucherStatus`, `address` = NULL, `confirmationNumber` = NULL, `contactId` = NULL, `contactName` = NULL, `files` = NULL, `introduction` = NULL, `lineItems` = NULL, `precedingSalesVoucherId` = NULL, `precedingSalesVoucherType` = NULL, `remark` = NULL, `taxCondition` = NULL, `title` = NULL, ...) {
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
      if (!is.null(`confirmationNumber`)) {
        if (!(is.character(`confirmationNumber`) && length(`confirmationNumber`) == 1)) {
          stop(paste("Error! Invalid data for `confirmationNumber`. Must be a string:", `confirmationNumber`))
        }
        self$`confirmationNumber` <- `confirmationNumber`
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
      if (!is.null(`taxCondition`)) {
        if (!(is.character(`taxCondition`) && length(`taxCondition`) == 1)) {
          stop(paste("Error! Invalid data for `taxCondition`. Must be a string:", `taxCondition`))
        }
        self$`taxCondition` <- `taxCondition`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
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
    #' @return OrderConfirmationCreate as a base R list.
    #' @examples
    #' # convert array of OrderConfirmationCreate (x) to a data frame
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
    #' Convert OrderConfirmationCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrderConfirmationCreateObject <- list()
      if (!is.null(self$`address`)) {
        OrderConfirmationCreateObject[["address"]] <-
          self$extractSimpleType(self$`address`)
      }
      if (!is.null(self$`confirmationNumber`)) {
        OrderConfirmationCreateObject[["confirmationNumber"]] <-
          self$`confirmationNumber`
      }
      if (!is.null(self$`contactId`)) {
        OrderConfirmationCreateObject[["contactId"]] <-
          self$`contactId`
      }
      if (!is.null(self$`contactName`)) {
        OrderConfirmationCreateObject[["contactName"]] <-
          self$`contactName`
      }
      if (!is.null(self$`currency`)) {
        OrderConfirmationCreateObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`files`)) {
        OrderConfirmationCreateObject[["files"]] <-
          self$extractSimpleType(self$`files`)
      }
      if (!is.null(self$`introduction`)) {
        OrderConfirmationCreateObject[["introduction"]] <-
          self$`introduction`
      }
      if (!is.null(self$`lineItems`)) {
        OrderConfirmationCreateObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`precedingSalesVoucherId`)) {
        OrderConfirmationCreateObject[["precedingSalesVoucherId"]] <-
          self$`precedingSalesVoucherId`
      }
      if (!is.null(self$`precedingSalesVoucherType`)) {
        OrderConfirmationCreateObject[["precedingSalesVoucherType"]] <-
          self$extractSimpleType(self$`precedingSalesVoucherType`)
      }
      if (!is.null(self$`remark`)) {
        OrderConfirmationCreateObject[["remark"]] <-
          self$`remark`
      }
      if (!is.null(self$`taxCondition`)) {
        OrderConfirmationCreateObject[["taxCondition"]] <-
          self$`taxCondition`
      }
      if (!is.null(self$`title`)) {
        OrderConfirmationCreateObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`voucherDate`)) {
        OrderConfirmationCreateObject[["voucherDate"]] <-
          self$`voucherDate`
      }
      if (!is.null(self$`voucherStatus`)) {
        OrderConfirmationCreateObject[["voucherStatus"]] <-
          self$extractSimpleType(self$`voucherStatus`)
      }
      return(OrderConfirmationCreateObject)
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
    #' Deserialize JSON string into an instance of OrderConfirmationCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderConfirmationCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`address`)) {
        `address_object` <- AnyType$new()
        `address_object`$fromJSON(jsonlite::toJSON(this_object$`address`, auto_unbox = TRUE, digits = NA))
        self$`address` <- `address_object`
      }
      if (!is.null(this_object$`confirmationNumber`)) {
        self$`confirmationNumber` <- this_object$`confirmationNumber`
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
      if (!is.null(this_object$`taxCondition`)) {
        self$`taxCondition` <- this_object$`taxCondition`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
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
    #' @return OrderConfirmationCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrderConfirmationCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderConfirmationCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`address` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`address`, auto_unbox = TRUE, digits = NA))
      self$`confirmationNumber` <- this_object$`confirmationNumber`
      self$`contactId` <- this_object$`contactId`
      self$`contactName` <- this_object$`contactName`
      self$`currency` <- this_object$`currency`
      self$`files` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`files`, auto_unbox = TRUE, digits = NA))
      self$`introduction` <- this_object$`introduction`
      self$`lineItems` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
      self$`precedingSalesVoucherId` <- this_object$`precedingSalesVoucherId`
      self$`precedingSalesVoucherType` <- PrecedingSalesVoucherType$new()$fromJSON(jsonlite::toJSON(this_object$`precedingSalesVoucherType`, auto_unbox = TRUE, digits = NA))
      self$`remark` <- this_object$`remark`
      self$`taxCondition` <- this_object$`taxCondition`
      self$`title` <- this_object$`title`
      self$`voucherDate` <- this_object$`voucherDate`
      self$`voucherStatus` <- VoucherStatus$new()$fromJSON(jsonlite::toJSON(this_object$`voucherStatus`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to OrderConfirmationCreate and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for OrderConfirmationCreate: the required field `currency` is missing."))
      }
      # check the required field `voucherDate`
      if (!is.null(input_json$`voucherDate`)) {
        if (!(is.character(input_json$`voucherDate`) && length(input_json$`voucherDate`) == 1)) {
          stop(paste("Error! Invalid data for `voucherDate`. Must be a string:", input_json$`voucherDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderConfirmationCreate: the required field `voucherDate` is missing."))
      }
      # check the required field `voucherStatus`
      if (!is.null(input_json$`voucherStatus`)) {
        stopifnot(R6::is.R6(input_json$`voucherStatus`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderConfirmationCreate: the required field `voucherStatus` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrderConfirmationCreate
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
# OrderConfirmationCreate$unlock()
#
## Below is an example to define the print function
# OrderConfirmationCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrderConfirmationCreate$lock()

