#' Create a new DeliveryDateUpdate
#'
#' @description
#' DeliveryDateUpdate Class
#'
#' @docType class
#' @title DeliveryDateUpdate
#' @description DeliveryDateUpdate Class
#' @format An \code{R6Class} generator object
#' @field customerId References the customer entity. character [optional]
#' @field fulfilledDate Date actually delivered (set on fulfillment). character [optional]
#' @field note  character [optional]
#' @field orderNumber Sales order number (`order.order_number`). character [optional]
#' @field originalDate Original date promised before rescheduling. character [optional]
#' @field productId Product line item this date applies to, if per-item. References the product entity. character [optional]
#' @field promisedDate Date promised to the customer. character [optional]
#' @field status One of: promised | confirmed | rescheduled | fulfilled | late | cancelled \link{DeliveryDateStatus} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeliveryDateUpdate <- R6::R6Class(
  "DeliveryDateUpdate",
  public = list(
    `customerId` = NULL,
    `fulfilledDate` = NULL,
    `note` = NULL,
    `orderNumber` = NULL,
    `originalDate` = NULL,
    `productId` = NULL,
    `promisedDate` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new DeliveryDateUpdate class.
    #'
    #' @param customerId References the customer entity.
    #' @param fulfilledDate Date actually delivered (set on fulfillment).
    #' @param note note
    #' @param orderNumber Sales order number (`order.order_number`).
    #' @param originalDate Original date promised before rescheduling.
    #' @param productId Product line item this date applies to, if per-item. References the product entity.
    #' @param promisedDate Date promised to the customer.
    #' @param status One of: promised | confirmed | rescheduled | fulfilled | late | cancelled
    #' @param ... Other optional arguments.
    initialize = function(`customerId` = NULL, `fulfilledDate` = NULL, `note` = NULL, `orderNumber` = NULL, `originalDate` = NULL, `productId` = NULL, `promisedDate` = NULL, `status` = NULL, ...) {
      if (!is.null(`customerId`)) {
        if (!(is.character(`customerId`) && length(`customerId`) == 1)) {
          stop(paste("Error! Invalid data for `customerId`. Must be a string:", `customerId`))
        }
        self$`customerId` <- `customerId`
      }
      if (!is.null(`fulfilledDate`)) {
        if (!is.character(`fulfilledDate`)) {
          stop(paste("Error! Invalid data for `fulfilledDate`. Must be a string:", `fulfilledDate`))
        }
        self$`fulfilledDate` <- `fulfilledDate`
      }
      if (!is.null(`note`)) {
        if (!(is.character(`note`) && length(`note`) == 1)) {
          stop(paste("Error! Invalid data for `note`. Must be a string:", `note`))
        }
        self$`note` <- `note`
      }
      if (!is.null(`orderNumber`)) {
        if (!(is.character(`orderNumber`) && length(`orderNumber`) == 1)) {
          stop(paste("Error! Invalid data for `orderNumber`. Must be a string:", `orderNumber`))
        }
        self$`orderNumber` <- `orderNumber`
      }
      if (!is.null(`originalDate`)) {
        if (!is.character(`originalDate`)) {
          stop(paste("Error! Invalid data for `originalDate`. Must be a string:", `originalDate`))
        }
        self$`originalDate` <- `originalDate`
      }
      if (!is.null(`productId`)) {
        if (!(is.character(`productId`) && length(`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", `productId`))
        }
        self$`productId` <- `productId`
      }
      if (!is.null(`promisedDate`)) {
        if (!is.character(`promisedDate`)) {
          stop(paste("Error! Invalid data for `promisedDate`. Must be a string:", `promisedDate`))
        }
        self$`promisedDate` <- `promisedDate`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
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
    #' @return DeliveryDateUpdate as a base R list.
    #' @examples
    #' # convert array of DeliveryDateUpdate (x) to a data frame
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
    #' Convert DeliveryDateUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DeliveryDateUpdateObject <- list()
      if (!is.null(self$`customerId`)) {
        DeliveryDateUpdateObject[["customerId"]] <-
          self$`customerId`
      }
      if (!is.null(self$`fulfilledDate`)) {
        DeliveryDateUpdateObject[["fulfilledDate"]] <-
          self$`fulfilledDate`
      }
      if (!is.null(self$`note`)) {
        DeliveryDateUpdateObject[["note"]] <-
          self$`note`
      }
      if (!is.null(self$`orderNumber`)) {
        DeliveryDateUpdateObject[["orderNumber"]] <-
          self$`orderNumber`
      }
      if (!is.null(self$`originalDate`)) {
        DeliveryDateUpdateObject[["originalDate"]] <-
          self$`originalDate`
      }
      if (!is.null(self$`productId`)) {
        DeliveryDateUpdateObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`promisedDate`)) {
        DeliveryDateUpdateObject[["promisedDate"]] <-
          self$`promisedDate`
      }
      if (!is.null(self$`status`)) {
        DeliveryDateUpdateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      return(DeliveryDateUpdateObject)
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
    #' Deserialize JSON string into an instance of DeliveryDateUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryDateUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`customerId`)) {
        self$`customerId` <- this_object$`customerId`
      }
      if (!is.null(this_object$`fulfilledDate`)) {
        self$`fulfilledDate` <- this_object$`fulfilledDate`
      }
      if (!is.null(this_object$`note`)) {
        self$`note` <- this_object$`note`
      }
      if (!is.null(this_object$`orderNumber`)) {
        self$`orderNumber` <- this_object$`orderNumber`
      }
      if (!is.null(this_object$`originalDate`)) {
        self$`originalDate` <- this_object$`originalDate`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`promisedDate`)) {
        self$`promisedDate` <- this_object$`promisedDate`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- DeliveryDateStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DeliveryDateUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DeliveryDateUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryDateUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`customerId` <- this_object$`customerId`
      self$`fulfilledDate` <- this_object$`fulfilledDate`
      self$`note` <- this_object$`note`
      self$`orderNumber` <- this_object$`orderNumber`
      self$`originalDate` <- this_object$`originalDate`
      self$`productId` <- this_object$`productId`
      self$`promisedDate` <- this_object$`promisedDate`
      self$`status` <- DeliveryDateStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to DeliveryDateUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeliveryDateUpdate
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
# DeliveryDateUpdate$unlock()
#
## Below is an example to define the print function
# DeliveryDateUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeliveryDateUpdate$lock()

