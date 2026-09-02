#' Create a new StockAdjustment
#'
#' @description
#' StockAdjustment Class
#'
#' @docType class
#' @title StockAdjustment
#' @description StockAdjustment Class
#' @format An \code{R6Class} generator object
#' @field batchNumber  character [optional]
#' @field binLocation  character [optional]
#' @field expiryDate  character [optional]
#' @field productId  character [optional]
#' @field quantity  integer
#' @field serialNumbers  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StockAdjustment <- R6::R6Class(
  "StockAdjustment",
  public = list(
    `batchNumber` = NULL,
    `binLocation` = NULL,
    `expiryDate` = NULL,
    `productId` = NULL,
    `quantity` = NULL,
    `serialNumbers` = NULL,

    #' @description
    #' Initialize a new StockAdjustment class.
    #'
    #' @param quantity quantity
    #' @param batchNumber batchNumber
    #' @param binLocation binLocation
    #' @param expiryDate expiryDate
    #' @param productId productId
    #' @param serialNumbers serialNumbers
    #' @param ... Other optional arguments.
    initialize = function(`quantity`, `batchNumber` = NULL, `binLocation` = NULL, `expiryDate` = NULL, `productId` = NULL, `serialNumbers` = NULL, ...) {
      if (!missing(`quantity`)) {
        if (!(is.numeric(`quantity`) && length(`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", `quantity`))
        }
        self$`quantity` <- `quantity`
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
      if (!is.null(`productId`)) {
        if (!(is.character(`productId`) && length(`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", `productId`))
        }
        self$`productId` <- `productId`
      }
      if (!is.null(`serialNumbers`)) {
        stopifnot(is.vector(`serialNumbers`), length(`serialNumbers`) != 0)
        sapply(`serialNumbers`, function(x) stopifnot(is.character(x)))
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
    #' @return StockAdjustment as a base R list.
    #' @examples
    #' # convert array of StockAdjustment (x) to a data frame
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
    #' Convert StockAdjustment to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StockAdjustmentObject <- list()
      if (!is.null(self$`batchNumber`)) {
        StockAdjustmentObject[["batchNumber"]] <-
          self$`batchNumber`
      }
      if (!is.null(self$`binLocation`)) {
        StockAdjustmentObject[["binLocation"]] <-
          self$`binLocation`
      }
      if (!is.null(self$`expiryDate`)) {
        StockAdjustmentObject[["expiryDate"]] <-
          self$`expiryDate`
      }
      if (!is.null(self$`productId`)) {
        StockAdjustmentObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`quantity`)) {
        StockAdjustmentObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`serialNumbers`)) {
        StockAdjustmentObject[["serialNumbers"]] <-
          self$`serialNumbers`
      }
      return(StockAdjustmentObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of StockAdjustment
    #'
    #' @param input_json the JSON input
    #' @return the instance of StockAdjustment
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
        self$`serialNumbers` <- ApiClient$new()$deserializeObj(this_object$`serialNumbers`, "array[character]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StockAdjustment in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StockAdjustment
    #'
    #' @param input_json the JSON input
    #' @return the instance of StockAdjustment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`batchNumber` <- this_object$`batchNumber`
      self$`binLocation` <- this_object$`binLocation`
      self$`expiryDate` <- this_object$`expiryDate`
      self$`productId` <- this_object$`productId`
      self$`quantity` <- this_object$`quantity`
      self$`serialNumbers` <- ApiClient$new()$deserializeObj(this_object$`serialNumbers`, "array[character]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to StockAdjustment and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `quantity`
      if (!is.null(input_json$`quantity`)) {
        if (!(is.numeric(input_json$`quantity`) && length(input_json$`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", input_json$`quantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StockAdjustment: the required field `quantity` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StockAdjustment
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `quantity` is null
      if (is.null(self$`quantity`)) {
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
      # check if the required `quantity` is null
      if (is.null(self$`quantity`)) {
        invalid_fields["quantity"] <- "Non-nullable required field `quantity` cannot be null."
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
# StockAdjustment$unlock()
#
## Below is an example to define the print function
# StockAdjustment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StockAdjustment$lock()

