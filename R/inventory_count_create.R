#' Create a new InventoryCountCreate
#'
#' @description
#' InventoryCountCreate Class
#'
#' @docType class
#' @title InventoryCountCreate
#' @description InventoryCountCreate Class
#' @format An \code{R6Class} generator object
#' @field countDate  character
#' @field countNumber  character
#' @field lineItems JSON array of `{product_id, name, sku, expected_quantity, counted_quantity, bin_location?, batch_number?, variance}`. \link{AnyType}
#' @field notes  character [optional]
#' @field status One of: draft | counting | reviewed | posted \link{InventoryCountStatus}
#' @field warehouseId References the warehouse entity. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InventoryCountCreate <- R6::R6Class(
  "InventoryCountCreate",
  public = list(
    `countDate` = NULL,
    `countNumber` = NULL,
    `lineItems` = NULL,
    `notes` = NULL,
    `status` = NULL,
    `warehouseId` = NULL,

    #' @description
    #' Initialize a new InventoryCountCreate class.
    #'
    #' @param countDate countDate
    #' @param countNumber countNumber
    #' @param lineItems JSON array of `{product_id, name, sku, expected_quantity, counted_quantity, bin_location?, batch_number?, variance}`.
    #' @param status One of: draft | counting | reviewed | posted
    #' @param warehouseId References the warehouse entity.
    #' @param notes notes
    #' @param ... Other optional arguments.
    initialize = function(`countDate`, `countNumber`, `lineItems`, `status`, `warehouseId`, `notes` = NULL, ...) {
      if (!missing(`countDate`)) {
        if (!(is.character(`countDate`) && length(`countDate`) == 1)) {
          stop(paste("Error! Invalid data for `countDate`. Must be a string:", `countDate`))
        }
        self$`countDate` <- `countDate`
      }
      if (!missing(`countNumber`)) {
        if (!(is.character(`countNumber`) && length(`countNumber`) == 1)) {
          stop(paste("Error! Invalid data for `countNumber`. Must be a string:", `countNumber`))
        }
        self$`countNumber` <- `countNumber`
      }
      if (!missing(`lineItems`)) {
        stopifnot(R6::is.R6(`lineItems`))
        self$`lineItems` <- `lineItems`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`warehouseId`)) {
        if (!(is.character(`warehouseId`) && length(`warehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseId`. Must be a string:", `warehouseId`))
        }
        self$`warehouseId` <- `warehouseId`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
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
    #' @return InventoryCountCreate as a base R list.
    #' @examples
    #' # convert array of InventoryCountCreate (x) to a data frame
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
    #' Convert InventoryCountCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      InventoryCountCreateObject <- list()
      if (!is.null(self$`countDate`)) {
        InventoryCountCreateObject[["countDate"]] <-
          self$`countDate`
      }
      if (!is.null(self$`countNumber`)) {
        InventoryCountCreateObject[["countNumber"]] <-
          self$`countNumber`
      }
      if (!is.null(self$`lineItems`)) {
        InventoryCountCreateObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`notes`)) {
        InventoryCountCreateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`status`)) {
        InventoryCountCreateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`warehouseId`)) {
        InventoryCountCreateObject[["warehouseId"]] <-
          self$`warehouseId`
      }
      return(InventoryCountCreateObject)
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
    #' Deserialize JSON string into an instance of InventoryCountCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of InventoryCountCreate
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
    #' @return InventoryCountCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of InventoryCountCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of InventoryCountCreate
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
    #' Validate JSON input with respect to InventoryCountCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `countDate`
      if (!is.null(input_json$`countDate`)) {
        if (!(is.character(input_json$`countDate`) && length(input_json$`countDate`) == 1)) {
          stop(paste("Error! Invalid data for `countDate`. Must be a string:", input_json$`countDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InventoryCountCreate: the required field `countDate` is missing."))
      }
      # check the required field `countNumber`
      if (!is.null(input_json$`countNumber`)) {
        if (!(is.character(input_json$`countNumber`) && length(input_json$`countNumber`) == 1)) {
          stop(paste("Error! Invalid data for `countNumber`. Must be a string:", input_json$`countNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InventoryCountCreate: the required field `countNumber` is missing."))
      }
      # check the required field `lineItems`
      if (!is.null(input_json$`lineItems`)) {
        stopifnot(R6::is.R6(input_json$`lineItems`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InventoryCountCreate: the required field `lineItems` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InventoryCountCreate: the required field `status` is missing."))
      }
      # check the required field `warehouseId`
      if (!is.null(input_json$`warehouseId`)) {
        if (!(is.character(input_json$`warehouseId`) && length(input_json$`warehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseId`. Must be a string:", input_json$`warehouseId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InventoryCountCreate: the required field `warehouseId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of InventoryCountCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `countDate` is null
      if (is.null(self$`countDate`)) {
        return(FALSE)
      }

      # check if the required `countNumber` is null
      if (is.null(self$`countNumber`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
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
      # check if the required `countDate` is null
      if (is.null(self$`countDate`)) {
        invalid_fields["countDate"] <- "Non-nullable required field `countDate` cannot be null."
      }

      # check if the required `countNumber` is null
      if (is.null(self$`countNumber`)) {
        invalid_fields["countNumber"] <- "Non-nullable required field `countNumber` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# InventoryCountCreate$unlock()
#
## Below is an example to define the print function
# InventoryCountCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# InventoryCountCreate$lock()

