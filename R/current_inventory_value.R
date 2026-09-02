#' Create a new CurrentInventoryValue
#'
#' @description
#' CurrentInventoryValue Class
#'
#' @docType class
#' @title CurrentInventoryValue
#' @description CurrentInventoryValue Class
#' @format An \code{R6Class} generator object
#' @field history  list(\link{InventoryValuePoint})
#' @field product_count  integer
#' @field total_purchase_value  character
#' @field total_sales_value  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CurrentInventoryValue <- R6::R6Class(
  "CurrentInventoryValue",
  public = list(
    `history` = NULL,
    `product_count` = NULL,
    `total_purchase_value` = NULL,
    `total_sales_value` = NULL,

    #' @description
    #' Initialize a new CurrentInventoryValue class.
    #'
    #' @param history history
    #' @param product_count product_count
    #' @param total_purchase_value total_purchase_value
    #' @param total_sales_value total_sales_value
    #' @param ... Other optional arguments.
    initialize = function(`history`, `product_count`, `total_purchase_value`, `total_sales_value`, ...) {
      if (!missing(`history`)) {
        stopifnot(is.vector(`history`), length(`history`) != 0)
        sapply(`history`, function(x) stopifnot(R6::is.R6(x)))
        self$`history` <- `history`
      }
      if (!missing(`product_count`)) {
        if (!(is.numeric(`product_count`) && length(`product_count`) == 1)) {
          stop(paste("Error! Invalid data for `product_count`. Must be an integer:", `product_count`))
        }
        self$`product_count` <- `product_count`
      }
      if (!missing(`total_purchase_value`)) {
        if (!(is.character(`total_purchase_value`) && length(`total_purchase_value`) == 1)) {
          stop(paste("Error! Invalid data for `total_purchase_value`. Must be a string:", `total_purchase_value`))
        }
        self$`total_purchase_value` <- `total_purchase_value`
      }
      if (!missing(`total_sales_value`)) {
        if (!(is.character(`total_sales_value`) && length(`total_sales_value`) == 1)) {
          stop(paste("Error! Invalid data for `total_sales_value`. Must be a string:", `total_sales_value`))
        }
        self$`total_sales_value` <- `total_sales_value`
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
    #' @return CurrentInventoryValue as a base R list.
    #' @examples
    #' # convert array of CurrentInventoryValue (x) to a data frame
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
    #' Convert CurrentInventoryValue to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CurrentInventoryValueObject <- list()
      if (!is.null(self$`history`)) {
        CurrentInventoryValueObject[["history"]] <-
          self$extractSimpleType(self$`history`)
      }
      if (!is.null(self$`product_count`)) {
        CurrentInventoryValueObject[["product_count"]] <-
          self$`product_count`
      }
      if (!is.null(self$`total_purchase_value`)) {
        CurrentInventoryValueObject[["total_purchase_value"]] <-
          self$`total_purchase_value`
      }
      if (!is.null(self$`total_sales_value`)) {
        CurrentInventoryValueObject[["total_sales_value"]] <-
          self$`total_sales_value`
      }
      return(CurrentInventoryValueObject)
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
    #' Deserialize JSON string into an instance of CurrentInventoryValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurrentInventoryValue
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`history`)) {
        self$`history` <- ApiClient$new()$deserializeObj(this_object$`history`, "array[InventoryValuePoint]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`product_count`)) {
        self$`product_count` <- this_object$`product_count`
      }
      if (!is.null(this_object$`total_purchase_value`)) {
        self$`total_purchase_value` <- this_object$`total_purchase_value`
      }
      if (!is.null(this_object$`total_sales_value`)) {
        self$`total_sales_value` <- this_object$`total_sales_value`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CurrentInventoryValue in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CurrentInventoryValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of CurrentInventoryValue
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`history` <- ApiClient$new()$deserializeObj(this_object$`history`, "array[InventoryValuePoint]", loadNamespace("openapi"))
      self$`product_count` <- this_object$`product_count`
      self$`total_purchase_value` <- this_object$`total_purchase_value`
      self$`total_sales_value` <- this_object$`total_sales_value`
      self
    },

    #' @description
    #' Validate JSON input with respect to CurrentInventoryValue and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `history`
      if (!is.null(input_json$`history`)) {
        stopifnot(is.vector(input_json$`history`), length(input_json$`history`) != 0)
        tmp <- sapply(input_json$`history`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CurrentInventoryValue: the required field `history` is missing."))
      }
      # check the required field `product_count`
      if (!is.null(input_json$`product_count`)) {
        if (!(is.numeric(input_json$`product_count`) && length(input_json$`product_count`) == 1)) {
          stop(paste("Error! Invalid data for `product_count`. Must be an integer:", input_json$`product_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CurrentInventoryValue: the required field `product_count` is missing."))
      }
      # check the required field `total_purchase_value`
      if (!is.null(input_json$`total_purchase_value`)) {
        if (!(is.character(input_json$`total_purchase_value`) && length(input_json$`total_purchase_value`) == 1)) {
          stop(paste("Error! Invalid data for `total_purchase_value`. Must be a string:", input_json$`total_purchase_value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CurrentInventoryValue: the required field `total_purchase_value` is missing."))
      }
      # check the required field `total_sales_value`
      if (!is.null(input_json$`total_sales_value`)) {
        if (!(is.character(input_json$`total_sales_value`) && length(input_json$`total_sales_value`) == 1)) {
          stop(paste("Error! Invalid data for `total_sales_value`. Must be a string:", input_json$`total_sales_value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CurrentInventoryValue: the required field `total_sales_value` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CurrentInventoryValue
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `history` is null
      if (is.null(self$`history`)) {
        return(FALSE)
      }

      # check if the required `product_count` is null
      if (is.null(self$`product_count`)) {
        return(FALSE)
      }

      # check if the required `total_purchase_value` is null
      if (is.null(self$`total_purchase_value`)) {
        return(FALSE)
      }

      # check if the required `total_sales_value` is null
      if (is.null(self$`total_sales_value`)) {
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
      # check if the required `history` is null
      if (is.null(self$`history`)) {
        invalid_fields["history"] <- "Non-nullable required field `history` cannot be null."
      }

      # check if the required `product_count` is null
      if (is.null(self$`product_count`)) {
        invalid_fields["product_count"] <- "Non-nullable required field `product_count` cannot be null."
      }

      # check if the required `total_purchase_value` is null
      if (is.null(self$`total_purchase_value`)) {
        invalid_fields["total_purchase_value"] <- "Non-nullable required field `total_purchase_value` cannot be null."
      }

      # check if the required `total_sales_value` is null
      if (is.null(self$`total_sales_value`)) {
        invalid_fields["total_sales_value"] <- "Non-nullable required field `total_sales_value` cannot be null."
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
# CurrentInventoryValue$unlock()
#
## Below is an example to define the print function
# CurrentInventoryValue$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CurrentInventoryValue$lock()

