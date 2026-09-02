#' Create a new ReturnWarehouseSummary
#'
#' @description
#' Aggregation for a single warehouse.
#'
#' @docType class
#' @title ReturnWarehouseSummary
#' @description ReturnWarehouseSummary Class
#' @format An \code{R6Class} generator object
#' @field itemsRestocked  integer
#' @field itemsScrapped  integer
#' @field returns  integer
#' @field warehouseId  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReturnWarehouseSummary <- R6::R6Class(
  "ReturnWarehouseSummary",
  public = list(
    `itemsRestocked` = NULL,
    `itemsScrapped` = NULL,
    `returns` = NULL,
    `warehouseId` = NULL,

    #' @description
    #' Initialize a new ReturnWarehouseSummary class.
    #'
    #' @param itemsRestocked itemsRestocked
    #' @param itemsScrapped itemsScrapped
    #' @param returns returns
    #' @param warehouseId warehouseId
    #' @param ... Other optional arguments.
    initialize = function(`itemsRestocked`, `itemsScrapped`, `returns`, `warehouseId` = NULL, ...) {
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
      if (!missing(`returns`)) {
        if (!(is.numeric(`returns`) && length(`returns`) == 1)) {
          stop(paste("Error! Invalid data for `returns`. Must be an integer:", `returns`))
        }
        self$`returns` <- `returns`
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
    #' @return ReturnWarehouseSummary as a base R list.
    #' @examples
    #' # convert array of ReturnWarehouseSummary (x) to a data frame
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
    #' Convert ReturnWarehouseSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReturnWarehouseSummaryObject <- list()
      if (!is.null(self$`itemsRestocked`)) {
        ReturnWarehouseSummaryObject[["itemsRestocked"]] <-
          self$`itemsRestocked`
      }
      if (!is.null(self$`itemsScrapped`)) {
        ReturnWarehouseSummaryObject[["itemsScrapped"]] <-
          self$`itemsScrapped`
      }
      if (!is.null(self$`returns`)) {
        ReturnWarehouseSummaryObject[["returns"]] <-
          self$`returns`
      }
      if (!is.null(self$`warehouseId`)) {
        ReturnWarehouseSummaryObject[["warehouseId"]] <-
          self$`warehouseId`
      }
      return(ReturnWarehouseSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ReturnWarehouseSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReturnWarehouseSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`itemsRestocked`)) {
        self$`itemsRestocked` <- this_object$`itemsRestocked`
      }
      if (!is.null(this_object$`itemsScrapped`)) {
        self$`itemsScrapped` <- this_object$`itemsScrapped`
      }
      if (!is.null(this_object$`returns`)) {
        self$`returns` <- this_object$`returns`
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
    #' @return ReturnWarehouseSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReturnWarehouseSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReturnWarehouseSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`itemsRestocked` <- this_object$`itemsRestocked`
      self$`itemsScrapped` <- this_object$`itemsScrapped`
      self$`returns` <- this_object$`returns`
      self$`warehouseId` <- this_object$`warehouseId`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReturnWarehouseSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `itemsRestocked`
      if (!is.null(input_json$`itemsRestocked`)) {
        if (!(is.numeric(input_json$`itemsRestocked`) && length(input_json$`itemsRestocked`) == 1)) {
          stop(paste("Error! Invalid data for `itemsRestocked`. Must be an integer:", input_json$`itemsRestocked`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnWarehouseSummary: the required field `itemsRestocked` is missing."))
      }
      # check the required field `itemsScrapped`
      if (!is.null(input_json$`itemsScrapped`)) {
        if (!(is.numeric(input_json$`itemsScrapped`) && length(input_json$`itemsScrapped`) == 1)) {
          stop(paste("Error! Invalid data for `itemsScrapped`. Must be an integer:", input_json$`itemsScrapped`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnWarehouseSummary: the required field `itemsScrapped` is missing."))
      }
      # check the required field `returns`
      if (!is.null(input_json$`returns`)) {
        if (!(is.numeric(input_json$`returns`) && length(input_json$`returns`) == 1)) {
          stop(paste("Error! Invalid data for `returns`. Must be an integer:", input_json$`returns`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReturnWarehouseSummary: the required field `returns` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReturnWarehouseSummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `itemsRestocked` is null
      if (is.null(self$`itemsRestocked`)) {
        return(FALSE)
      }

      # check if the required `itemsScrapped` is null
      if (is.null(self$`itemsScrapped`)) {
        return(FALSE)
      }

      # check if the required `returns` is null
      if (is.null(self$`returns`)) {
        return(FALSE)
      }

      if (self$`returns` < 0) {
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
      # check if the required `itemsRestocked` is null
      if (is.null(self$`itemsRestocked`)) {
        invalid_fields["itemsRestocked"] <- "Non-nullable required field `itemsRestocked` cannot be null."
      }

      # check if the required `itemsScrapped` is null
      if (is.null(self$`itemsScrapped`)) {
        invalid_fields["itemsScrapped"] <- "Non-nullable required field `itemsScrapped` cannot be null."
      }

      # check if the required `returns` is null
      if (is.null(self$`returns`)) {
        invalid_fields["returns"] <- "Non-nullable required field `returns` cannot be null."
      }

      if (self$`returns` < 0) {
        invalid_fields["returns"] <- "Invalid value for `returns`, must be bigger than or equal to 0."
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
# ReturnWarehouseSummary$unlock()
#
## Below is an example to define the print function
# ReturnWarehouseSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReturnWarehouseSummary$lock()

