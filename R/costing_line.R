#' Create a new CostingLine
#'
#' @description
#' A single costing line: material cost for one BOM component.
#'
#' @docType class
#' @title CostingLine
#' @description CostingLine Class
#' @format An \code{R6Class} generator object
#' @field lineCost total_quantity × unit_purchase_price (0 when price unknown). character
#' @field name  character
#' @field productId  character
#' @field quantityPerUnit Component quantity required per finished unit. integer
#' @field sku  character
#' @field totalQuantity Total component quantity consumed by this order. integer
#' @field unitPurchasePrice  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CostingLine <- R6::R6Class(
  "CostingLine",
  public = list(
    `lineCost` = NULL,
    `name` = NULL,
    `productId` = NULL,
    `quantityPerUnit` = NULL,
    `sku` = NULL,
    `totalQuantity` = NULL,
    `unitPurchasePrice` = NULL,

    #' @description
    #' Initialize a new CostingLine class.
    #'
    #' @param lineCost total_quantity × unit_purchase_price (0 when price unknown).
    #' @param name name
    #' @param productId productId
    #' @param quantityPerUnit Component quantity required per finished unit.
    #' @param sku sku
    #' @param totalQuantity Total component quantity consumed by this order.
    #' @param unitPurchasePrice unitPurchasePrice
    #' @param ... Other optional arguments.
    initialize = function(`lineCost`, `name`, `productId`, `quantityPerUnit`, `sku`, `totalQuantity`, `unitPurchasePrice` = NULL, ...) {
      if (!missing(`lineCost`)) {
        if (!(is.character(`lineCost`) && length(`lineCost`) == 1)) {
          stop(paste("Error! Invalid data for `lineCost`. Must be a string:", `lineCost`))
        }
        self$`lineCost` <- `lineCost`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`productId`)) {
        if (!(is.character(`productId`) && length(`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", `productId`))
        }
        self$`productId` <- `productId`
      }
      if (!missing(`quantityPerUnit`)) {
        if (!(is.numeric(`quantityPerUnit`) && length(`quantityPerUnit`) == 1)) {
          stop(paste("Error! Invalid data for `quantityPerUnit`. Must be an integer:", `quantityPerUnit`))
        }
        self$`quantityPerUnit` <- `quantityPerUnit`
      }
      if (!missing(`sku`)) {
        if (!(is.character(`sku`) && length(`sku`) == 1)) {
          stop(paste("Error! Invalid data for `sku`. Must be a string:", `sku`))
        }
        self$`sku` <- `sku`
      }
      if (!missing(`totalQuantity`)) {
        if (!(is.numeric(`totalQuantity`) && length(`totalQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `totalQuantity`. Must be an integer:", `totalQuantity`))
        }
        self$`totalQuantity` <- `totalQuantity`
      }
      if (!is.null(`unitPurchasePrice`)) {
        if (!(is.character(`unitPurchasePrice`) && length(`unitPurchasePrice`) == 1)) {
          stop(paste("Error! Invalid data for `unitPurchasePrice`. Must be a string:", `unitPurchasePrice`))
        }
        self$`unitPurchasePrice` <- `unitPurchasePrice`
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
    #' @return CostingLine as a base R list.
    #' @examples
    #' # convert array of CostingLine (x) to a data frame
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
    #' Convert CostingLine to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CostingLineObject <- list()
      if (!is.null(self$`lineCost`)) {
        CostingLineObject[["lineCost"]] <-
          self$`lineCost`
      }
      if (!is.null(self$`name`)) {
        CostingLineObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`productId`)) {
        CostingLineObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`quantityPerUnit`)) {
        CostingLineObject[["quantityPerUnit"]] <-
          self$`quantityPerUnit`
      }
      if (!is.null(self$`sku`)) {
        CostingLineObject[["sku"]] <-
          self$`sku`
      }
      if (!is.null(self$`totalQuantity`)) {
        CostingLineObject[["totalQuantity"]] <-
          self$`totalQuantity`
      }
      if (!is.null(self$`unitPurchasePrice`)) {
        CostingLineObject[["unitPurchasePrice"]] <-
          self$`unitPurchasePrice`
      }
      return(CostingLineObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CostingLine
    #'
    #' @param input_json the JSON input
    #' @return the instance of CostingLine
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`lineCost`)) {
        self$`lineCost` <- this_object$`lineCost`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`quantityPerUnit`)) {
        self$`quantityPerUnit` <- this_object$`quantityPerUnit`
      }
      if (!is.null(this_object$`sku`)) {
        self$`sku` <- this_object$`sku`
      }
      if (!is.null(this_object$`totalQuantity`)) {
        self$`totalQuantity` <- this_object$`totalQuantity`
      }
      if (!is.null(this_object$`unitPurchasePrice`)) {
        self$`unitPurchasePrice` <- this_object$`unitPurchasePrice`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CostingLine in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CostingLine
    #'
    #' @param input_json the JSON input
    #' @return the instance of CostingLine
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`lineCost` <- this_object$`lineCost`
      self$`name` <- this_object$`name`
      self$`productId` <- this_object$`productId`
      self$`quantityPerUnit` <- this_object$`quantityPerUnit`
      self$`sku` <- this_object$`sku`
      self$`totalQuantity` <- this_object$`totalQuantity`
      self$`unitPurchasePrice` <- this_object$`unitPurchasePrice`
      self
    },

    #' @description
    #' Validate JSON input with respect to CostingLine and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `lineCost`
      if (!is.null(input_json$`lineCost`)) {
        if (!(is.character(input_json$`lineCost`) && length(input_json$`lineCost`) == 1)) {
          stop(paste("Error! Invalid data for `lineCost`. Must be a string:", input_json$`lineCost`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CostingLine: the required field `lineCost` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CostingLine: the required field `name` is missing."))
      }
      # check the required field `productId`
      if (!is.null(input_json$`productId`)) {
        if (!(is.character(input_json$`productId`) && length(input_json$`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", input_json$`productId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CostingLine: the required field `productId` is missing."))
      }
      # check the required field `quantityPerUnit`
      if (!is.null(input_json$`quantityPerUnit`)) {
        if (!(is.numeric(input_json$`quantityPerUnit`) && length(input_json$`quantityPerUnit`) == 1)) {
          stop(paste("Error! Invalid data for `quantityPerUnit`. Must be an integer:", input_json$`quantityPerUnit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CostingLine: the required field `quantityPerUnit` is missing."))
      }
      # check the required field `sku`
      if (!is.null(input_json$`sku`)) {
        if (!(is.character(input_json$`sku`) && length(input_json$`sku`) == 1)) {
          stop(paste("Error! Invalid data for `sku`. Must be a string:", input_json$`sku`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CostingLine: the required field `sku` is missing."))
      }
      # check the required field `totalQuantity`
      if (!is.null(input_json$`totalQuantity`)) {
        if (!(is.numeric(input_json$`totalQuantity`) && length(input_json$`totalQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `totalQuantity`. Must be an integer:", input_json$`totalQuantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CostingLine: the required field `totalQuantity` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CostingLine
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `lineCost` is null
      if (is.null(self$`lineCost`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        return(FALSE)
      }

      # check if the required `quantityPerUnit` is null
      if (is.null(self$`quantityPerUnit`)) {
        return(FALSE)
      }

      # check if the required `sku` is null
      if (is.null(self$`sku`)) {
        return(FALSE)
      }

      # check if the required `totalQuantity` is null
      if (is.null(self$`totalQuantity`)) {
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
      # check if the required `lineCost` is null
      if (is.null(self$`lineCost`)) {
        invalid_fields["lineCost"] <- "Non-nullable required field `lineCost` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        invalid_fields["productId"] <- "Non-nullable required field `productId` cannot be null."
      }

      # check if the required `quantityPerUnit` is null
      if (is.null(self$`quantityPerUnit`)) {
        invalid_fields["quantityPerUnit"] <- "Non-nullable required field `quantityPerUnit` cannot be null."
      }

      # check if the required `sku` is null
      if (is.null(self$`sku`)) {
        invalid_fields["sku"] <- "Non-nullable required field `sku` cannot be null."
      }

      # check if the required `totalQuantity` is null
      if (is.null(self$`totalQuantity`)) {
        invalid_fields["totalQuantity"] <- "Non-nullable required field `totalQuantity` cannot be null."
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
# CostingLine$unlock()
#
## Below is an example to define the print function
# CostingLine$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CostingLine$lock()

