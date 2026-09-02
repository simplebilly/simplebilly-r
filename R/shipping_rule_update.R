#' Create a new ShippingRuleUpdate
#'
#' @description
#' ShippingRuleUpdate Class
#'
#' @docType class
#' @title ShippingRuleUpdate
#' @description ShippingRuleUpdate Class
#' @format An \code{R6Class} generator object
#' @field carrier Provider that auto-filled this rule (e.g. \"ups\"), if any. character [optional]
#' @field country None = applies to all countries. \link{CountryCode} [optional]
#' @field deliveryTime Delivery time text, e.g. \"1-3\". character [optional]
#' @field isActive  character [optional]
#' @field maxWeightKg  numeric [optional]
#' @field minWeightKg  numeric [optional]
#' @field name Delivery-method label, e.g. \"Standardversand\". character [optional]
#' @field notes  character [optional]
#' @field price Shipping cost in the shop's currency. character [optional]
#' @field priority Lower wins when multiple rules match. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ShippingRuleUpdate <- R6::R6Class(
  "ShippingRuleUpdate",
  public = list(
    `carrier` = NULL,
    `country` = NULL,
    `deliveryTime` = NULL,
    `isActive` = NULL,
    `maxWeightKg` = NULL,
    `minWeightKg` = NULL,
    `name` = NULL,
    `notes` = NULL,
    `price` = NULL,
    `priority` = NULL,

    #' @description
    #' Initialize a new ShippingRuleUpdate class.
    #'
    #' @param carrier Provider that auto-filled this rule (e.g. \"ups\"), if any.
    #' @param country None = applies to all countries.
    #' @param deliveryTime Delivery time text, e.g. \"1-3\".
    #' @param isActive isActive
    #' @param maxWeightKg maxWeightKg
    #' @param minWeightKg minWeightKg
    #' @param name Delivery-method label, e.g. \"Standardversand\".
    #' @param notes notes
    #' @param price Shipping cost in the shop's currency.
    #' @param priority Lower wins when multiple rules match.
    #' @param ... Other optional arguments.
    initialize = function(`carrier` = NULL, `country` = NULL, `deliveryTime` = NULL, `isActive` = NULL, `maxWeightKg` = NULL, `minWeightKg` = NULL, `name` = NULL, `notes` = NULL, `price` = NULL, `priority` = NULL, ...) {
      if (!is.null(`carrier`)) {
        if (!(is.character(`carrier`) && length(`carrier`) == 1)) {
          stop(paste("Error! Invalid data for `carrier`. Must be a string:", `carrier`))
        }
        self$`carrier` <- `carrier`
      }
      if (!is.null(`country`)) {
        if (!(`country` %in% c())) {
          stop(paste("Error! \"", `country`, "\" cannot be assigned to `country`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`country`))
        self$`country` <- `country`
      }
      if (!is.null(`deliveryTime`)) {
        if (!(is.character(`deliveryTime`) && length(`deliveryTime`) == 1)) {
          stop(paste("Error! Invalid data for `deliveryTime`. Must be a string:", `deliveryTime`))
        }
        self$`deliveryTime` <- `deliveryTime`
      }
      if (!is.null(`isActive`)) {
        if (!(is.logical(`isActive`) && length(`isActive`) == 1)) {
          stop(paste("Error! Invalid data for `isActive`. Must be a boolean:", `isActive`))
        }
        self$`isActive` <- `isActive`
      }
      if (!is.null(`maxWeightKg`)) {
        if (!(is.numeric(`maxWeightKg`) && length(`maxWeightKg`) == 1)) {
          stop(paste("Error! Invalid data for `maxWeightKg`. Must be a number:", `maxWeightKg`))
        }
        self$`maxWeightKg` <- `maxWeightKg`
      }
      if (!is.null(`minWeightKg`)) {
        if (!(is.numeric(`minWeightKg`) && length(`minWeightKg`) == 1)) {
          stop(paste("Error! Invalid data for `minWeightKg`. Must be a number:", `minWeightKg`))
        }
        self$`minWeightKg` <- `minWeightKg`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`price`)) {
        if (!(is.character(`price`) && length(`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be a string:", `price`))
        }
        self$`price` <- `price`
      }
      if (!is.null(`priority`)) {
        if (!(is.numeric(`priority`) && length(`priority`) == 1)) {
          stop(paste("Error! Invalid data for `priority`. Must be an integer:", `priority`))
        }
        self$`priority` <- `priority`
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
    #' @return ShippingRuleUpdate as a base R list.
    #' @examples
    #' # convert array of ShippingRuleUpdate (x) to a data frame
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
    #' Convert ShippingRuleUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShippingRuleUpdateObject <- list()
      if (!is.null(self$`carrier`)) {
        ShippingRuleUpdateObject[["carrier"]] <-
          self$`carrier`
      }
      if (!is.null(self$`country`)) {
        ShippingRuleUpdateObject[["country"]] <-
          self$extractSimpleType(self$`country`)
      }
      if (!is.null(self$`deliveryTime`)) {
        ShippingRuleUpdateObject[["deliveryTime"]] <-
          self$`deliveryTime`
      }
      if (!is.null(self$`isActive`)) {
        ShippingRuleUpdateObject[["isActive"]] <-
          self$`isActive`
      }
      if (!is.null(self$`maxWeightKg`)) {
        ShippingRuleUpdateObject[["maxWeightKg"]] <-
          self$`maxWeightKg`
      }
      if (!is.null(self$`minWeightKg`)) {
        ShippingRuleUpdateObject[["minWeightKg"]] <-
          self$`minWeightKg`
      }
      if (!is.null(self$`name`)) {
        ShippingRuleUpdateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`notes`)) {
        ShippingRuleUpdateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`price`)) {
        ShippingRuleUpdateObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`priority`)) {
        ShippingRuleUpdateObject[["priority"]] <-
          self$`priority`
      }
      return(ShippingRuleUpdateObject)
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
    #' Deserialize JSON string into an instance of ShippingRuleUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShippingRuleUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`carrier`)) {
        self$`carrier` <- this_object$`carrier`
      }
      if (!is.null(this_object$`country`)) {
        `country_object` <- CountryCode$new()
        `country_object`$fromJSON(jsonlite::toJSON(this_object$`country`, auto_unbox = TRUE, digits = NA))
        self$`country` <- `country_object`
      }
      if (!is.null(this_object$`deliveryTime`)) {
        self$`deliveryTime` <- this_object$`deliveryTime`
      }
      if (!is.null(this_object$`isActive`)) {
        self$`isActive` <- this_object$`isActive`
      }
      if (!is.null(this_object$`maxWeightKg`)) {
        self$`maxWeightKg` <- this_object$`maxWeightKg`
      }
      if (!is.null(this_object$`minWeightKg`)) {
        self$`minWeightKg` <- this_object$`minWeightKg`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`priority`)) {
        self$`priority` <- this_object$`priority`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ShippingRuleUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ShippingRuleUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShippingRuleUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`carrier` <- this_object$`carrier`
      self$`country` <- CountryCode$new()$fromJSON(jsonlite::toJSON(this_object$`country`, auto_unbox = TRUE, digits = NA))
      self$`deliveryTime` <- this_object$`deliveryTime`
      self$`isActive` <- this_object$`isActive`
      self$`maxWeightKg` <- this_object$`maxWeightKg`
      self$`minWeightKg` <- this_object$`minWeightKg`
      self$`name` <- this_object$`name`
      self$`notes` <- this_object$`notes`
      self$`price` <- this_object$`price`
      self$`priority` <- this_object$`priority`
      self
    },

    #' @description
    #' Validate JSON input with respect to ShippingRuleUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ShippingRuleUpdate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`name`) < 1) {
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
      if (nchar(self$`name`) < 1) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 1."
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
# ShippingRuleUpdate$unlock()
#
## Below is an example to define the print function
# ShippingRuleUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ShippingRuleUpdate$lock()

