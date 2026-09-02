#' Create a new DeliverableResponse
#'
#' @description
#' DeliverableResponse Class
#'
#' @docType class
#' @title DeliverableResponse
#' @description DeliverableResponse Class
#' @format An \code{R6Class} generator object
#' @field availableStock  integer
#' @field deliverableQuantity  integer
#' @field maxSellable  integer [optional]
#' @field productId  character
#' @field reservedStock  integer
#' @field warehouseId  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeliverableResponse <- R6::R6Class(
  "DeliverableResponse",
  public = list(
    `availableStock` = NULL,
    `deliverableQuantity` = NULL,
    `maxSellable` = NULL,
    `productId` = NULL,
    `reservedStock` = NULL,
    `warehouseId` = NULL,

    #' @description
    #' Initialize a new DeliverableResponse class.
    #'
    #' @param availableStock availableStock
    #' @param deliverableQuantity deliverableQuantity
    #' @param productId productId
    #' @param reservedStock reservedStock
    #' @param maxSellable maxSellable
    #' @param warehouseId warehouseId
    #' @param ... Other optional arguments.
    initialize = function(`availableStock`, `deliverableQuantity`, `productId`, `reservedStock`, `maxSellable` = NULL, `warehouseId` = NULL, ...) {
      if (!missing(`availableStock`)) {
        if (!(is.numeric(`availableStock`) && length(`availableStock`) == 1)) {
          stop(paste("Error! Invalid data for `availableStock`. Must be an integer:", `availableStock`))
        }
        self$`availableStock` <- `availableStock`
      }
      if (!missing(`deliverableQuantity`)) {
        if (!(is.numeric(`deliverableQuantity`) && length(`deliverableQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `deliverableQuantity`. Must be an integer:", `deliverableQuantity`))
        }
        self$`deliverableQuantity` <- `deliverableQuantity`
      }
      if (!missing(`productId`)) {
        if (!(is.character(`productId`) && length(`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", `productId`))
        }
        self$`productId` <- `productId`
      }
      if (!missing(`reservedStock`)) {
        if (!(is.numeric(`reservedStock`) && length(`reservedStock`) == 1)) {
          stop(paste("Error! Invalid data for `reservedStock`. Must be an integer:", `reservedStock`))
        }
        self$`reservedStock` <- `reservedStock`
      }
      if (!is.null(`maxSellable`)) {
        if (!(is.numeric(`maxSellable`) && length(`maxSellable`) == 1)) {
          stop(paste("Error! Invalid data for `maxSellable`. Must be an integer:", `maxSellable`))
        }
        self$`maxSellable` <- `maxSellable`
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
    #' @return DeliverableResponse as a base R list.
    #' @examples
    #' # convert array of DeliverableResponse (x) to a data frame
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
    #' Convert DeliverableResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DeliverableResponseObject <- list()
      if (!is.null(self$`availableStock`)) {
        DeliverableResponseObject[["availableStock"]] <-
          self$`availableStock`
      }
      if (!is.null(self$`deliverableQuantity`)) {
        DeliverableResponseObject[["deliverableQuantity"]] <-
          self$`deliverableQuantity`
      }
      if (!is.null(self$`maxSellable`)) {
        DeliverableResponseObject[["maxSellable"]] <-
          self$`maxSellable`
      }
      if (!is.null(self$`productId`)) {
        DeliverableResponseObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`reservedStock`)) {
        DeliverableResponseObject[["reservedStock"]] <-
          self$`reservedStock`
      }
      if (!is.null(self$`warehouseId`)) {
        DeliverableResponseObject[["warehouseId"]] <-
          self$`warehouseId`
      }
      return(DeliverableResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DeliverableResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliverableResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`availableStock`)) {
        self$`availableStock` <- this_object$`availableStock`
      }
      if (!is.null(this_object$`deliverableQuantity`)) {
        self$`deliverableQuantity` <- this_object$`deliverableQuantity`
      }
      if (!is.null(this_object$`maxSellable`)) {
        self$`maxSellable` <- this_object$`maxSellable`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`reservedStock`)) {
        self$`reservedStock` <- this_object$`reservedStock`
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
    #' @return DeliverableResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DeliverableResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliverableResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`availableStock` <- this_object$`availableStock`
      self$`deliverableQuantity` <- this_object$`deliverableQuantity`
      self$`maxSellable` <- this_object$`maxSellable`
      self$`productId` <- this_object$`productId`
      self$`reservedStock` <- this_object$`reservedStock`
      self$`warehouseId` <- this_object$`warehouseId`
      self
    },

    #' @description
    #' Validate JSON input with respect to DeliverableResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `availableStock`
      if (!is.null(input_json$`availableStock`)) {
        if (!(is.numeric(input_json$`availableStock`) && length(input_json$`availableStock`) == 1)) {
          stop(paste("Error! Invalid data for `availableStock`. Must be an integer:", input_json$`availableStock`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliverableResponse: the required field `availableStock` is missing."))
      }
      # check the required field `deliverableQuantity`
      if (!is.null(input_json$`deliverableQuantity`)) {
        if (!(is.numeric(input_json$`deliverableQuantity`) && length(input_json$`deliverableQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `deliverableQuantity`. Must be an integer:", input_json$`deliverableQuantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliverableResponse: the required field `deliverableQuantity` is missing."))
      }
      # check the required field `productId`
      if (!is.null(input_json$`productId`)) {
        if (!(is.character(input_json$`productId`) && length(input_json$`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", input_json$`productId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliverableResponse: the required field `productId` is missing."))
      }
      # check the required field `reservedStock`
      if (!is.null(input_json$`reservedStock`)) {
        if (!(is.numeric(input_json$`reservedStock`) && length(input_json$`reservedStock`) == 1)) {
          stop(paste("Error! Invalid data for `reservedStock`. Must be an integer:", input_json$`reservedStock`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliverableResponse: the required field `reservedStock` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeliverableResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `availableStock` is null
      if (is.null(self$`availableStock`)) {
        return(FALSE)
      }

      # check if the required `deliverableQuantity` is null
      if (is.null(self$`deliverableQuantity`)) {
        return(FALSE)
      }

      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        return(FALSE)
      }

      # check if the required `reservedStock` is null
      if (is.null(self$`reservedStock`)) {
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
      # check if the required `availableStock` is null
      if (is.null(self$`availableStock`)) {
        invalid_fields["availableStock"] <- "Non-nullable required field `availableStock` cannot be null."
      }

      # check if the required `deliverableQuantity` is null
      if (is.null(self$`deliverableQuantity`)) {
        invalid_fields["deliverableQuantity"] <- "Non-nullable required field `deliverableQuantity` cannot be null."
      }

      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        invalid_fields["productId"] <- "Non-nullable required field `productId` cannot be null."
      }

      # check if the required `reservedStock` is null
      if (is.null(self$`reservedStock`)) {
        invalid_fields["reservedStock"] <- "Non-nullable required field `reservedStock` cannot be null."
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
# DeliverableResponse$unlock()
#
## Below is an example to define the print function
# DeliverableResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeliverableResponse$lock()

