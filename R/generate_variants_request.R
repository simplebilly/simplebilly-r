#' Create a new GenerateVariantsRequest
#'
#' @description
#' Request body for generating the full variant set from option values.
#'
#' @docType class
#' @title GenerateVariantsRequest
#' @description GenerateVariantsRequest Class
#' @format An \code{R6Class} generator object
#' @field options Option name → list of values, e.g. `{\"Color\": [\"Red\", \"Blue\"], \"Size\": [\"S\", \"M\"]}`. The cartesian product of these lists is generated. named list(list(character)) [optional]
#' @field priceDelta Optional per-variant price delta applied to every generated variant. character [optional]
#' @field productId  character
#' @field skuPrefix Optional prefix for the generated SKUs (suffix is the option values joined by `-`). Falls back to the parent product's SKU. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenerateVariantsRequest <- R6::R6Class(
  "GenerateVariantsRequest",
  public = list(
    `options` = NULL,
    `priceDelta` = NULL,
    `productId` = NULL,
    `skuPrefix` = NULL,

    #' @description
    #' Initialize a new GenerateVariantsRequest class.
    #'
    #' @param productId productId
    #' @param options Option name → list of values, e.g. `{\"Color\": [\"Red\", \"Blue\"], \"Size\": [\"S\", \"M\"]}`. The cartesian product of these lists is generated.
    #' @param priceDelta Optional per-variant price delta applied to every generated variant.
    #' @param skuPrefix Optional prefix for the generated SKUs (suffix is the option values joined by `-`). Falls back to the parent product's SKU.
    #' @param ... Other optional arguments.
    initialize = function(`productId`, `options` = NULL, `priceDelta` = NULL, `skuPrefix` = NULL, ...) {
      if (!missing(`productId`)) {
        if (!(is.character(`productId`) && length(`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", `productId`))
        }
        self$`productId` <- `productId`
      }
      if (!is.null(`options`)) {
        stopifnot(is.vector(`options`), length(`options`) != 0)
        sapply(`options`, function(x) stopifnot(R6::is.R6(x)))
        self$`options` <- `options`
      }
      if (!is.null(`priceDelta`)) {
        if (!(is.character(`priceDelta`) && length(`priceDelta`) == 1)) {
          stop(paste("Error! Invalid data for `priceDelta`. Must be a string:", `priceDelta`))
        }
        self$`priceDelta` <- `priceDelta`
      }
      if (!is.null(`skuPrefix`)) {
        if (!(is.character(`skuPrefix`) && length(`skuPrefix`) == 1)) {
          stop(paste("Error! Invalid data for `skuPrefix`. Must be a string:", `skuPrefix`))
        }
        self$`skuPrefix` <- `skuPrefix`
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
    #' @return GenerateVariantsRequest as a base R list.
    #' @examples
    #' # convert array of GenerateVariantsRequest (x) to a data frame
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
    #' Convert GenerateVariantsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GenerateVariantsRequestObject <- list()
      if (!is.null(self$`options`)) {
        GenerateVariantsRequestObject[["options"]] <-
          self$extractSimpleType(self$`options`)
      }
      if (!is.null(self$`priceDelta`)) {
        GenerateVariantsRequestObject[["priceDelta"]] <-
          self$`priceDelta`
      }
      if (!is.null(self$`productId`)) {
        GenerateVariantsRequestObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`skuPrefix`)) {
        GenerateVariantsRequestObject[["skuPrefix"]] <-
          self$`skuPrefix`
      }
      return(GenerateVariantsRequestObject)
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
    #' Deserialize JSON string into an instance of GenerateVariantsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenerateVariantsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`options`)) {
        self$`options` <- ApiClient$new()$deserializeObj(this_object$`options`, "map(array[character])", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`priceDelta`)) {
        self$`priceDelta` <- this_object$`priceDelta`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`skuPrefix`)) {
        self$`skuPrefix` <- this_object$`skuPrefix`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GenerateVariantsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GenerateVariantsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenerateVariantsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`options` <- ApiClient$new()$deserializeObj(this_object$`options`, "map(array[character])", loadNamespace("openapi"))
      self$`priceDelta` <- this_object$`priceDelta`
      self$`productId` <- this_object$`productId`
      self$`skuPrefix` <- this_object$`skuPrefix`
      self
    },

    #' @description
    #' Validate JSON input with respect to GenerateVariantsRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GenerateVariantsRequest: the required field `productId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GenerateVariantsRequest
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
# GenerateVariantsRequest$unlock()
#
## Below is an example to define the print function
# GenerateVariantsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenerateVariantsRequest$lock()

