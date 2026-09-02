#' Create a new OrderUpdate
#'
#' @description
#' OrderUpdate Class
#'
#' @docType class
#' @title OrderUpdate
#' @description OrderUpdate Class
#' @format An \code{R6Class} generator object
#' @field auditLog  \link{AnyType} [optional]
#' @field currency  character [optional]
#' @field customerId References the customer entity. character [optional]
#' @field externalReference  character [optional]
#' @field invoiceAddress  \link{AnyType} [optional]
#' @field items  \link{AnyType} [optional]
#' @field language  \link{LanguageCode} [optional]
#' @field orderStatus  \link{OrderStatus} [optional]
#' @field paymentMethod  \link{PaymentMethod} [optional]
#' @field shippingAddress  \link{AnyType} [optional]
#' @field shippingCost  character [optional]
#' @field shippingMethod  character [optional]
#' @field shippingWeight  character [optional]
#' @field tags  list(character) [optional]
#' @field totalCost  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrderUpdate <- R6::R6Class(
  "OrderUpdate",
  public = list(
    `auditLog` = NULL,
    `currency` = NULL,
    `customerId` = NULL,
    `externalReference` = NULL,
    `invoiceAddress` = NULL,
    `items` = NULL,
    `language` = NULL,
    `orderStatus` = NULL,
    `paymentMethod` = NULL,
    `shippingAddress` = NULL,
    `shippingCost` = NULL,
    `shippingMethod` = NULL,
    `shippingWeight` = NULL,
    `tags` = NULL,
    `totalCost` = NULL,

    #' @description
    #' Initialize a new OrderUpdate class.
    #'
    #' @param auditLog auditLog
    #' @param currency currency
    #' @param customerId References the customer entity.
    #' @param externalReference externalReference
    #' @param invoiceAddress invoiceAddress
    #' @param items items
    #' @param language language
    #' @param orderStatus orderStatus
    #' @param paymentMethod paymentMethod
    #' @param shippingAddress shippingAddress
    #' @param shippingCost shippingCost
    #' @param shippingMethod shippingMethod
    #' @param shippingWeight shippingWeight
    #' @param tags tags
    #' @param totalCost totalCost
    #' @param ... Other optional arguments.
    initialize = function(`auditLog` = NULL, `currency` = NULL, `customerId` = NULL, `externalReference` = NULL, `invoiceAddress` = NULL, `items` = NULL, `language` = NULL, `orderStatus` = NULL, `paymentMethod` = NULL, `shippingAddress` = NULL, `shippingCost` = NULL, `shippingMethod` = NULL, `shippingWeight` = NULL, `tags` = NULL, `totalCost` = NULL, ...) {
      if (!is.null(`auditLog`)) {
        stopifnot(R6::is.R6(`auditLog`))
        self$`auditLog` <- `auditLog`
      }
      if (!is.null(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!is.null(`customerId`)) {
        if (!(is.character(`customerId`) && length(`customerId`) == 1)) {
          stop(paste("Error! Invalid data for `customerId`. Must be a string:", `customerId`))
        }
        self$`customerId` <- `customerId`
      }
      if (!is.null(`externalReference`)) {
        if (!(is.character(`externalReference`) && length(`externalReference`) == 1)) {
          stop(paste("Error! Invalid data for `externalReference`. Must be a string:", `externalReference`))
        }
        self$`externalReference` <- `externalReference`
      }
      if (!is.null(`invoiceAddress`)) {
        stopifnot(R6::is.R6(`invoiceAddress`))
        self$`invoiceAddress` <- `invoiceAddress`
      }
      if (!is.null(`items`)) {
        stopifnot(R6::is.R6(`items`))
        self$`items` <- `items`
      }
      if (!is.null(`language`)) {
        if (!(`language` %in% c())) {
          stop(paste("Error! \"", `language`, "\" cannot be assigned to `language`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`language`))
        self$`language` <- `language`
      }
      if (!is.null(`orderStatus`)) {
        if (!(`orderStatus` %in% c())) {
          stop(paste("Error! \"", `orderStatus`, "\" cannot be assigned to `orderStatus`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`orderStatus`))
        self$`orderStatus` <- `orderStatus`
      }
      if (!is.null(`paymentMethod`)) {
        if (!(`paymentMethod` %in% c())) {
          stop(paste("Error! \"", `paymentMethod`, "\" cannot be assigned to `paymentMethod`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`paymentMethod`))
        self$`paymentMethod` <- `paymentMethod`
      }
      if (!is.null(`shippingAddress`)) {
        stopifnot(R6::is.R6(`shippingAddress`))
        self$`shippingAddress` <- `shippingAddress`
      }
      if (!is.null(`shippingCost`)) {
        if (!(is.character(`shippingCost`) && length(`shippingCost`) == 1)) {
          stop(paste("Error! Invalid data for `shippingCost`. Must be a string:", `shippingCost`))
        }
        self$`shippingCost` <- `shippingCost`
      }
      if (!is.null(`shippingMethod`)) {
        if (!(is.character(`shippingMethod`) && length(`shippingMethod`) == 1)) {
          stop(paste("Error! Invalid data for `shippingMethod`. Must be a string:", `shippingMethod`))
        }
        self$`shippingMethod` <- `shippingMethod`
      }
      if (!is.null(`shippingWeight`)) {
        if (!(is.character(`shippingWeight`) && length(`shippingWeight`) == 1)) {
          stop(paste("Error! Invalid data for `shippingWeight`. Must be a string:", `shippingWeight`))
        }
        self$`shippingWeight` <- `shippingWeight`
      }
      if (!is.null(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
      if (!is.null(`totalCost`)) {
        if (!(is.character(`totalCost`) && length(`totalCost`) == 1)) {
          stop(paste("Error! Invalid data for `totalCost`. Must be a string:", `totalCost`))
        }
        self$`totalCost` <- `totalCost`
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
    #' @return OrderUpdate as a base R list.
    #' @examples
    #' # convert array of OrderUpdate (x) to a data frame
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
    #' Convert OrderUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrderUpdateObject <- list()
      if (!is.null(self$`auditLog`)) {
        OrderUpdateObject[["auditLog"]] <-
          self$extractSimpleType(self$`auditLog`)
      }
      if (!is.null(self$`currency`)) {
        OrderUpdateObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`customerId`)) {
        OrderUpdateObject[["customerId"]] <-
          self$`customerId`
      }
      if (!is.null(self$`externalReference`)) {
        OrderUpdateObject[["externalReference"]] <-
          self$`externalReference`
      }
      if (!is.null(self$`invoiceAddress`)) {
        OrderUpdateObject[["invoiceAddress"]] <-
          self$extractSimpleType(self$`invoiceAddress`)
      }
      if (!is.null(self$`items`)) {
        OrderUpdateObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`language`)) {
        OrderUpdateObject[["language"]] <-
          self$extractSimpleType(self$`language`)
      }
      if (!is.null(self$`orderStatus`)) {
        OrderUpdateObject[["orderStatus"]] <-
          self$extractSimpleType(self$`orderStatus`)
      }
      if (!is.null(self$`paymentMethod`)) {
        OrderUpdateObject[["paymentMethod"]] <-
          self$extractSimpleType(self$`paymentMethod`)
      }
      if (!is.null(self$`shippingAddress`)) {
        OrderUpdateObject[["shippingAddress"]] <-
          self$extractSimpleType(self$`shippingAddress`)
      }
      if (!is.null(self$`shippingCost`)) {
        OrderUpdateObject[["shippingCost"]] <-
          self$`shippingCost`
      }
      if (!is.null(self$`shippingMethod`)) {
        OrderUpdateObject[["shippingMethod"]] <-
          self$`shippingMethod`
      }
      if (!is.null(self$`shippingWeight`)) {
        OrderUpdateObject[["shippingWeight"]] <-
          self$`shippingWeight`
      }
      if (!is.null(self$`tags`)) {
        OrderUpdateObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`totalCost`)) {
        OrderUpdateObject[["totalCost"]] <-
          self$`totalCost`
      }
      return(OrderUpdateObject)
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
    #' Deserialize JSON string into an instance of OrderUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`auditLog`)) {
        `auditlog_object` <- AnyType$new()
        `auditlog_object`$fromJSON(jsonlite::toJSON(this_object$`auditLog`, auto_unbox = TRUE, digits = NA))
        self$`auditLog` <- `auditlog_object`
      }
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`customerId`)) {
        self$`customerId` <- this_object$`customerId`
      }
      if (!is.null(this_object$`externalReference`)) {
        self$`externalReference` <- this_object$`externalReference`
      }
      if (!is.null(this_object$`invoiceAddress`)) {
        `invoiceaddress_object` <- AnyType$new()
        `invoiceaddress_object`$fromJSON(jsonlite::toJSON(this_object$`invoiceAddress`, auto_unbox = TRUE, digits = NA))
        self$`invoiceAddress` <- `invoiceaddress_object`
      }
      if (!is.null(this_object$`items`)) {
        `items_object` <- AnyType$new()
        `items_object`$fromJSON(jsonlite::toJSON(this_object$`items`, auto_unbox = TRUE, digits = NA))
        self$`items` <- `items_object`
      }
      if (!is.null(this_object$`language`)) {
        `language_object` <- LanguageCode$new()
        `language_object`$fromJSON(jsonlite::toJSON(this_object$`language`, auto_unbox = TRUE, digits = NA))
        self$`language` <- `language_object`
      }
      if (!is.null(this_object$`orderStatus`)) {
        `orderstatus_object` <- OrderStatus$new()
        `orderstatus_object`$fromJSON(jsonlite::toJSON(this_object$`orderStatus`, auto_unbox = TRUE, digits = NA))
        self$`orderStatus` <- `orderstatus_object`
      }
      if (!is.null(this_object$`paymentMethod`)) {
        `paymentmethod_object` <- PaymentMethod$new()
        `paymentmethod_object`$fromJSON(jsonlite::toJSON(this_object$`paymentMethod`, auto_unbox = TRUE, digits = NA))
        self$`paymentMethod` <- `paymentmethod_object`
      }
      if (!is.null(this_object$`shippingAddress`)) {
        `shippingaddress_object` <- AnyType$new()
        `shippingaddress_object`$fromJSON(jsonlite::toJSON(this_object$`shippingAddress`, auto_unbox = TRUE, digits = NA))
        self$`shippingAddress` <- `shippingaddress_object`
      }
      if (!is.null(this_object$`shippingCost`)) {
        self$`shippingCost` <- this_object$`shippingCost`
      }
      if (!is.null(this_object$`shippingMethod`)) {
        self$`shippingMethod` <- this_object$`shippingMethod`
      }
      if (!is.null(this_object$`shippingWeight`)) {
        self$`shippingWeight` <- this_object$`shippingWeight`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`totalCost`)) {
        self$`totalCost` <- this_object$`totalCost`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrderUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrderUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`auditLog` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`auditLog`, auto_unbox = TRUE, digits = NA))
      self$`currency` <- this_object$`currency`
      self$`customerId` <- this_object$`customerId`
      self$`externalReference` <- this_object$`externalReference`
      self$`invoiceAddress` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`invoiceAddress`, auto_unbox = TRUE, digits = NA))
      self$`items` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`items`, auto_unbox = TRUE, digits = NA))
      self$`language` <- LanguageCode$new()$fromJSON(jsonlite::toJSON(this_object$`language`, auto_unbox = TRUE, digits = NA))
      self$`orderStatus` <- OrderStatus$new()$fromJSON(jsonlite::toJSON(this_object$`orderStatus`, auto_unbox = TRUE, digits = NA))
      self$`paymentMethod` <- PaymentMethod$new()$fromJSON(jsonlite::toJSON(this_object$`paymentMethod`, auto_unbox = TRUE, digits = NA))
      self$`shippingAddress` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`shippingAddress`, auto_unbox = TRUE, digits = NA))
      self$`shippingCost` <- this_object$`shippingCost`
      self$`shippingMethod` <- this_object$`shippingMethod`
      self$`shippingWeight` <- this_object$`shippingWeight`
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("openapi"))
      self$`totalCost` <- this_object$`totalCost`
      self
    },

    #' @description
    #' Validate JSON input with respect to OrderUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrderUpdate
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
# OrderUpdate$unlock()
#
## Below is an example to define the print function
# OrderUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrderUpdate$lock()

