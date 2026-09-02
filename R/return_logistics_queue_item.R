#' Create a new ReturnLogisticsQueueItem
#'
#' @description
#' One open return awaiting warehouse processing (inbound queue).
#'
#' @docType class
#' @title ReturnLogisticsQueueItem
#' @description ReturnLogisticsQueueItem Class
#' @format An \code{R6Class} generator object
#' @field ageDays Days since creation, oldest first. integer
#' @field createdAt  character
#' @field customerName  character [optional]
#' @field lineItems  \link{AnyType}
#' @field orderNumber  character [optional]
#' @field returnNumber  character
#' @field returnOrderId  character
#' @field status  character
#' @field warehouseId  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReturnLogisticsQueueItem <- R6::R6Class(
  "ReturnLogisticsQueueItem",
  public = list(
    `ageDays` = NULL,
    `createdAt` = NULL,
    `customerName` = NULL,
    `lineItems` = NULL,
    `orderNumber` = NULL,
    `returnNumber` = NULL,
    `returnOrderId` = NULL,
    `status` = NULL,
    `warehouseId` = NULL,

    #' @description
    #' Initialize a new ReturnLogisticsQueueItem class.
    #'
    #' @param ageDays Days since creation, oldest first.
    #' @param createdAt createdAt
    #' @param lineItems lineItems
    #' @param returnNumber returnNumber
    #' @param returnOrderId returnOrderId
    #' @param status status
    #' @param customerName customerName
    #' @param orderNumber orderNumber
    #' @param warehouseId warehouseId
    #' @param ... Other optional arguments.
    initialize = function(`ageDays`, `createdAt`, `lineItems`, `returnNumber`, `returnOrderId`, `status`, `customerName` = NULL, `orderNumber` = NULL, `warehouseId` = NULL, ...) {
      if (!missing(`ageDays`)) {
        if (!(is.numeric(`ageDays`) && length(`ageDays`) == 1)) {
          stop(paste("Error! Invalid data for `ageDays`. Must be an integer:", `ageDays`))
        }
        self$`ageDays` <- `ageDays`
      }
      if (!missing(`createdAt`)) {
        if (!(is.character(`createdAt`) && length(`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!missing(`lineItems`)) {
        stopifnot(R6::is.R6(`lineItems`))
        self$`lineItems` <- `lineItems`
      }
      if (!missing(`returnNumber`)) {
        if (!(is.character(`returnNumber`) && length(`returnNumber`) == 1)) {
          stop(paste("Error! Invalid data for `returnNumber`. Must be a string:", `returnNumber`))
        }
        self$`returnNumber` <- `returnNumber`
      }
      if (!missing(`returnOrderId`)) {
        if (!(is.character(`returnOrderId`) && length(`returnOrderId`) == 1)) {
          stop(paste("Error! Invalid data for `returnOrderId`. Must be a string:", `returnOrderId`))
        }
        self$`returnOrderId` <- `returnOrderId`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`customerName`)) {
        if (!(is.character(`customerName`) && length(`customerName`) == 1)) {
          stop(paste("Error! Invalid data for `customerName`. Must be a string:", `customerName`))
        }
        self$`customerName` <- `customerName`
      }
      if (!is.null(`orderNumber`)) {
        if (!(is.character(`orderNumber`) && length(`orderNumber`) == 1)) {
          stop(paste("Error! Invalid data for `orderNumber`. Must be a string:", `orderNumber`))
        }
        self$`orderNumber` <- `orderNumber`
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
    #' @return ReturnLogisticsQueueItem as a base R list.
    #' @examples
    #' # convert array of ReturnLogisticsQueueItem (x) to a data frame
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
    #' Convert ReturnLogisticsQueueItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReturnLogisticsQueueItemObject <- list()
      if (!is.null(self$`ageDays`)) {
        ReturnLogisticsQueueItemObject[["ageDays"]] <-
          self$`ageDays`
      }
      if (!is.null(self$`createdAt`)) {
        ReturnLogisticsQueueItemObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`customerName`)) {
        ReturnLogisticsQueueItemObject[["customerName"]] <-
          self$`customerName`
      }
      if (!is.null(self$`lineItems`)) {
        ReturnLogisticsQueueItemObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`orderNumber`)) {
        ReturnLogisticsQueueItemObject[["orderNumber"]] <-
          self$`orderNumber`
      }
      if (!is.null(self$`returnNumber`)) {
        ReturnLogisticsQueueItemObject[["returnNumber"]] <-
          self$`returnNumber`
      }
      if (!is.null(self$`returnOrderId`)) {
        ReturnLogisticsQueueItemObject[["returnOrderId"]] <-
          self$`returnOrderId`
      }
      if (!is.null(self$`status`)) {
        ReturnLogisticsQueueItemObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`warehouseId`)) {
        ReturnLogisticsQueueItemObject[["warehouseId"]] <-
          self$`warehouseId`
      }
      return(ReturnLogisticsQueueItemObject)
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
    #' Deserialize JSON string into an instance of ReturnLogisticsQueueItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReturnLogisticsQueueItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ageDays`)) {
        self$`ageDays` <- this_object$`ageDays`
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`customerName`)) {
        self$`customerName` <- this_object$`customerName`
      }
      if (!is.null(this_object$`lineItems`)) {
        `lineitems_object` <- AnyType$new()
        `lineitems_object`$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
        self$`lineItems` <- `lineitems_object`
      }
      if (!is.null(this_object$`orderNumber`)) {
        self$`orderNumber` <- this_object$`orderNumber`
      }
      if (!is.null(this_object$`returnNumber`)) {
        self$`returnNumber` <- this_object$`returnNumber`
      }
      if (!is.null(this_object$`returnOrderId`)) {
        self$`returnOrderId` <- this_object$`returnOrderId`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
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
    #' @return ReturnLogisticsQueueItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReturnLogisticsQueueItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReturnLogisticsQueueItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ageDays` <- this_object$`ageDays`
      self$`createdAt` <- this_object$`createdAt`
      self$`customerName` <- this_object$`customerName`
      self$`lineItems` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
      self$`orderNumber` <- this_object$`orderNumber`
      self$`returnNumber` <- this_object$`returnNumber`
      self$`returnOrderId` <- this_object$`returnOrderId`
      self$`status` <- this_object$`status`
      self$`warehouseId` <- this_object$`warehouseId`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReturnLogisticsQueueItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ageDays`
      if (!is.null(input_json$`ageDays`)) {
        if (!(is.numeric(input_json$`ageDays`) && length(input_json$`ageDays`) == 1)) {
          stop(paste("Error! Invalid data for `ageDays`. Must be an integer:", input_json$`ageDays`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnLogisticsQueueItem: the required field `ageDays` is missing."))
      }
      # check the required field `createdAt`
      if (!is.null(input_json$`createdAt`)) {
        if (!(is.character(input_json$`createdAt`) && length(input_json$`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", input_json$`createdAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnLogisticsQueueItem: the required field `createdAt` is missing."))
      }
      # check the required field `lineItems`
      if (!is.null(input_json$`lineItems`)) {
        stopifnot(R6::is.R6(input_json$`lineItems`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnLogisticsQueueItem: the required field `lineItems` is missing."))
      }
      # check the required field `returnNumber`
      if (!is.null(input_json$`returnNumber`)) {
        if (!(is.character(input_json$`returnNumber`) && length(input_json$`returnNumber`) == 1)) {
          stop(paste("Error! Invalid data for `returnNumber`. Must be a string:", input_json$`returnNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnLogisticsQueueItem: the required field `returnNumber` is missing."))
      }
      # check the required field `returnOrderId`
      if (!is.null(input_json$`returnOrderId`)) {
        if (!(is.character(input_json$`returnOrderId`) && length(input_json$`returnOrderId`) == 1)) {
          stop(paste("Error! Invalid data for `returnOrderId`. Must be a string:", input_json$`returnOrderId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnLogisticsQueueItem: the required field `returnOrderId` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnLogisticsQueueItem: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReturnLogisticsQueueItem
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ageDays` is null
      if (is.null(self$`ageDays`)) {
        return(FALSE)
      }

      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        return(FALSE)
      }

      # check if the required `returnNumber` is null
      if (is.null(self$`returnNumber`)) {
        return(FALSE)
      }

      # check if the required `returnOrderId` is null
      if (is.null(self$`returnOrderId`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
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
      # check if the required `ageDays` is null
      if (is.null(self$`ageDays`)) {
        invalid_fields["ageDays"] <- "Non-nullable required field `ageDays` cannot be null."
      }

      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        invalid_fields["createdAt"] <- "Non-nullable required field `createdAt` cannot be null."
      }

      # check if the required `returnNumber` is null
      if (is.null(self$`returnNumber`)) {
        invalid_fields["returnNumber"] <- "Non-nullable required field `returnNumber` cannot be null."
      }

      # check if the required `returnOrderId` is null
      if (is.null(self$`returnOrderId`)) {
        invalid_fields["returnOrderId"] <- "Non-nullable required field `returnOrderId` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# ReturnLogisticsQueueItem$unlock()
#
## Below is an example to define the print function
# ReturnLogisticsQueueItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReturnLogisticsQueueItem$lock()

