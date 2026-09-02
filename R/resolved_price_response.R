#' Create a new ResolvedPriceResponse
#'
#' @description
#' ResolvedPriceResponse Class
#'
#' @docType class
#' @title ResolvedPriceResponse
#' @description ResolvedPriceResponse Class
#' @format An \code{R6Class} generator object
#' @field isListPrice True when no tier matched and the product list price was used. character
#' @field priceTierId Applied tier, if any matched. character [optional]
#' @field productId  character
#' @field quantity  integer
#' @field unitPrice  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResolvedPriceResponse <- R6::R6Class(
  "ResolvedPriceResponse",
  public = list(
    `isListPrice` = NULL,
    `priceTierId` = NULL,
    `productId` = NULL,
    `quantity` = NULL,
    `unitPrice` = NULL,

    #' @description
    #' Initialize a new ResolvedPriceResponse class.
    #'
    #' @param isListPrice True when no tier matched and the product list price was used.
    #' @param productId productId
    #' @param quantity quantity
    #' @param unitPrice unitPrice
    #' @param priceTierId Applied tier, if any matched.
    #' @param ... Other optional arguments.
    initialize = function(`isListPrice`, `productId`, `quantity`, `unitPrice`, `priceTierId` = NULL, ...) {
      if (!missing(`isListPrice`)) {
        if (!(is.logical(`isListPrice`) && length(`isListPrice`) == 1)) {
          stop(paste("Error! Invalid data for `isListPrice`. Must be a boolean:", `isListPrice`))
        }
        self$`isListPrice` <- `isListPrice`
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
      if (!missing(`unitPrice`)) {
        if (!(is.character(`unitPrice`) && length(`unitPrice`) == 1)) {
          stop(paste("Error! Invalid data for `unitPrice`. Must be a string:", `unitPrice`))
        }
        self$`unitPrice` <- `unitPrice`
      }
      if (!is.null(`priceTierId`)) {
        if (!(is.character(`priceTierId`) && length(`priceTierId`) == 1)) {
          stop(paste("Error! Invalid data for `priceTierId`. Must be a string:", `priceTierId`))
        }
        self$`priceTierId` <- `priceTierId`
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
    #' @return ResolvedPriceResponse as a base R list.
    #' @examples
    #' # convert array of ResolvedPriceResponse (x) to a data frame
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
    #' Convert ResolvedPriceResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ResolvedPriceResponseObject <- list()
      if (!is.null(self$`isListPrice`)) {
        ResolvedPriceResponseObject[["isListPrice"]] <-
          self$`isListPrice`
      }
      if (!is.null(self$`priceTierId`)) {
        ResolvedPriceResponseObject[["priceTierId"]] <-
          self$`priceTierId`
      }
      if (!is.null(self$`productId`)) {
        ResolvedPriceResponseObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`quantity`)) {
        ResolvedPriceResponseObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`unitPrice`)) {
        ResolvedPriceResponseObject[["unitPrice"]] <-
          self$`unitPrice`
      }
      return(ResolvedPriceResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ResolvedPriceResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ResolvedPriceResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`isListPrice`)) {
        self$`isListPrice` <- this_object$`isListPrice`
      }
      if (!is.null(this_object$`priceTierId`)) {
        self$`priceTierId` <- this_object$`priceTierId`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
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
    #' @return ResolvedPriceResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ResolvedPriceResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ResolvedPriceResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`isListPrice` <- this_object$`isListPrice`
      self$`priceTierId` <- this_object$`priceTierId`
      self$`productId` <- this_object$`productId`
      self$`quantity` <- this_object$`quantity`
      self$`unitPrice` <- this_object$`unitPrice`
      self
    },

    #' @description
    #' Validate JSON input with respect to ResolvedPriceResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `isListPrice`
      if (!is.null(input_json$`isListPrice`)) {
        if (!(is.logical(input_json$`isListPrice`) && length(input_json$`isListPrice`) == 1)) {
          stop(paste("Error! Invalid data for `isListPrice`. Must be a boolean:", input_json$`isListPrice`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResolvedPriceResponse: the required field `isListPrice` is missing."))
      }
      # check the required field `productId`
      if (!is.null(input_json$`productId`)) {
        if (!(is.character(input_json$`productId`) && length(input_json$`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", input_json$`productId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResolvedPriceResponse: the required field `productId` is missing."))
      }
      # check the required field `quantity`
      if (!is.null(input_json$`quantity`)) {
        if (!(is.numeric(input_json$`quantity`) && length(input_json$`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", input_json$`quantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResolvedPriceResponse: the required field `quantity` is missing."))
      }
      # check the required field `unitPrice`
      if (!is.null(input_json$`unitPrice`)) {
        if (!(is.character(input_json$`unitPrice`) && length(input_json$`unitPrice`) == 1)) {
          stop(paste("Error! Invalid data for `unitPrice`. Must be a string:", input_json$`unitPrice`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResolvedPriceResponse: the required field `unitPrice` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ResolvedPriceResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `isListPrice` is null
      if (is.null(self$`isListPrice`)) {
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
      # check if the required `isListPrice` is null
      if (is.null(self$`isListPrice`)) {
        invalid_fields["isListPrice"] <- "Non-nullable required field `isListPrice` cannot be null."
      }

      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        invalid_fields["productId"] <- "Non-nullable required field `productId` cannot be null."
      }

      # check if the required `quantity` is null
      if (is.null(self$`quantity`)) {
        invalid_fields["quantity"] <- "Non-nullable required field `quantity` cannot be null."
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
# ResolvedPriceResponse$unlock()
#
## Below is an example to define the print function
# ResolvedPriceResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ResolvedPriceResponse$lock()

