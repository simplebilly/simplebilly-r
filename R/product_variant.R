#' Create a new ProductVariant
#'
#' @description
#' ProductVariant Class
#'
#' @docType class
#' @title ProductVariant
#' @description ProductVariant Class
#' @format An \code{R6Class} generator object
#' @field barcode  character [optional]
#' @field imageLink  character [optional]
#' @field isActive  character [optional]
#' @field name Human-readable variant label, e.g. \"Red / M\". character [optional]
#' @field optionValues Option name → value map, e.g. `{\"Color\": \"Red\", \"Size\": \"M\"}`. \link{AnyType} [optional]
#' @field price Explicit override price for this variant (takes precedence over parent price + delta). character [optional]
#' @field priceDelta Price adjustment relative to the parent product's `default_price`. character [optional]
#' @field productId The parent product this variant belongs to. References the product entity. character
#' @field sku Variant-specific SKU (must be unique per tenant). character
#' @field stockQuantity Variant-level stock (optional — may be tracked on the parent only). integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProductVariant <- R6::R6Class(
  "ProductVariant",
  public = list(
    `barcode` = NULL,
    `imageLink` = NULL,
    `isActive` = NULL,
    `name` = NULL,
    `optionValues` = NULL,
    `price` = NULL,
    `priceDelta` = NULL,
    `productId` = NULL,
    `sku` = NULL,
    `stockQuantity` = NULL,

    #' @description
    #' Initialize a new ProductVariant class.
    #'
    #' @param productId The parent product this variant belongs to. References the product entity.
    #' @param sku Variant-specific SKU (must be unique per tenant).
    #' @param barcode barcode
    #' @param imageLink imageLink
    #' @param isActive isActive
    #' @param name Human-readable variant label, e.g. \"Red / M\".
    #' @param optionValues Option name → value map, e.g. `{\"Color\": \"Red\", \"Size\": \"M\"}`.
    #' @param price Explicit override price for this variant (takes precedence over parent price + delta).
    #' @param priceDelta Price adjustment relative to the parent product's `default_price`.
    #' @param stockQuantity Variant-level stock (optional — may be tracked on the parent only).
    #' @param ... Other optional arguments.
    initialize = function(`productId`, `sku`, `barcode` = NULL, `imageLink` = NULL, `isActive` = NULL, `name` = NULL, `optionValues` = NULL, `price` = NULL, `priceDelta` = NULL, `stockQuantity` = NULL, ...) {
      if (!missing(`productId`)) {
        if (!(is.character(`productId`) && length(`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", `productId`))
        }
        self$`productId` <- `productId`
      }
      if (!missing(`sku`)) {
        if (!(is.character(`sku`) && length(`sku`) == 1)) {
          stop(paste("Error! Invalid data for `sku`. Must be a string:", `sku`))
        }
        self$`sku` <- `sku`
      }
      if (!is.null(`barcode`)) {
        if (!(is.character(`barcode`) && length(`barcode`) == 1)) {
          stop(paste("Error! Invalid data for `barcode`. Must be a string:", `barcode`))
        }
        self$`barcode` <- `barcode`
      }
      if (!is.null(`imageLink`)) {
        if (!(is.character(`imageLink`) && length(`imageLink`) == 1)) {
          stop(paste("Error! Invalid data for `imageLink`. Must be a string:", `imageLink`))
        }
        self$`imageLink` <- `imageLink`
      }
      if (!is.null(`isActive`)) {
        if (!(is.logical(`isActive`) && length(`isActive`) == 1)) {
          stop(paste("Error! Invalid data for `isActive`. Must be a boolean:", `isActive`))
        }
        self$`isActive` <- `isActive`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`optionValues`)) {
        stopifnot(R6::is.R6(`optionValues`))
        self$`optionValues` <- `optionValues`
      }
      if (!is.null(`price`)) {
        if (!(is.character(`price`) && length(`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be a string:", `price`))
        }
        self$`price` <- `price`
      }
      if (!is.null(`priceDelta`)) {
        if (!(is.character(`priceDelta`) && length(`priceDelta`) == 1)) {
          stop(paste("Error! Invalid data for `priceDelta`. Must be a string:", `priceDelta`))
        }
        self$`priceDelta` <- `priceDelta`
      }
      if (!is.null(`stockQuantity`)) {
        if (!(is.numeric(`stockQuantity`) && length(`stockQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `stockQuantity`. Must be an integer:", `stockQuantity`))
        }
        self$`stockQuantity` <- `stockQuantity`
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
    #' @return ProductVariant as a base R list.
    #' @examples
    #' # convert array of ProductVariant (x) to a data frame
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
    #' Convert ProductVariant to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProductVariantObject <- list()
      if (!is.null(self$`barcode`)) {
        ProductVariantObject[["barcode"]] <-
          self$`barcode`
      }
      if (!is.null(self$`imageLink`)) {
        ProductVariantObject[["imageLink"]] <-
          self$`imageLink`
      }
      if (!is.null(self$`isActive`)) {
        ProductVariantObject[["isActive"]] <-
          self$`isActive`
      }
      if (!is.null(self$`name`)) {
        ProductVariantObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`optionValues`)) {
        ProductVariantObject[["optionValues"]] <-
          self$extractSimpleType(self$`optionValues`)
      }
      if (!is.null(self$`price`)) {
        ProductVariantObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`priceDelta`)) {
        ProductVariantObject[["priceDelta"]] <-
          self$`priceDelta`
      }
      if (!is.null(self$`productId`)) {
        ProductVariantObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`sku`)) {
        ProductVariantObject[["sku"]] <-
          self$`sku`
      }
      if (!is.null(self$`stockQuantity`)) {
        ProductVariantObject[["stockQuantity"]] <-
          self$`stockQuantity`
      }
      return(ProductVariantObject)
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
    #' Deserialize JSON string into an instance of ProductVariant
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductVariant
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`barcode`)) {
        self$`barcode` <- this_object$`barcode`
      }
      if (!is.null(this_object$`imageLink`)) {
        self$`imageLink` <- this_object$`imageLink`
      }
      if (!is.null(this_object$`isActive`)) {
        self$`isActive` <- this_object$`isActive`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`optionValues`)) {
        `optionvalues_object` <- AnyType$new()
        `optionvalues_object`$fromJSON(jsonlite::toJSON(this_object$`optionValues`, auto_unbox = TRUE, digits = NA))
        self$`optionValues` <- `optionvalues_object`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`priceDelta`)) {
        self$`priceDelta` <- this_object$`priceDelta`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`sku`)) {
        self$`sku` <- this_object$`sku`
      }
      if (!is.null(this_object$`stockQuantity`)) {
        self$`stockQuantity` <- this_object$`stockQuantity`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProductVariant in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductVariant
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductVariant
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`barcode` <- this_object$`barcode`
      self$`imageLink` <- this_object$`imageLink`
      self$`isActive` <- this_object$`isActive`
      self$`name` <- this_object$`name`
      self$`optionValues` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`optionValues`, auto_unbox = TRUE, digits = NA))
      self$`price` <- this_object$`price`
      self$`priceDelta` <- this_object$`priceDelta`
      self$`productId` <- this_object$`productId`
      self$`sku` <- this_object$`sku`
      self$`stockQuantity` <- this_object$`stockQuantity`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProductVariant and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ProductVariant: the required field `productId` is missing."))
      }
      # check the required field `sku`
      if (!is.null(input_json$`sku`)) {
        if (!(is.character(input_json$`sku`) && length(input_json$`sku`) == 1)) {
          stop(paste("Error! Invalid data for `sku`. Must be a string:", input_json$`sku`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductVariant: the required field `sku` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProductVariant
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

      # check if the required `sku` is null
      if (is.null(self$`sku`)) {
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

      # check if the required `sku` is null
      if (is.null(self$`sku`)) {
        invalid_fields["sku"] <- "Non-nullable required field `sku` cannot be null."
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
# ProductVariant$unlock()
#
## Below is an example to define the print function
# ProductVariant$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProductVariant$lock()

