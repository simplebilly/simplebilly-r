#' Create a new ReplenishmentSuggestionLine
#'
#' @description
#' A single replenishment suggestion.
#'
#' @docType class
#' @title ReplenishmentSuggestionLine
#' @description ReplenishmentSuggestionLine Class
#' @format An \code{R6Class} generator object
#' @field currentStock Current stock in the target warehouse. integer
#' @field maxStock  integer [optional]
#' @field minStock  integer [optional]
#' @field productId  character
#' @field productName  character
#' @field sku  character
#' @field sourceAvailable Surplus available in the source warehouse (above its target). integer
#' @field sourceWarehouseId  character
#' @field suggestedQuantity  integer
#' @field targetWarehouseId  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReplenishmentSuggestionLine <- R6::R6Class(
  "ReplenishmentSuggestionLine",
  public = list(
    `currentStock` = NULL,
    `maxStock` = NULL,
    `minStock` = NULL,
    `productId` = NULL,
    `productName` = NULL,
    `sku` = NULL,
    `sourceAvailable` = NULL,
    `sourceWarehouseId` = NULL,
    `suggestedQuantity` = NULL,
    `targetWarehouseId` = NULL,

    #' @description
    #' Initialize a new ReplenishmentSuggestionLine class.
    #'
    #' @param currentStock Current stock in the target warehouse.
    #' @param productId productId
    #' @param productName productName
    #' @param sku sku
    #' @param sourceAvailable Surplus available in the source warehouse (above its target).
    #' @param sourceWarehouseId sourceWarehouseId
    #' @param suggestedQuantity suggestedQuantity
    #' @param targetWarehouseId targetWarehouseId
    #' @param maxStock maxStock
    #' @param minStock minStock
    #' @param ... Other optional arguments.
    initialize = function(`currentStock`, `productId`, `productName`, `sku`, `sourceAvailable`, `sourceWarehouseId`, `suggestedQuantity`, `targetWarehouseId`, `maxStock` = NULL, `minStock` = NULL, ...) {
      if (!missing(`currentStock`)) {
        if (!(is.numeric(`currentStock`) && length(`currentStock`) == 1)) {
          stop(paste("Error! Invalid data for `currentStock`. Must be an integer:", `currentStock`))
        }
        self$`currentStock` <- `currentStock`
      }
      if (!missing(`productId`)) {
        if (!(is.character(`productId`) && length(`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", `productId`))
        }
        self$`productId` <- `productId`
      }
      if (!missing(`productName`)) {
        if (!(is.character(`productName`) && length(`productName`) == 1)) {
          stop(paste("Error! Invalid data for `productName`. Must be a string:", `productName`))
        }
        self$`productName` <- `productName`
      }
      if (!missing(`sku`)) {
        if (!(is.character(`sku`) && length(`sku`) == 1)) {
          stop(paste("Error! Invalid data for `sku`. Must be a string:", `sku`))
        }
        self$`sku` <- `sku`
      }
      if (!missing(`sourceAvailable`)) {
        if (!(is.numeric(`sourceAvailable`) && length(`sourceAvailable`) == 1)) {
          stop(paste("Error! Invalid data for `sourceAvailable`. Must be an integer:", `sourceAvailable`))
        }
        self$`sourceAvailable` <- `sourceAvailable`
      }
      if (!missing(`sourceWarehouseId`)) {
        if (!(is.character(`sourceWarehouseId`) && length(`sourceWarehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `sourceWarehouseId`. Must be a string:", `sourceWarehouseId`))
        }
        self$`sourceWarehouseId` <- `sourceWarehouseId`
      }
      if (!missing(`suggestedQuantity`)) {
        if (!(is.numeric(`suggestedQuantity`) && length(`suggestedQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `suggestedQuantity`. Must be an integer:", `suggestedQuantity`))
        }
        self$`suggestedQuantity` <- `suggestedQuantity`
      }
      if (!missing(`targetWarehouseId`)) {
        if (!(is.character(`targetWarehouseId`) && length(`targetWarehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `targetWarehouseId`. Must be a string:", `targetWarehouseId`))
        }
        self$`targetWarehouseId` <- `targetWarehouseId`
      }
      if (!is.null(`maxStock`)) {
        if (!(is.numeric(`maxStock`) && length(`maxStock`) == 1)) {
          stop(paste("Error! Invalid data for `maxStock`. Must be an integer:", `maxStock`))
        }
        self$`maxStock` <- `maxStock`
      }
      if (!is.null(`minStock`)) {
        if (!(is.numeric(`minStock`) && length(`minStock`) == 1)) {
          stop(paste("Error! Invalid data for `minStock`. Must be an integer:", `minStock`))
        }
        self$`minStock` <- `minStock`
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
    #' @return ReplenishmentSuggestionLine as a base R list.
    #' @examples
    #' # convert array of ReplenishmentSuggestionLine (x) to a data frame
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
    #' Convert ReplenishmentSuggestionLine to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReplenishmentSuggestionLineObject <- list()
      if (!is.null(self$`currentStock`)) {
        ReplenishmentSuggestionLineObject[["currentStock"]] <-
          self$`currentStock`
      }
      if (!is.null(self$`maxStock`)) {
        ReplenishmentSuggestionLineObject[["maxStock"]] <-
          self$`maxStock`
      }
      if (!is.null(self$`minStock`)) {
        ReplenishmentSuggestionLineObject[["minStock"]] <-
          self$`minStock`
      }
      if (!is.null(self$`productId`)) {
        ReplenishmentSuggestionLineObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`productName`)) {
        ReplenishmentSuggestionLineObject[["productName"]] <-
          self$`productName`
      }
      if (!is.null(self$`sku`)) {
        ReplenishmentSuggestionLineObject[["sku"]] <-
          self$`sku`
      }
      if (!is.null(self$`sourceAvailable`)) {
        ReplenishmentSuggestionLineObject[["sourceAvailable"]] <-
          self$`sourceAvailable`
      }
      if (!is.null(self$`sourceWarehouseId`)) {
        ReplenishmentSuggestionLineObject[["sourceWarehouseId"]] <-
          self$`sourceWarehouseId`
      }
      if (!is.null(self$`suggestedQuantity`)) {
        ReplenishmentSuggestionLineObject[["suggestedQuantity"]] <-
          self$`suggestedQuantity`
      }
      if (!is.null(self$`targetWarehouseId`)) {
        ReplenishmentSuggestionLineObject[["targetWarehouseId"]] <-
          self$`targetWarehouseId`
      }
      return(ReplenishmentSuggestionLineObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ReplenishmentSuggestionLine
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReplenishmentSuggestionLine
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`currentStock`)) {
        self$`currentStock` <- this_object$`currentStock`
      }
      if (!is.null(this_object$`maxStock`)) {
        self$`maxStock` <- this_object$`maxStock`
      }
      if (!is.null(this_object$`minStock`)) {
        self$`minStock` <- this_object$`minStock`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`productName`)) {
        self$`productName` <- this_object$`productName`
      }
      if (!is.null(this_object$`sku`)) {
        self$`sku` <- this_object$`sku`
      }
      if (!is.null(this_object$`sourceAvailable`)) {
        self$`sourceAvailable` <- this_object$`sourceAvailable`
      }
      if (!is.null(this_object$`sourceWarehouseId`)) {
        self$`sourceWarehouseId` <- this_object$`sourceWarehouseId`
      }
      if (!is.null(this_object$`suggestedQuantity`)) {
        self$`suggestedQuantity` <- this_object$`suggestedQuantity`
      }
      if (!is.null(this_object$`targetWarehouseId`)) {
        self$`targetWarehouseId` <- this_object$`targetWarehouseId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReplenishmentSuggestionLine in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReplenishmentSuggestionLine
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReplenishmentSuggestionLine
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`currentStock` <- this_object$`currentStock`
      self$`maxStock` <- this_object$`maxStock`
      self$`minStock` <- this_object$`minStock`
      self$`productId` <- this_object$`productId`
      self$`productName` <- this_object$`productName`
      self$`sku` <- this_object$`sku`
      self$`sourceAvailable` <- this_object$`sourceAvailable`
      self$`sourceWarehouseId` <- this_object$`sourceWarehouseId`
      self$`suggestedQuantity` <- this_object$`suggestedQuantity`
      self$`targetWarehouseId` <- this_object$`targetWarehouseId`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReplenishmentSuggestionLine and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `currentStock`
      if (!is.null(input_json$`currentStock`)) {
        if (!(is.numeric(input_json$`currentStock`) && length(input_json$`currentStock`) == 1)) {
          stop(paste("Error! Invalid data for `currentStock`. Must be an integer:", input_json$`currentStock`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReplenishmentSuggestionLine: the required field `currentStock` is missing."))
      }
      # check the required field `productId`
      if (!is.null(input_json$`productId`)) {
        if (!(is.character(input_json$`productId`) && length(input_json$`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", input_json$`productId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReplenishmentSuggestionLine: the required field `productId` is missing."))
      }
      # check the required field `productName`
      if (!is.null(input_json$`productName`)) {
        if (!(is.character(input_json$`productName`) && length(input_json$`productName`) == 1)) {
          stop(paste("Error! Invalid data for `productName`. Must be a string:", input_json$`productName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReplenishmentSuggestionLine: the required field `productName` is missing."))
      }
      # check the required field `sku`
      if (!is.null(input_json$`sku`)) {
        if (!(is.character(input_json$`sku`) && length(input_json$`sku`) == 1)) {
          stop(paste("Error! Invalid data for `sku`. Must be a string:", input_json$`sku`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReplenishmentSuggestionLine: the required field `sku` is missing."))
      }
      # check the required field `sourceAvailable`
      if (!is.null(input_json$`sourceAvailable`)) {
        if (!(is.numeric(input_json$`sourceAvailable`) && length(input_json$`sourceAvailable`) == 1)) {
          stop(paste("Error! Invalid data for `sourceAvailable`. Must be an integer:", input_json$`sourceAvailable`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReplenishmentSuggestionLine: the required field `sourceAvailable` is missing."))
      }
      # check the required field `sourceWarehouseId`
      if (!is.null(input_json$`sourceWarehouseId`)) {
        if (!(is.character(input_json$`sourceWarehouseId`) && length(input_json$`sourceWarehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `sourceWarehouseId`. Must be a string:", input_json$`sourceWarehouseId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReplenishmentSuggestionLine: the required field `sourceWarehouseId` is missing."))
      }
      # check the required field `suggestedQuantity`
      if (!is.null(input_json$`suggestedQuantity`)) {
        if (!(is.numeric(input_json$`suggestedQuantity`) && length(input_json$`suggestedQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `suggestedQuantity`. Must be an integer:", input_json$`suggestedQuantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReplenishmentSuggestionLine: the required field `suggestedQuantity` is missing."))
      }
      # check the required field `targetWarehouseId`
      if (!is.null(input_json$`targetWarehouseId`)) {
        if (!(is.character(input_json$`targetWarehouseId`) && length(input_json$`targetWarehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `targetWarehouseId`. Must be a string:", input_json$`targetWarehouseId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReplenishmentSuggestionLine: the required field `targetWarehouseId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReplenishmentSuggestionLine
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `currentStock` is null
      if (is.null(self$`currentStock`)) {
        return(FALSE)
      }

      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        return(FALSE)
      }

      # check if the required `productName` is null
      if (is.null(self$`productName`)) {
        return(FALSE)
      }

      # check if the required `sku` is null
      if (is.null(self$`sku`)) {
        return(FALSE)
      }

      # check if the required `sourceAvailable` is null
      if (is.null(self$`sourceAvailable`)) {
        return(FALSE)
      }

      # check if the required `sourceWarehouseId` is null
      if (is.null(self$`sourceWarehouseId`)) {
        return(FALSE)
      }

      # check if the required `suggestedQuantity` is null
      if (is.null(self$`suggestedQuantity`)) {
        return(FALSE)
      }

      # check if the required `targetWarehouseId` is null
      if (is.null(self$`targetWarehouseId`)) {
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
      # check if the required `currentStock` is null
      if (is.null(self$`currentStock`)) {
        invalid_fields["currentStock"] <- "Non-nullable required field `currentStock` cannot be null."
      }

      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        invalid_fields["productId"] <- "Non-nullable required field `productId` cannot be null."
      }

      # check if the required `productName` is null
      if (is.null(self$`productName`)) {
        invalid_fields["productName"] <- "Non-nullable required field `productName` cannot be null."
      }

      # check if the required `sku` is null
      if (is.null(self$`sku`)) {
        invalid_fields["sku"] <- "Non-nullable required field `sku` cannot be null."
      }

      # check if the required `sourceAvailable` is null
      if (is.null(self$`sourceAvailable`)) {
        invalid_fields["sourceAvailable"] <- "Non-nullable required field `sourceAvailable` cannot be null."
      }

      # check if the required `sourceWarehouseId` is null
      if (is.null(self$`sourceWarehouseId`)) {
        invalid_fields["sourceWarehouseId"] <- "Non-nullable required field `sourceWarehouseId` cannot be null."
      }

      # check if the required `suggestedQuantity` is null
      if (is.null(self$`suggestedQuantity`)) {
        invalid_fields["suggestedQuantity"] <- "Non-nullable required field `suggestedQuantity` cannot be null."
      }

      # check if the required `targetWarehouseId` is null
      if (is.null(self$`targetWarehouseId`)) {
        invalid_fields["targetWarehouseId"] <- "Non-nullable required field `targetWarehouseId` cannot be null."
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
# ReplenishmentSuggestionLine$unlock()
#
## Below is an example to define the print function
# ReplenishmentSuggestionLine$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReplenishmentSuggestionLine$lock()

