#' Create a new ReturnLogisticsSummary
#'
#' @description
#' Warehouse-level aggregation for the returns logistics dashboard.
#'
#' @docType class
#' @title ReturnLogisticsSummary
#' @description ReturnLogisticsSummary Class
#' @format An \code{R6Class} generator object
#' @field byStatus Number of return orders per status. \link{AnyType}
#' @field byWarehouse Per-warehouse aggregation. list(\link{ReturnWarehouseSummary})
#' @field itemsRestocked Sum of `restock: true` line-item quantities. integer
#' @field itemsScrapped Sum of `restock: false` line-item quantities (scrapped/disposed). integer
#' @field totalItems Sum of all line-item quantities across returns. integer
#' @field totalReturns Total number of return orders (excluding soft-deleted). integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReturnLogisticsSummary <- R6::R6Class(
  "ReturnLogisticsSummary",
  public = list(
    `byStatus` = NULL,
    `byWarehouse` = NULL,
    `itemsRestocked` = NULL,
    `itemsScrapped` = NULL,
    `totalItems` = NULL,
    `totalReturns` = NULL,

    #' @description
    #' Initialize a new ReturnLogisticsSummary class.
    #'
    #' @param byStatus Number of return orders per status.
    #' @param byWarehouse Per-warehouse aggregation.
    #' @param itemsRestocked Sum of `restock: true` line-item quantities.
    #' @param itemsScrapped Sum of `restock: false` line-item quantities (scrapped/disposed).
    #' @param totalItems Sum of all line-item quantities across returns.
    #' @param totalReturns Total number of return orders (excluding soft-deleted).
    #' @param ... Other optional arguments.
    initialize = function(`byStatus`, `byWarehouse`, `itemsRestocked`, `itemsScrapped`, `totalItems`, `totalReturns`, ...) {
      if (!missing(`byStatus`)) {
        stopifnot(R6::is.R6(`byStatus`))
        self$`byStatus` <- `byStatus`
      }
      if (!missing(`byWarehouse`)) {
        stopifnot(is.vector(`byWarehouse`), length(`byWarehouse`) != 0)
        sapply(`byWarehouse`, function(x) stopifnot(R6::is.R6(x)))
        self$`byWarehouse` <- `byWarehouse`
      }
      if (!missing(`itemsRestocked`)) {
        if (!(is.numeric(`itemsRestocked`) && length(`itemsRestocked`) == 1)) {
          stop(paste("Error! Invalid data for `itemsRestocked`. Must be an integer:", `itemsRestocked`))
        }
        self$`itemsRestocked` <- `itemsRestocked`
      }
      if (!missing(`itemsScrapped`)) {
        if (!(is.numeric(`itemsScrapped`) && length(`itemsScrapped`) == 1)) {
          stop(paste("Error! Invalid data for `itemsScrapped`. Must be an integer:", `itemsScrapped`))
        }
        self$`itemsScrapped` <- `itemsScrapped`
      }
      if (!missing(`totalItems`)) {
        if (!(is.numeric(`totalItems`) && length(`totalItems`) == 1)) {
          stop(paste("Error! Invalid data for `totalItems`. Must be an integer:", `totalItems`))
        }
        self$`totalItems` <- `totalItems`
      }
      if (!missing(`totalReturns`)) {
        if (!(is.numeric(`totalReturns`) && length(`totalReturns`) == 1)) {
          stop(paste("Error! Invalid data for `totalReturns`. Must be an integer:", `totalReturns`))
        }
        self$`totalReturns` <- `totalReturns`
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
    #' @return ReturnLogisticsSummary as a base R list.
    #' @examples
    #' # convert array of ReturnLogisticsSummary (x) to a data frame
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
    #' Convert ReturnLogisticsSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReturnLogisticsSummaryObject <- list()
      if (!is.null(self$`byStatus`)) {
        ReturnLogisticsSummaryObject[["byStatus"]] <-
          self$extractSimpleType(self$`byStatus`)
      }
      if (!is.null(self$`byWarehouse`)) {
        ReturnLogisticsSummaryObject[["byWarehouse"]] <-
          self$extractSimpleType(self$`byWarehouse`)
      }
      if (!is.null(self$`itemsRestocked`)) {
        ReturnLogisticsSummaryObject[["itemsRestocked"]] <-
          self$`itemsRestocked`
      }
      if (!is.null(self$`itemsScrapped`)) {
        ReturnLogisticsSummaryObject[["itemsScrapped"]] <-
          self$`itemsScrapped`
      }
      if (!is.null(self$`totalItems`)) {
        ReturnLogisticsSummaryObject[["totalItems"]] <-
          self$`totalItems`
      }
      if (!is.null(self$`totalReturns`)) {
        ReturnLogisticsSummaryObject[["totalReturns"]] <-
          self$`totalReturns`
      }
      return(ReturnLogisticsSummaryObject)
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
    #' Deserialize JSON string into an instance of ReturnLogisticsSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReturnLogisticsSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`byStatus`)) {
        `bystatus_object` <- AnyType$new()
        `bystatus_object`$fromJSON(jsonlite::toJSON(this_object$`byStatus`, auto_unbox = TRUE, digits = NA))
        self$`byStatus` <- `bystatus_object`
      }
      if (!is.null(this_object$`byWarehouse`)) {
        self$`byWarehouse` <- ApiClient$new()$deserializeObj(this_object$`byWarehouse`, "array[ReturnWarehouseSummary]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`itemsRestocked`)) {
        self$`itemsRestocked` <- this_object$`itemsRestocked`
      }
      if (!is.null(this_object$`itemsScrapped`)) {
        self$`itemsScrapped` <- this_object$`itemsScrapped`
      }
      if (!is.null(this_object$`totalItems`)) {
        self$`totalItems` <- this_object$`totalItems`
      }
      if (!is.null(this_object$`totalReturns`)) {
        self$`totalReturns` <- this_object$`totalReturns`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReturnLogisticsSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReturnLogisticsSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReturnLogisticsSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`byStatus` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`byStatus`, auto_unbox = TRUE, digits = NA))
      self$`byWarehouse` <- ApiClient$new()$deserializeObj(this_object$`byWarehouse`, "array[ReturnWarehouseSummary]", loadNamespace("openapi"))
      self$`itemsRestocked` <- this_object$`itemsRestocked`
      self$`itemsScrapped` <- this_object$`itemsScrapped`
      self$`totalItems` <- this_object$`totalItems`
      self$`totalReturns` <- this_object$`totalReturns`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReturnLogisticsSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `byStatus`
      if (!is.null(input_json$`byStatus`)) {
        stopifnot(R6::is.R6(input_json$`byStatus`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnLogisticsSummary: the required field `byStatus` is missing."))
      }
      # check the required field `byWarehouse`
      if (!is.null(input_json$`byWarehouse`)) {
        stopifnot(is.vector(input_json$`byWarehouse`), length(input_json$`byWarehouse`) != 0)
        tmp <- sapply(input_json$`byWarehouse`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnLogisticsSummary: the required field `byWarehouse` is missing."))
      }
      # check the required field `itemsRestocked`
      if (!is.null(input_json$`itemsRestocked`)) {
        if (!(is.numeric(input_json$`itemsRestocked`) && length(input_json$`itemsRestocked`) == 1)) {
          stop(paste("Error! Invalid data for `itemsRestocked`. Must be an integer:", input_json$`itemsRestocked`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnLogisticsSummary: the required field `itemsRestocked` is missing."))
      }
      # check the required field `itemsScrapped`
      if (!is.null(input_json$`itemsScrapped`)) {
        if (!(is.numeric(input_json$`itemsScrapped`) && length(input_json$`itemsScrapped`) == 1)) {
          stop(paste("Error! Invalid data for `itemsScrapped`. Must be an integer:", input_json$`itemsScrapped`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnLogisticsSummary: the required field `itemsScrapped` is missing."))
      }
      # check the required field `totalItems`
      if (!is.null(input_json$`totalItems`)) {
        if (!(is.numeric(input_json$`totalItems`) && length(input_json$`totalItems`) == 1)) {
          stop(paste("Error! Invalid data for `totalItems`. Must be an integer:", input_json$`totalItems`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnLogisticsSummary: the required field `totalItems` is missing."))
      }
      # check the required field `totalReturns`
      if (!is.null(input_json$`totalReturns`)) {
        if (!(is.numeric(input_json$`totalReturns`) && length(input_json$`totalReturns`) == 1)) {
          stop(paste("Error! Invalid data for `totalReturns`. Must be an integer:", input_json$`totalReturns`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnLogisticsSummary: the required field `totalReturns` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReturnLogisticsSummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `byWarehouse` is null
      if (is.null(self$`byWarehouse`)) {
        return(FALSE)
      }

      # check if the required `itemsRestocked` is null
      if (is.null(self$`itemsRestocked`)) {
        return(FALSE)
      }

      # check if the required `itemsScrapped` is null
      if (is.null(self$`itemsScrapped`)) {
        return(FALSE)
      }

      # check if the required `totalItems` is null
      if (is.null(self$`totalItems`)) {
        return(FALSE)
      }

      # check if the required `totalReturns` is null
      if (is.null(self$`totalReturns`)) {
        return(FALSE)
      }

      if (self$`totalReturns` < 0) {
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
      # check if the required `byWarehouse` is null
      if (is.null(self$`byWarehouse`)) {
        invalid_fields["byWarehouse"] <- "Non-nullable required field `byWarehouse` cannot be null."
      }

      # check if the required `itemsRestocked` is null
      if (is.null(self$`itemsRestocked`)) {
        invalid_fields["itemsRestocked"] <- "Non-nullable required field `itemsRestocked` cannot be null."
      }

      # check if the required `itemsScrapped` is null
      if (is.null(self$`itemsScrapped`)) {
        invalid_fields["itemsScrapped"] <- "Non-nullable required field `itemsScrapped` cannot be null."
      }

      # check if the required `totalItems` is null
      if (is.null(self$`totalItems`)) {
        invalid_fields["totalItems"] <- "Non-nullable required field `totalItems` cannot be null."
      }

      # check if the required `totalReturns` is null
      if (is.null(self$`totalReturns`)) {
        invalid_fields["totalReturns"] <- "Non-nullable required field `totalReturns` cannot be null."
      }

      if (self$`totalReturns` < 0) {
        invalid_fields["totalReturns"] <- "Invalid value for `totalReturns`, must be bigger than or equal to 0."
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
# ReturnLogisticsSummary$unlock()
#
## Below is an example to define the print function
# ReturnLogisticsSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReturnLogisticsSummary$lock()

