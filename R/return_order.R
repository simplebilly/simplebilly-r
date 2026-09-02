#' Create a new ReturnOrder
#'
#' @description
#' ReturnOrder Class
#'
#' @docType class
#' @title ReturnOrder
#' @description ReturnOrder Class
#' @format An \code{R6Class} generator object
#' @field customerContactId References the contact entity. character [optional]
#' @field customerName  character [optional]
#' @field lineItems JSON array of `{product_id, name, quantity, condition, restock, batch_number?}`. \link{AnyType} [optional]
#' @field notes  character [optional]
#' @field orderId References the order entity. character [optional]
#' @field orderNumber  character [optional]
#' @field returnNumber  character
#' @field returnReason  character [optional]
#' @field status One of: requested | received | inspected | restocked | closed \link{ReturnOrderStatus}
#' @field warehouseId Warehouse into which restockable items are returned. References the warehouse entity. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReturnOrder <- R6::R6Class(
  "ReturnOrder",
  public = list(
    `customerContactId` = NULL,
    `customerName` = NULL,
    `lineItems` = NULL,
    `notes` = NULL,
    `orderId` = NULL,
    `orderNumber` = NULL,
    `returnNumber` = NULL,
    `returnReason` = NULL,
    `status` = NULL,
    `warehouseId` = NULL,

    #' @description
    #' Initialize a new ReturnOrder class.
    #'
    #' @param returnNumber returnNumber
    #' @param status One of: requested | received | inspected | restocked | closed
    #' @param customerContactId References the contact entity.
    #' @param customerName customerName
    #' @param lineItems JSON array of `{product_id, name, quantity, condition, restock, batch_number?}`.
    #' @param notes notes
    #' @param orderId References the order entity.
    #' @param orderNumber orderNumber
    #' @param returnReason returnReason
    #' @param warehouseId Warehouse into which restockable items are returned. References the warehouse entity.
    #' @param ... Other optional arguments.
    initialize = function(`returnNumber`, `status`, `customerContactId` = NULL, `customerName` = NULL, `lineItems` = NULL, `notes` = NULL, `orderId` = NULL, `orderNumber` = NULL, `returnReason` = NULL, `warehouseId` = NULL, ...) {
      if (!missing(`returnNumber`)) {
        if (!(is.character(`returnNumber`) && length(`returnNumber`) == 1)) {
          stop(paste("Error! Invalid data for `returnNumber`. Must be a string:", `returnNumber`))
        }
        self$`returnNumber` <- `returnNumber`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`customerContactId`)) {
        if (!(is.character(`customerContactId`) && length(`customerContactId`) == 1)) {
          stop(paste("Error! Invalid data for `customerContactId`. Must be a string:", `customerContactId`))
        }
        self$`customerContactId` <- `customerContactId`
      }
      if (!is.null(`customerName`)) {
        if (!(is.character(`customerName`) && length(`customerName`) == 1)) {
          stop(paste("Error! Invalid data for `customerName`. Must be a string:", `customerName`))
        }
        self$`customerName` <- `customerName`
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
      if (!is.null(`orderId`)) {
        if (!(is.character(`orderId`) && length(`orderId`) == 1)) {
          stop(paste("Error! Invalid data for `orderId`. Must be a string:", `orderId`))
        }
        self$`orderId` <- `orderId`
      }
      if (!is.null(`orderNumber`)) {
        if (!(is.character(`orderNumber`) && length(`orderNumber`) == 1)) {
          stop(paste("Error! Invalid data for `orderNumber`. Must be a string:", `orderNumber`))
        }
        self$`orderNumber` <- `orderNumber`
      }
      if (!is.null(`returnReason`)) {
        if (!(is.character(`returnReason`) && length(`returnReason`) == 1)) {
          stop(paste("Error! Invalid data for `returnReason`. Must be a string:", `returnReason`))
        }
        self$`returnReason` <- `returnReason`
      }
      if (!is.null(`warehouseId`)) {
        if (!(is.character(`warehouseId`) && length(`warehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseId`. Must be a string:", `warehouseId`))
        }
        self$`warehouseId` <- `warehouseId`
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
    #' @return ReturnOrder as a base R list.
    #' @examples
    #' # convert array of ReturnOrder (x) to a data frame
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
    #' Convert ReturnOrder to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReturnOrderObject <- list()
      if (!is.null(self$`customerContactId`)) {
        ReturnOrderObject[["customerContactId"]] <-
          self$`customerContactId`
      }
      if (!is.null(self$`customerName`)) {
        ReturnOrderObject[["customerName"]] <-
          self$`customerName`
      }
      if (!is.null(self$`lineItems`)) {
        ReturnOrderObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`notes`)) {
        ReturnOrderObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`orderId`)) {
        ReturnOrderObject[["orderId"]] <-
          self$`orderId`
      }
      if (!is.null(self$`orderNumber`)) {
        ReturnOrderObject[["orderNumber"]] <-
          self$`orderNumber`
      }
      if (!is.null(self$`returnNumber`)) {
        ReturnOrderObject[["returnNumber"]] <-
          self$`returnNumber`
      }
      if (!is.null(self$`returnReason`)) {
        ReturnOrderObject[["returnReason"]] <-
          self$`returnReason`
      }
      if (!is.null(self$`status`)) {
        ReturnOrderObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`warehouseId`)) {
        ReturnOrderObject[["warehouseId"]] <-
          self$`warehouseId`
      }
      return(ReturnOrderObject)
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
    #' Deserialize JSON string into an instance of ReturnOrder
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReturnOrder
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`customerContactId`)) {
        self$`customerContactId` <- this_object$`customerContactId`
      }
      if (!is.null(this_object$`customerName`)) {
        self$`customerName` <- this_object$`customerName`
      }
      if (!is.null(this_object$`lineItems`)) {
        `lineitems_object` <- AnyType$new()
        `lineitems_object`$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
        self$`lineItems` <- `lineitems_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`orderId`)) {
        self$`orderId` <- this_object$`orderId`
      }
      if (!is.null(this_object$`orderNumber`)) {
        self$`orderNumber` <- this_object$`orderNumber`
      }
      if (!is.null(this_object$`returnNumber`)) {
        self$`returnNumber` <- this_object$`returnNumber`
      }
      if (!is.null(this_object$`returnReason`)) {
        self$`returnReason` <- this_object$`returnReason`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- ReturnOrderStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
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
    #' @return ReturnOrder in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReturnOrder
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReturnOrder
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`customerContactId` <- this_object$`customerContactId`
      self$`customerName` <- this_object$`customerName`
      self$`lineItems` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- this_object$`notes`
      self$`orderId` <- this_object$`orderId`
      self$`orderNumber` <- this_object$`orderNumber`
      self$`returnNumber` <- this_object$`returnNumber`
      self$`returnReason` <- this_object$`returnReason`
      self$`status` <- ReturnOrderStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`warehouseId` <- this_object$`warehouseId`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReturnOrder and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `returnNumber`
      if (!is.null(input_json$`returnNumber`)) {
        if (!(is.character(input_json$`returnNumber`) && length(input_json$`returnNumber`) == 1)) {
          stop(paste("Error! Invalid data for `returnNumber`. Must be a string:", input_json$`returnNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnOrder: the required field `returnNumber` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnOrder: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReturnOrder
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `returnNumber` is null
      if (is.null(self$`returnNumber`)) {
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
      # check if the required `returnNumber` is null
      if (is.null(self$`returnNumber`)) {
        invalid_fields["returnNumber"] <- "Non-nullable required field `returnNumber` cannot be null."
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
# ReturnOrder$unlock()
#
## Below is an example to define the print function
# ReturnOrder$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReturnOrder$lock()

