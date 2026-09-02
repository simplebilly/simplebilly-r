#' Create a new StockMovement
#'
#' @description
#' StockMovement Class
#'
#' @docType class
#' @title StockMovement
#' @description StockMovement Class
#' @format An \code{R6Class} generator object
#' @field delta Signed movement: positive = into stock, negative = out of stock. integer
#' @field movementType One of the `MOVEMENT_*` constants. \link{MovementType}
#' @field productId References the product entity. character
#' @field quantity Absolute quantity moved (always >= 0). integer
#' @field reason  character [optional]
#' @field referenceId Primary-key of the referencing entity. character [optional]
#' @field referenceType Entity that caused the movement, e.g. `goods_receipt`, `stock_transfer`. \link{ReferenceType} [optional]
#' @field warehouseId References the warehouse entity. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StockMovement <- R6::R6Class(
  "StockMovement",
  public = list(
    `delta` = NULL,
    `movementType` = NULL,
    `productId` = NULL,
    `quantity` = NULL,
    `reason` = NULL,
    `referenceId` = NULL,
    `referenceType` = NULL,
    `warehouseId` = NULL,

    #' @description
    #' Initialize a new StockMovement class.
    #'
    #' @param delta Signed movement: positive = into stock, negative = out of stock.
    #' @param movementType One of the `MOVEMENT_*` constants.
    #' @param productId References the product entity.
    #' @param quantity Absolute quantity moved (always >= 0).
    #' @param warehouseId References the warehouse entity.
    #' @param reason reason
    #' @param referenceId Primary-key of the referencing entity.
    #' @param referenceType Entity that caused the movement, e.g. `goods_receipt`, `stock_transfer`.
    #' @param ... Other optional arguments.
    initialize = function(`delta`, `movementType`, `productId`, `quantity`, `warehouseId`, `reason` = NULL, `referenceId` = NULL, `referenceType` = NULL, ...) {
      if (!missing(`delta`)) {
        if (!(is.numeric(`delta`) && length(`delta`) == 1)) {
          stop(paste("Error! Invalid data for `delta`. Must be an integer:", `delta`))
        }
        self$`delta` <- `delta`
      }
      if (!missing(`movementType`)) {
        if (!(`movementType` %in% c())) {
          stop(paste("Error! \"", `movementType`, "\" cannot be assigned to `movementType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`movementType`))
        self$`movementType` <- `movementType`
      }
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
      if (!is.null(`reason`)) {
        if (!(is.character(`reason`) && length(`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", `reason`))
        }
        self$`reason` <- `reason`
      }
      if (!is.null(`referenceId`)) {
        if (!(is.character(`referenceId`) && length(`referenceId`) == 1)) {
          stop(paste("Error! Invalid data for `referenceId`. Must be a string:", `referenceId`))
        }
        self$`referenceId` <- `referenceId`
      }
      if (!is.null(`referenceType`)) {
        if (!(`referenceType` %in% c())) {
          stop(paste("Error! \"", `referenceType`, "\" cannot be assigned to `referenceType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`referenceType`))
        self$`referenceType` <- `referenceType`
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
    #' @return StockMovement as a base R list.
    #' @examples
    #' # convert array of StockMovement (x) to a data frame
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
    #' Convert StockMovement to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StockMovementObject <- list()
      if (!is.null(self$`delta`)) {
        StockMovementObject[["delta"]] <-
          self$`delta`
      }
      if (!is.null(self$`movementType`)) {
        StockMovementObject[["movementType"]] <-
          self$extractSimpleType(self$`movementType`)
      }
      if (!is.null(self$`productId`)) {
        StockMovementObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`quantity`)) {
        StockMovementObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`reason`)) {
        StockMovementObject[["reason"]] <-
          self$`reason`
      }
      if (!is.null(self$`referenceId`)) {
        StockMovementObject[["referenceId"]] <-
          self$`referenceId`
      }
      if (!is.null(self$`referenceType`)) {
        StockMovementObject[["referenceType"]] <-
          self$extractSimpleType(self$`referenceType`)
      }
      if (!is.null(self$`warehouseId`)) {
        StockMovementObject[["warehouseId"]] <-
          self$`warehouseId`
      }
      return(StockMovementObject)
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
    #' Deserialize JSON string into an instance of StockMovement
    #'
    #' @param input_json the JSON input
    #' @return the instance of StockMovement
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`delta`)) {
        self$`delta` <- this_object$`delta`
      }
      if (!is.null(this_object$`movementType`)) {
        `movementtype_object` <- MovementType$new()
        `movementtype_object`$fromJSON(jsonlite::toJSON(this_object$`movementType`, auto_unbox = TRUE, digits = NA))
        self$`movementType` <- `movementtype_object`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      if (!is.null(this_object$`reason`)) {
        self$`reason` <- this_object$`reason`
      }
      if (!is.null(this_object$`referenceId`)) {
        self$`referenceId` <- this_object$`referenceId`
      }
      if (!is.null(this_object$`referenceType`)) {
        `referencetype_object` <- ReferenceType$new()
        `referencetype_object`$fromJSON(jsonlite::toJSON(this_object$`referenceType`, auto_unbox = TRUE, digits = NA))
        self$`referenceType` <- `referencetype_object`
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
    #' @return StockMovement in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StockMovement
    #'
    #' @param input_json the JSON input
    #' @return the instance of StockMovement
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`delta` <- this_object$`delta`
      self$`movementType` <- MovementType$new()$fromJSON(jsonlite::toJSON(this_object$`movementType`, auto_unbox = TRUE, digits = NA))
      self$`productId` <- this_object$`productId`
      self$`quantity` <- this_object$`quantity`
      self$`reason` <- this_object$`reason`
      self$`referenceId` <- this_object$`referenceId`
      self$`referenceType` <- ReferenceType$new()$fromJSON(jsonlite::toJSON(this_object$`referenceType`, auto_unbox = TRUE, digits = NA))
      self$`warehouseId` <- this_object$`warehouseId`
      self
    },

    #' @description
    #' Validate JSON input with respect to StockMovement and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `delta`
      if (!is.null(input_json$`delta`)) {
        if (!(is.numeric(input_json$`delta`) && length(input_json$`delta`) == 1)) {
          stop(paste("Error! Invalid data for `delta`. Must be an integer:", input_json$`delta`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StockMovement: the required field `delta` is missing."))
      }
      # check the required field `movementType`
      if (!is.null(input_json$`movementType`)) {
        stopifnot(R6::is.R6(input_json$`movementType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StockMovement: the required field `movementType` is missing."))
      }
      # check the required field `productId`
      if (!is.null(input_json$`productId`)) {
        if (!(is.character(input_json$`productId`) && length(input_json$`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", input_json$`productId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StockMovement: the required field `productId` is missing."))
      }
      # check the required field `quantity`
      if (!is.null(input_json$`quantity`)) {
        if (!(is.numeric(input_json$`quantity`) && length(input_json$`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", input_json$`quantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StockMovement: the required field `quantity` is missing."))
      }
      # check the required field `warehouseId`
      if (!is.null(input_json$`warehouseId`)) {
        if (!(is.character(input_json$`warehouseId`) && length(input_json$`warehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseId`. Must be a string:", input_json$`warehouseId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StockMovement: the required field `warehouseId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StockMovement
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `delta` is null
      if (is.null(self$`delta`)) {
        return(FALSE)
      }

      # check if the required `movementType` is null
      if (is.null(self$`movementType`)) {
        return(FALSE)
      }

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
      # check if the required `delta` is null
      if (is.null(self$`delta`)) {
        invalid_fields["delta"] <- "Non-nullable required field `delta` cannot be null."
      }

      # check if the required `movementType` is null
      if (is.null(self$`movementType`)) {
        invalid_fields["movementType"] <- "Non-nullable required field `movementType` cannot be null."
      }

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
# StockMovement$unlock()
#
## Below is an example to define the print function
# StockMovement$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StockMovement$lock()

