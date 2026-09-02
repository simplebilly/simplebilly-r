#' Create a new Order
#'
#' @description
#' Order Class
#'
#' @docType class
#' @title Order
#' @description Order Class
#' @format An \code{R6Class} generator object
#' @field auditLog  \link{AnyType} [optional]
#' @field currency  character
#' @field customerId References the customer entity. character
#' @field externalReference  character [optional]
#' @field invoiceAddress  \link{AnyType} [optional]
#' @field items  \link{AnyType} [optional]
#' @field language  \link{LanguageCode} [optional]
#' @field orderStatus  \link{OrderStatus}
#' @field paymentMethod  \link{PaymentMethod}
#' @field shippingAddress  \link{AnyType} [optional]
#' @field shippingCost  character
#' @field shippingMethod  character
#' @field shippingWeight  character
#' @field tags  list(character)
#' @field totalCost  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Order <- R6::R6Class(
  "Order",
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
    #' Initialize a new Order class.
    #'
    #' @param currency currency
    #' @param customerId References the customer entity.
    #' @param orderStatus orderStatus
    #' @param paymentMethod paymentMethod
    #' @param shippingCost shippingCost
    #' @param shippingMethod shippingMethod
    #' @param shippingWeight shippingWeight
    #' @param tags tags
    #' @param totalCost totalCost
    #' @param auditLog auditLog
    #' @param externalReference externalReference
    #' @param invoiceAddress invoiceAddress
    #' @param items items
    #' @param language language
    #' @param shippingAddress shippingAddress
    #' @param ... Other optional arguments.
    initialize = function(`currency`, `customerId`, `orderStatus`, `paymentMethod`, `shippingCost`, `shippingMethod`, `shippingWeight`, `tags`, `totalCost`, `auditLog` = NULL, `externalReference` = NULL, `invoiceAddress` = NULL, `items` = NULL, `language` = NULL, `shippingAddress` = NULL, ...) {
      if (!missing(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!missing(`customerId`)) {
        if (!(is.character(`customerId`) && length(`customerId`) == 1)) {
          stop(paste("Error! Invalid data for `customerId`. Must be a string:", `customerId`))
        }
        self$`customerId` <- `customerId`
      }
      if (!missing(`orderStatus`)) {
        if (!(`orderStatus` %in% c())) {
          stop(paste("Error! \"", `orderStatus`, "\" cannot be assigned to `orderStatus`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`orderStatus`))
        self$`orderStatus` <- `orderStatus`
      }
      if (!missing(`paymentMethod`)) {
        if (!(`paymentMethod` %in% c())) {
          stop(paste("Error! \"", `paymentMethod`, "\" cannot be assigned to `paymentMethod`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`paymentMethod`))
        self$`paymentMethod` <- `paymentMethod`
      }
      if (!missing(`shippingCost`)) {
        if (!(is.character(`shippingCost`) && length(`shippingCost`) == 1)) {
          stop(paste("Error! Invalid data for `shippingCost`. Must be a string:", `shippingCost`))
        }
        self$`shippingCost` <- `shippingCost`
      }
      if (!missing(`shippingMethod`)) {
        if (!(is.character(`shippingMethod`) && length(`shippingMethod`) == 1)) {
          stop(paste("Error! Invalid data for `shippingMethod`. Must be a string:", `shippingMethod`))
        }
        self$`shippingMethod` <- `shippingMethod`
      }
      if (!missing(`shippingWeight`)) {
        if (!(is.character(`shippingWeight`) && length(`shippingWeight`) == 1)) {
          stop(paste("Error! Invalid data for `shippingWeight`. Must be a string:", `shippingWeight`))
        }
        self$`shippingWeight` <- `shippingWeight`
      }
      if (!missing(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
      if (!missing(`totalCost`)) {
        if (!(is.character(`totalCost`) && length(`totalCost`) == 1)) {
          stop(paste("Error! Invalid data for `totalCost`. Must be a string:", `totalCost`))
        }
        self$`totalCost` <- `totalCost`
      }
      if (!is.null(`auditLog`)) {
        stopifnot(R6::is.R6(`auditLog`))
        self$`auditLog` <- `auditLog`
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
      if (!is.null(`shippingAddress`)) {
        stopifnot(R6::is.R6(`shippingAddress`))
        self$`shippingAddress` <- `shippingAddress`
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
    #' @return Order as a base R list.
    #' @examples
    #' # convert array of Order (x) to a data frame
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
    #' Convert Order to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrderObject <- list()
      if (!is.null(self$`auditLog`)) {
        OrderObject[["auditLog"]] <-
          self$extractSimpleType(self$`auditLog`)
      }
      if (!is.null(self$`currency`)) {
        OrderObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`customerId`)) {
        OrderObject[["customerId"]] <-
          self$`customerId`
      }
      if (!is.null(self$`externalReference`)) {
        OrderObject[["externalReference"]] <-
          self$`externalReference`
      }
      if (!is.null(self$`invoiceAddress`)) {
        OrderObject[["invoiceAddress"]] <-
          self$extractSimpleType(self$`invoiceAddress`)
      }
      if (!is.null(self$`items`)) {
        OrderObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`language`)) {
        OrderObject[["language"]] <-
          self$extractSimpleType(self$`language`)
      }
      if (!is.null(self$`orderStatus`)) {
        OrderObject[["orderStatus"]] <-
          self$extractSimpleType(self$`orderStatus`)
      }
      if (!is.null(self$`paymentMethod`)) {
        OrderObject[["paymentMethod"]] <-
          self$extractSimpleType(self$`paymentMethod`)
      }
      if (!is.null(self$`shippingAddress`)) {
        OrderObject[["shippingAddress"]] <-
          self$extractSimpleType(self$`shippingAddress`)
      }
      if (!is.null(self$`shippingCost`)) {
        OrderObject[["shippingCost"]] <-
          self$`shippingCost`
      }
      if (!is.null(self$`shippingMethod`)) {
        OrderObject[["shippingMethod"]] <-
          self$`shippingMethod`
      }
      if (!is.null(self$`shippingWeight`)) {
        OrderObject[["shippingWeight"]] <-
          self$`shippingWeight`
      }
      if (!is.null(self$`tags`)) {
        OrderObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`totalCost`)) {
        OrderObject[["totalCost"]] <-
          self$`totalCost`
      }
      return(OrderObject)
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
    #' Deserialize JSON string into an instance of Order
    #'
    #' @param input_json the JSON input
    #' @return the instance of Order
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
    #' @return Order in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Order
    #'
    #' @param input_json the JSON input
    #' @return the instance of Order
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
    #' Validate JSON input with respect to Order and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Order: the required field `currency` is missing."))
      }
      # check the required field `customerId`
      if (!is.null(input_json$`customerId`)) {
        if (!(is.character(input_json$`customerId`) && length(input_json$`customerId`) == 1)) {
          stop(paste("Error! Invalid data for `customerId`. Must be a string:", input_json$`customerId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Order: the required field `customerId` is missing."))
      }
      # check the required field `orderStatus`
      if (!is.null(input_json$`orderStatus`)) {
        stopifnot(R6::is.R6(input_json$`orderStatus`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Order: the required field `orderStatus` is missing."))
      }
      # check the required field `paymentMethod`
      if (!is.null(input_json$`paymentMethod`)) {
        stopifnot(R6::is.R6(input_json$`paymentMethod`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Order: the required field `paymentMethod` is missing."))
      }
      # check the required field `shippingCost`
      if (!is.null(input_json$`shippingCost`)) {
        if (!(is.character(input_json$`shippingCost`) && length(input_json$`shippingCost`) == 1)) {
          stop(paste("Error! Invalid data for `shippingCost`. Must be a string:", input_json$`shippingCost`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Order: the required field `shippingCost` is missing."))
      }
      # check the required field `shippingMethod`
      if (!is.null(input_json$`shippingMethod`)) {
        if (!(is.character(input_json$`shippingMethod`) && length(input_json$`shippingMethod`) == 1)) {
          stop(paste("Error! Invalid data for `shippingMethod`. Must be a string:", input_json$`shippingMethod`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Order: the required field `shippingMethod` is missing."))
      }
      # check the required field `shippingWeight`
      if (!is.null(input_json$`shippingWeight`)) {
        if (!(is.character(input_json$`shippingWeight`) && length(input_json$`shippingWeight`) == 1)) {
          stop(paste("Error! Invalid data for `shippingWeight`. Must be a string:", input_json$`shippingWeight`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Order: the required field `shippingWeight` is missing."))
      }
      # check the required field `tags`
      if (!is.null(input_json$`tags`)) {
        stopifnot(is.vector(input_json$`tags`), length(input_json$`tags`) != 0)
        tmp <- sapply(input_json$`tags`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Order: the required field `tags` is missing."))
      }
      # check the required field `totalCost`
      if (!is.null(input_json$`totalCost`)) {
        if (!(is.character(input_json$`totalCost`) && length(input_json$`totalCost`) == 1)) {
          stop(paste("Error! Invalid data for `totalCost`. Must be a string:", input_json$`totalCost`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Order: the required field `totalCost` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Order
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

      # check if the required `customerId` is null
      if (is.null(self$`customerId`)) {
        return(FALSE)
      }

      # check if the required `orderStatus` is null
      if (is.null(self$`orderStatus`)) {
        return(FALSE)
      }

      # check if the required `paymentMethod` is null
      if (is.null(self$`paymentMethod`)) {
        return(FALSE)
      }

      # check if the required `shippingCost` is null
      if (is.null(self$`shippingCost`)) {
        return(FALSE)
      }

      # check if the required `shippingMethod` is null
      if (is.null(self$`shippingMethod`)) {
        return(FALSE)
      }

      # check if the required `shippingWeight` is null
      if (is.null(self$`shippingWeight`)) {
        return(FALSE)
      }

      # check if the required `tags` is null
      if (is.null(self$`tags`)) {
        return(FALSE)
      }

      # check if the required `totalCost` is null
      if (is.null(self$`totalCost`)) {
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

      # check if the required `customerId` is null
      if (is.null(self$`customerId`)) {
        invalid_fields["customerId"] <- "Non-nullable required field `customerId` cannot be null."
      }

      # check if the required `orderStatus` is null
      if (is.null(self$`orderStatus`)) {
        invalid_fields["orderStatus"] <- "Non-nullable required field `orderStatus` cannot be null."
      }

      # check if the required `paymentMethod` is null
      if (is.null(self$`paymentMethod`)) {
        invalid_fields["paymentMethod"] <- "Non-nullable required field `paymentMethod` cannot be null."
      }

      # check if the required `shippingCost` is null
      if (is.null(self$`shippingCost`)) {
        invalid_fields["shippingCost"] <- "Non-nullable required field `shippingCost` cannot be null."
      }

      # check if the required `shippingMethod` is null
      if (is.null(self$`shippingMethod`)) {
        invalid_fields["shippingMethod"] <- "Non-nullable required field `shippingMethod` cannot be null."
      }

      # check if the required `shippingWeight` is null
      if (is.null(self$`shippingWeight`)) {
        invalid_fields["shippingWeight"] <- "Non-nullable required field `shippingWeight` cannot be null."
      }

      # check if the required `tags` is null
      if (is.null(self$`tags`)) {
        invalid_fields["tags"] <- "Non-nullable required field `tags` cannot be null."
      }

      # check if the required `totalCost` is null
      if (is.null(self$`totalCost`)) {
        invalid_fields["totalCost"] <- "Non-nullable required field `totalCost` cannot be null."
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
# Order$unlock()
#
## Below is an example to define the print function
# Order$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Order$lock()

