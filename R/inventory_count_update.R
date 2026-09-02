#' Create a new InventoryCountUpdate
#'
#' @description
#' InventoryCountUpdate Class
#'
#' @docType class
#' @title InventoryCountUpdate
#' @description InventoryCountUpdate Class
#' @format An \code{R6Class} generator object
#' @field countDate  character [optional]
#' @field countNumber  character [optional]
#' @field lineItems JSON array of `{product_id, name, sku, expected_quantity, counted_quantity, bin_location?, batch_number?, variance}`. \link{AnyType} [optional]
#' @field notes  character [optional]
#' @field status One of: draft | counting | reviewed | posted \link{InventoryCountStatus} [optional]
#' @field warehouseId References the warehouse entity. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InventoryCountUpdate <- R6::R6Class(
  "InventoryCountUpdate",
  public = list(
    `countDate` = NULL,
    `countNumber` = NULL,
    `lineItems` = NULL,
    `notes` = NULL,
    `status` = NULL,
    `warehouseId` = NULL,

    #' @description
    #' Initialize a new InventoryCountUpdate class.
    #'
    #' @param countDate countDate
    #' @param countNumber countNumber
    #' @param lineItems JSON array of `{product_id, name, sku, expected_quantity, counted_quantity, bin_location?, batch_number?, variance}`.
    #' @param notes notes
    #' @param status One of: draft | counting | reviewed | posted
    #' @param warehouseId References the warehouse entity.
    #' @param ... Other optional arguments.
    initialize = function(`countDate` = NULL, `countNumber` = NULL, `lineItems` = NULL, `notes` = NULL, `status` = NULL, `warehouseId` = NULL, ...) {
      if (!is.null(`countDate`)) {
        if (!is.character(`countDate`)) {
          stop(paste("Error! Invalid data for `countDate`. Must be a string:", `countDate`))
        }
        self$`countDate` <- `countDate`
      }
      if (!is.null(`countNumber`)) {
        if (!(is.character(`countNumber`) && length(`countNumber`) == 1)) {
          stop(paste("Error! Invalid data for `countNumber`. Must be a string:", `countNumber`))
        }
        self$`countNumber` <- `countNumber`
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
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
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
    #' @return InventoryCountUpdate as a base R list.
    #' @examples
    #' # convert array of InventoryCountUpdate (x) to a data frame
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
    #' Convert InventoryCountUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      InventoryCountUpdateObject <- list()
      if (!is.null(self$`countDate`)) {
        InventoryCountUpdateObject[["countDate"]] <-
          self$`countDate`
      }
      if (!is.null(self$`countNumber`)) {
        InventoryCountUpdateObject[["countNumber"]] <-
          self$`countNumber`
      }
      if (!is.null(self$`lineItems`)) {
        InventoryCountUpdateObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`notes`)) {
        InventoryCountUpdateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`status`)) {
        InventoryCountUpdateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`warehouseId`)) {
        InventoryCountUpdateObject[["warehouseId"]] <-
          self$`warehouseId`
      }
      return(InventoryCountUpdateObject)
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
    #' Deserialize JSON string into an instance of InventoryCountUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of InventoryCountUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`countDate`)) {
        self$`countDate` <- this_object$`countDate`
      }
      if (!is.null(this_object$`countNumber`)) {
        self$`countNumber` <- this_object$`countNumber`
      }
      if (!is.null(this_object$`lineItems`)) {
        `lineitems_object` <- AnyType$new()
        `lineitems_object`$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
        self$`lineItems` <- `lineitems_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- InventoryCountStatus$new()
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
    #' @return InventoryCountUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of InventoryCountUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of InventoryCountUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`countDate` <- this_object$`countDate`
      self$`countNumber` <- this_object$`countNumber`
      self$`lineItems` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- this_object$`notes`
      self$`status` <- InventoryCountStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`warehouseId` <- this_object$`warehouseId`
      self
    },

    #' @description
    #' Validate JSON input with respect to InventoryCountUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of InventoryCountUpdate
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
# InventoryCountUpdate$unlock()
#
## Below is an example to define the print function
# InventoryCountUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# InventoryCountUpdate$lock()

