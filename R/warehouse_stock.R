#' Create a new WarehouseStock
#'
#' @description
#' WarehouseStock Class
#'
#' @docType class
#' @title WarehouseStock
#' @description WarehouseStock Class
#' @format An \code{R6Class} generator object
#' @field batchNumber Batch/lot number (Chargennummer) — `None` for non-batched goods. character [optional]
#' @field binLocation  character [optional]
#' @field expiryDate Expiry date for batch-tracked goods. character [optional]
#' @field productId  character
#' @field quantity  integer
#' @field serialNumbers JSON array of serial numbers (Seriennummern) in this stock row. \link{AnyType} [optional]
#' @field warehouseId  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WarehouseStock <- R6::R6Class(
  "WarehouseStock",
  public = list(
    `batchNumber` = NULL,
    `binLocation` = NULL,
    `expiryDate` = NULL,
    `productId` = NULL,
    `quantity` = NULL,
    `serialNumbers` = NULL,
    `warehouseId` = NULL,

    #' @description
    #' Initialize a new WarehouseStock class.
    #'
    #' @param productId productId
    #' @param quantity quantity
    #' @param warehouseId warehouseId
    #' @param batchNumber Batch/lot number (Chargennummer) — `None` for non-batched goods.
    #' @param binLocation binLocation
    #' @param expiryDate Expiry date for batch-tracked goods.
    #' @param serialNumbers JSON array of serial numbers (Seriennummern) in this stock row.
    #' @param ... Other optional arguments.
    initialize = function(`productId`, `quantity`, `warehouseId`, `batchNumber` = NULL, `binLocation` = NULL, `expiryDate` = NULL, `serialNumbers` = NULL, ...) {
      if (!missing(`productId`)) {
        if (!(is.character(`productId`) && length(`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", `productId`))
        }
        self$`productId` <- `productId`
      }
      if (!missing(`quantity`)) {
        if (!(is.numeric(`quantity`) && length(`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", `quantity`))
        }
        self$`quantity` <- `quantity`
      }
      if (!missing(`warehouseId`)) {
        if (!(is.character(`warehouseId`) && length(`warehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseId`. Must be a string:", `warehouseId`))
        }
        self$`warehouseId` <- `warehouseId`
      }
      if (!is.null(`batchNumber`)) {
        if (!(is.character(`batchNumber`) && length(`batchNumber`) == 1)) {
          stop(paste("Error! Invalid data for `batchNumber`. Must be a string:", `batchNumber`))
        }
        self$`batchNumber` <- `batchNumber`
      }
      if (!is.null(`binLocation`)) {
        if (!(is.character(`binLocation`) && length(`binLocation`) == 1)) {
          stop(paste("Error! Invalid data for `binLocation`. Must be a string:", `binLocation`))
        }
        self$`binLocation` <- `binLocation`
      }
      if (!is.null(`expiryDate`)) {
        if (!is.character(`expiryDate`)) {
          stop(paste("Error! Invalid data for `expiryDate`. Must be a string:", `expiryDate`))
        }
        self$`expiryDate` <- `expiryDate`
      }
      if (!is.null(`serialNumbers`)) {
        stopifnot(R6::is.R6(`serialNumbers`))
        self$`serialNumbers` <- `serialNumbers`
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
    #' @return WarehouseStock as a base R list.
    #' @examples
    #' # convert array of WarehouseStock (x) to a data frame
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
    #' Convert WarehouseStock to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WarehouseStockObject <- list()
      if (!is.null(self$`batchNumber`)) {
        WarehouseStockObject[["batchNumber"]] <-
          self$`batchNumber`
      }
      if (!is.null(self$`binLocation`)) {
        WarehouseStockObject[["binLocation"]] <-
          self$`binLocation`
      }
      if (!is.null(self$`expiryDate`)) {
        WarehouseStockObject[["expiryDate"]] <-
          self$`expiryDate`
      }
      if (!is.null(self$`productId`)) {
        WarehouseStockObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`quantity`)) {
        WarehouseStockObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`serialNumbers`)) {
        WarehouseStockObject[["serialNumbers"]] <-
          self$extractSimpleType(self$`serialNumbers`)
      }
      if (!is.null(self$`warehouseId`)) {
        WarehouseStockObject[["warehouseId"]] <-
          self$`warehouseId`
      }
      return(WarehouseStockObject)
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
    #' Deserialize JSON string into an instance of WarehouseStock
    #'
    #' @param input_json the JSON input
    #' @return the instance of WarehouseStock
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`batchNumber`)) {
        self$`batchNumber` <- this_object$`batchNumber`
      }
      if (!is.null(this_object$`binLocation`)) {
        self$`binLocation` <- this_object$`binLocation`
      }
      if (!is.null(this_object$`expiryDate`)) {
        self$`expiryDate` <- this_object$`expiryDate`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      if (!is.null(this_object$`serialNumbers`)) {
        `serialnumbers_object` <- AnyType$new()
        `serialnumbers_object`$fromJSON(jsonlite::toJSON(this_object$`serialNumbers`, auto_unbox = TRUE, digits = NA))
        self$`serialNumbers` <- `serialnumbers_object`
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
    #' @return WarehouseStock in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WarehouseStock
    #'
    #' @param input_json the JSON input
    #' @return the instance of WarehouseStock
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`batchNumber` <- this_object$`batchNumber`
      self$`binLocation` <- this_object$`binLocation`
      self$`expiryDate` <- this_object$`expiryDate`
      self$`productId` <- this_object$`productId`
      self$`quantity` <- this_object$`quantity`
      self$`serialNumbers` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`serialNumbers`, auto_unbox = TRUE, digits = NA))
      self$`warehouseId` <- this_object$`warehouseId`
      self
    },

    #' @description
    #' Validate JSON input with respect to WarehouseStock and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `productId`
      if (!is.null(input_json$`productId`)) {
        if (!(is.character(input_json$`productId`) && length(input_json$`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", input_json$`productId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WarehouseStock: the required field `productId` is missing."))
      }
      # check the required field `quantity`
      if (!is.null(input_json$`quantity`)) {
        if (!(is.numeric(input_json$`quantity`) && length(input_json$`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", input_json$`quantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WarehouseStock: the required field `quantity` is missing."))
      }
      # check the required field `warehouseId`
      if (!is.null(input_json$`warehouseId`)) {
        if (!(is.character(input_json$`warehouseId`) && length(input_json$`warehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseId`. Must be a string:", input_json$`warehouseId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WarehouseStock: the required field `warehouseId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WarehouseStock
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        return(FALSE)
      }

      # check if the required `quantity` is null
      if (is.null(self$`quantity`)) {
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
      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        invalid_fields["productId"] <- "Non-nullable required field `productId` cannot be null."
      }

      # check if the required `quantity` is null
      if (is.null(self$`quantity`)) {
        invalid_fields["quantity"] <- "Non-nullable required field `quantity` cannot be null."
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
# WarehouseStock$unlock()
#
## Below is an example to define the print function
# WarehouseStock$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WarehouseStock$lock()

