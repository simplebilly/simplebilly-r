#' Create a new ShippingThresholdUpdate
#'
#' @description
#' ShippingThresholdUpdate Class
#'
#' @docType class
#' @title ShippingThresholdUpdate
#' @description ShippingThresholdUpdate Class
#' @format An \code{R6Class} generator object
#' @field isActive  character [optional]
#' @field maxSellable Optional ceiling for the deliverable quantity. integer [optional]
#' @field name  character [optional]
#' @field notes  character [optional]
#' @field productId None = applies to all products. References the product entity. character [optional]
#' @field reserveStock Buffer of stock that must not be sold. integer [optional]
#' @field warehouseId None = applies to all warehouses. References the warehouse entity. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ShippingThresholdUpdate <- R6::R6Class(
  "ShippingThresholdUpdate",
  public = list(
    `isActive` = NULL,
    `maxSellable` = NULL,
    `name` = NULL,
    `notes` = NULL,
    `productId` = NULL,
    `reserveStock` = NULL,
    `warehouseId` = NULL,

    #' @description
    #' Initialize a new ShippingThresholdUpdate class.
    #'
    #' @param isActive isActive
    #' @param maxSellable Optional ceiling for the deliverable quantity.
    #' @param name name
    #' @param notes notes
    #' @param productId None = applies to all products. References the product entity.
    #' @param reserveStock Buffer of stock that must not be sold.
    #' @param warehouseId None = applies to all warehouses. References the warehouse entity.
    #' @param ... Other optional arguments.
    initialize = function(`isActive` = NULL, `maxSellable` = NULL, `name` = NULL, `notes` = NULL, `productId` = NULL, `reserveStock` = NULL, `warehouseId` = NULL, ...) {
      if (!is.null(`isActive`)) {
        if (!(is.logical(`isActive`) && length(`isActive`) == 1)) {
          stop(paste("Error! Invalid data for `isActive`. Must be a boolean:", `isActive`))
        }
        self$`isActive` <- `isActive`
      }
      if (!is.null(`maxSellable`)) {
        if (!(is.numeric(`maxSellable`) && length(`maxSellable`) == 1)) {
          stop(paste("Error! Invalid data for `maxSellable`. Must be an integer:", `maxSellable`))
        }
        self$`maxSellable` <- `maxSellable`
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
      if (!is.null(`productId`)) {
        if (!(is.character(`productId`) && length(`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", `productId`))
        }
        self$`productId` <- `productId`
      }
      if (!is.null(`reserveStock`)) {
        if (!(is.numeric(`reserveStock`) && length(`reserveStock`) == 1)) {
          stop(paste("Error! Invalid data for `reserveStock`. Must be an integer:", `reserveStock`))
        }
        self$`reserveStock` <- `reserveStock`
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
    #' @return ShippingThresholdUpdate as a base R list.
    #' @examples
    #' # convert array of ShippingThresholdUpdate (x) to a data frame
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
    #' Convert ShippingThresholdUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShippingThresholdUpdateObject <- list()
      if (!is.null(self$`isActive`)) {
        ShippingThresholdUpdateObject[["isActive"]] <-
          self$`isActive`
      }
      if (!is.null(self$`maxSellable`)) {
        ShippingThresholdUpdateObject[["maxSellable"]] <-
          self$`maxSellable`
      }
      if (!is.null(self$`name`)) {
        ShippingThresholdUpdateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`notes`)) {
        ShippingThresholdUpdateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`productId`)) {
        ShippingThresholdUpdateObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`reserveStock`)) {
        ShippingThresholdUpdateObject[["reserveStock"]] <-
          self$`reserveStock`
      }
      if (!is.null(self$`warehouseId`)) {
        ShippingThresholdUpdateObject[["warehouseId"]] <-
          self$`warehouseId`
      }
      return(ShippingThresholdUpdateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ShippingThresholdUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShippingThresholdUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`isActive`)) {
        self$`isActive` <- this_object$`isActive`
      }
      if (!is.null(this_object$`maxSellable`)) {
        self$`maxSellable` <- this_object$`maxSellable`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`reserveStock`)) {
        self$`reserveStock` <- this_object$`reserveStock`
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
    #' @return ShippingThresholdUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ShippingThresholdUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShippingThresholdUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`isActive` <- this_object$`isActive`
      self$`maxSellable` <- this_object$`maxSellable`
      self$`name` <- this_object$`name`
      self$`notes` <- this_object$`notes`
      self$`productId` <- this_object$`productId`
      self$`reserveStock` <- this_object$`reserveStock`
      self$`warehouseId` <- this_object$`warehouseId`
      self
    },

    #' @description
    #' Validate JSON input with respect to ShippingThresholdUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ShippingThresholdUpdate
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
# ShippingThresholdUpdate$unlock()
#
## Below is an example to define the print function
# ShippingThresholdUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ShippingThresholdUpdate$lock()

