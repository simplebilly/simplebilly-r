#' Create a new StockTransfer
#'
#' @description
#' StockTransfer Class
#'
#' @docType class
#' @title StockTransfer
#' @description StockTransfer Class
#' @format An \code{R6Class} generator object
#' @field lineItems JSON array of `{product_id, name, quantity, batch_number?}`. \link{AnyType}
#' @field notes  character [optional]
#' @field sourceWarehouseId References the warehouse entity. character
#' @field status One of: draft | completed | cancelled \link{StockTransferStatus}
#' @field targetWarehouseId References the warehouse entity. character
#' @field transferDate  character
#' @field transferNumber  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StockTransfer <- R6::R6Class(
  "StockTransfer",
  public = list(
    `lineItems` = NULL,
    `notes` = NULL,
    `sourceWarehouseId` = NULL,
    `status` = NULL,
    `targetWarehouseId` = NULL,
    `transferDate` = NULL,
    `transferNumber` = NULL,

    #' @description
    #' Initialize a new StockTransfer class.
    #'
    #' @param lineItems JSON array of `{product_id, name, quantity, batch_number?}`.
    #' @param sourceWarehouseId References the warehouse entity.
    #' @param status One of: draft | completed | cancelled
    #' @param targetWarehouseId References the warehouse entity.
    #' @param transferDate transferDate
    #' @param transferNumber transferNumber
    #' @param notes notes
    #' @param ... Other optional arguments.
    initialize = function(`lineItems`, `sourceWarehouseId`, `status`, `targetWarehouseId`, `transferDate`, `transferNumber`, `notes` = NULL, ...) {
      if (!missing(`lineItems`)) {
        stopifnot(R6::is.R6(`lineItems`))
        self$`lineItems` <- `lineItems`
      }
      if (!missing(`sourceWarehouseId`)) {
        if (!(is.character(`sourceWarehouseId`) && length(`sourceWarehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `sourceWarehouseId`. Must be a string:", `sourceWarehouseId`))
        }
        self$`sourceWarehouseId` <- `sourceWarehouseId`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`targetWarehouseId`)) {
        if (!(is.character(`targetWarehouseId`) && length(`targetWarehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `targetWarehouseId`. Must be a string:", `targetWarehouseId`))
        }
        self$`targetWarehouseId` <- `targetWarehouseId`
      }
      if (!missing(`transferDate`)) {
        if (!(is.character(`transferDate`) && length(`transferDate`) == 1)) {
          stop(paste("Error! Invalid data for `transferDate`. Must be a string:", `transferDate`))
        }
        self$`transferDate` <- `transferDate`
      }
      if (!missing(`transferNumber`)) {
        if (!(is.character(`transferNumber`) && length(`transferNumber`) == 1)) {
          stop(paste("Error! Invalid data for `transferNumber`. Must be a string:", `transferNumber`))
        }
        self$`transferNumber` <- `transferNumber`
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
    #' @return StockTransfer as a base R list.
    #' @examples
    #' # convert array of StockTransfer (x) to a data frame
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
    #' Convert StockTransfer to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StockTransferObject <- list()
      if (!is.null(self$`lineItems`)) {
        StockTransferObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`notes`)) {
        StockTransferObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`sourceWarehouseId`)) {
        StockTransferObject[["sourceWarehouseId"]] <-
          self$`sourceWarehouseId`
      }
      if (!is.null(self$`status`)) {
        StockTransferObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`targetWarehouseId`)) {
        StockTransferObject[["targetWarehouseId"]] <-
          self$`targetWarehouseId`
      }
      if (!is.null(self$`transferDate`)) {
        StockTransferObject[["transferDate"]] <-
          self$`transferDate`
      }
      if (!is.null(self$`transferNumber`)) {
        StockTransferObject[["transferNumber"]] <-
          self$`transferNumber`
      }
      return(StockTransferObject)
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
    #' Deserialize JSON string into an instance of StockTransfer
    #'
    #' @param input_json the JSON input
    #' @return the instance of StockTransfer
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`lineItems`)) {
        `lineitems_object` <- AnyType$new()
        `lineitems_object`$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
        self$`lineItems` <- `lineitems_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`sourceWarehouseId`)) {
        self$`sourceWarehouseId` <- this_object$`sourceWarehouseId`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- StockTransferStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`targetWarehouseId`)) {
        self$`targetWarehouseId` <- this_object$`targetWarehouseId`
      }
      if (!is.null(this_object$`transferDate`)) {
        self$`transferDate` <- this_object$`transferDate`
      }
      if (!is.null(this_object$`transferNumber`)) {
        self$`transferNumber` <- this_object$`transferNumber`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StockTransfer in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StockTransfer
    #'
    #' @param input_json the JSON input
    #' @return the instance of StockTransfer
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`lineItems` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- this_object$`notes`
      self$`sourceWarehouseId` <- this_object$`sourceWarehouseId`
      self$`status` <- StockTransferStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`targetWarehouseId` <- this_object$`targetWarehouseId`
      self$`transferDate` <- this_object$`transferDate`
      self$`transferNumber` <- this_object$`transferNumber`
      self
    },

    #' @description
    #' Validate JSON input with respect to StockTransfer and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `lineItems`
      if (!is.null(input_json$`lineItems`)) {
        stopifnot(R6::is.R6(input_json$`lineItems`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StockTransfer: the required field `lineItems` is missing."))
      }
      # check the required field `sourceWarehouseId`
      if (!is.null(input_json$`sourceWarehouseId`)) {
        if (!(is.character(input_json$`sourceWarehouseId`) && length(input_json$`sourceWarehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `sourceWarehouseId`. Must be a string:", input_json$`sourceWarehouseId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StockTransfer: the required field `sourceWarehouseId` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StockTransfer: the required field `status` is missing."))
      }
      # check the required field `targetWarehouseId`
      if (!is.null(input_json$`targetWarehouseId`)) {
        if (!(is.character(input_json$`targetWarehouseId`) && length(input_json$`targetWarehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `targetWarehouseId`. Must be a string:", input_json$`targetWarehouseId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StockTransfer: the required field `targetWarehouseId` is missing."))
      }
      # check the required field `transferDate`
      if (!is.null(input_json$`transferDate`)) {
        if (!(is.character(input_json$`transferDate`) && length(input_json$`transferDate`) == 1)) {
          stop(paste("Error! Invalid data for `transferDate`. Must be a string:", input_json$`transferDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StockTransfer: the required field `transferDate` is missing."))
      }
      # check the required field `transferNumber`
      if (!is.null(input_json$`transferNumber`)) {
        if (!(is.character(input_json$`transferNumber`) && length(input_json$`transferNumber`) == 1)) {
          stop(paste("Error! Invalid data for `transferNumber`. Must be a string:", input_json$`transferNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StockTransfer: the required field `transferNumber` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StockTransfer
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `sourceWarehouseId` is null
      if (is.null(self$`sourceWarehouseId`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `targetWarehouseId` is null
      if (is.null(self$`targetWarehouseId`)) {
        return(FALSE)
      }

      # check if the required `transferDate` is null
      if (is.null(self$`transferDate`)) {
        return(FALSE)
      }

      # check if the required `transferNumber` is null
      if (is.null(self$`transferNumber`)) {
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
      # check if the required `sourceWarehouseId` is null
      if (is.null(self$`sourceWarehouseId`)) {
        invalid_fields["sourceWarehouseId"] <- "Non-nullable required field `sourceWarehouseId` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `targetWarehouseId` is null
      if (is.null(self$`targetWarehouseId`)) {
        invalid_fields["targetWarehouseId"] <- "Non-nullable required field `targetWarehouseId` cannot be null."
      }

      # check if the required `transferDate` is null
      if (is.null(self$`transferDate`)) {
        invalid_fields["transferDate"] <- "Non-nullable required field `transferDate` cannot be null."
      }

      # check if the required `transferNumber` is null
      if (is.null(self$`transferNumber`)) {
        invalid_fields["transferNumber"] <- "Non-nullable required field `transferNumber` cannot be null."
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
# StockTransfer$unlock()
#
## Below is an example to define the print function
# StockTransfer$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StockTransfer$lock()

