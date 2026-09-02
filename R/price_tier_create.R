#' Create a new PriceTierCreate
#'
#' @description
#' PriceTierCreate Class
#'
#' @docType class
#' @title PriceTierCreate
#' @description PriceTierCreate Class
#' @format An \code{R6Class} generator object
#' @field customerGroupId None = tier applies to all customers; otherwise a customer group id. character [optional]
#' @field minQuantity Quantity from which this tier applies (inclusive). integer [optional]
#' @field productId References the product entity. character
#' @field unitPrice Net unit price once `min_quantity` is reached. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PriceTierCreate <- R6::R6Class(
  "PriceTierCreate",
  public = list(
    `customerGroupId` = NULL,
    `minQuantity` = NULL,
    `productId` = NULL,
    `unitPrice` = NULL,

    #' @description
    #' Initialize a new PriceTierCreate class.
    #'
    #' @param productId References the product entity.
    #' @param unitPrice Net unit price once `min_quantity` is reached.
    #' @param customerGroupId None = tier applies to all customers; otherwise a customer group id.
    #' @param minQuantity Quantity from which this tier applies (inclusive).
    #' @param ... Other optional arguments.
    initialize = function(`productId`, `unitPrice`, `customerGroupId` = NULL, `minQuantity` = NULL, ...) {
      if (!missing(`productId`)) {
        if (!(is.character(`productId`) && length(`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", `productId`))
        }
        self$`productId` <- `productId`
      }
      if (!missing(`unitPrice`)) {
        if (!(is.character(`unitPrice`) && length(`unitPrice`) == 1)) {
          stop(paste("Error! Invalid data for `unitPrice`. Must be a string:", `unitPrice`))
        }
        self$`unitPrice` <- `unitPrice`
      }
      if (!is.null(`customerGroupId`)) {
        if (!(is.character(`customerGroupId`) && length(`customerGroupId`) == 1)) {
          stop(paste("Error! Invalid data for `customerGroupId`. Must be a string:", `customerGroupId`))
        }
        self$`customerGroupId` <- `customerGroupId`
      }
      if (!is.null(`minQuantity`)) {
        if (!(is.numeric(`minQuantity`) && length(`minQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `minQuantity`. Must be an integer:", `minQuantity`))
        }
        self$`minQuantity` <- `minQuantity`
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
    #' @return PriceTierCreate as a base R list.
    #' @examples
    #' # convert array of PriceTierCreate (x) to a data frame
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
    #' Convert PriceTierCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PriceTierCreateObject <- list()
      if (!is.null(self$`customerGroupId`)) {
        PriceTierCreateObject[["customerGroupId"]] <-
          self$`customerGroupId`
      }
      if (!is.null(self$`minQuantity`)) {
        PriceTierCreateObject[["minQuantity"]] <-
          self$`minQuantity`
      }
      if (!is.null(self$`productId`)) {
        PriceTierCreateObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`unitPrice`)) {
        PriceTierCreateObject[["unitPrice"]] <-
          self$`unitPrice`
      }
      return(PriceTierCreateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PriceTierCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PriceTierCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`customerGroupId`)) {
        self$`customerGroupId` <- this_object$`customerGroupId`
      }
      if (!is.null(this_object$`minQuantity`)) {
        self$`minQuantity` <- this_object$`minQuantity`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`unitPrice`)) {
        self$`unitPrice` <- this_object$`unitPrice`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PriceTierCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PriceTierCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PriceTierCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`customerGroupId` <- this_object$`customerGroupId`
      self$`minQuantity` <- this_object$`minQuantity`
      self$`productId` <- this_object$`productId`
      self$`unitPrice` <- this_object$`unitPrice`
      self
    },

    #' @description
    #' Validate JSON input with respect to PriceTierCreate and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PriceTierCreate: the required field `productId` is missing."))
      }
      # check the required field `unitPrice`
      if (!is.null(input_json$`unitPrice`)) {
        if (!(is.character(input_json$`unitPrice`) && length(input_json$`unitPrice`) == 1)) {
          stop(paste("Error! Invalid data for `unitPrice`. Must be a string:", input_json$`unitPrice`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PriceTierCreate: the required field `unitPrice` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PriceTierCreate
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

      # check if the required `unitPrice` is null
      if (is.null(self$`unitPrice`)) {
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

      # check if the required `unitPrice` is null
      if (is.null(self$`unitPrice`)) {
        invalid_fields["unitPrice"] <- "Non-nullable required field `unitPrice` cannot be null."
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
# PriceTierCreate$unlock()
#
## Below is an example to define the print function
# PriceTierCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PriceTierCreate$lock()

