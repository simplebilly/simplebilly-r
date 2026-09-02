#' Create a new ProductionOrderCosting
#'
#' @description
#' Actual-costing (Nachkalkulation) report for a production order.
#'
#' @docType class
#' @title ProductionOrderCosting
#' @description ProductionOrderCosting Class
#' @format An \code{R6Class} generator object
#' @field costPerUnit material_cost_total ÷ quantity. character
#' @field costSource \"actual\" when costed from stock-movement consumption, else \"planned\". character
#' @field lines  list(\link{CostingLine})
#' @field marginPerUnit sale_price − cost_per_unit. character [optional]
#' @field marginPercent margin_per_unit ÷ cost_per_unit as a percentage. character [optional]
#' @field materialCostTotal Total material cost for the whole order. character
#' @field orderNumber  character
#' @field productionOrderId  character
#' @field quantity  integer
#' @field salePrice Finished product's sale price per unit (used to compute margin). character [optional]
#' @field status  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProductionOrderCosting <- R6::R6Class(
  "ProductionOrderCosting",
  public = list(
    `costPerUnit` = NULL,
    `costSource` = NULL,
    `lines` = NULL,
    `marginPerUnit` = NULL,
    `marginPercent` = NULL,
    `materialCostTotal` = NULL,
    `orderNumber` = NULL,
    `productionOrderId` = NULL,
    `quantity` = NULL,
    `salePrice` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new ProductionOrderCosting class.
    #'
    #' @param costPerUnit material_cost_total ÷ quantity.
    #' @param costSource \"actual\" when costed from stock-movement consumption, else \"planned\".
    #' @param lines lines
    #' @param materialCostTotal Total material cost for the whole order.
    #' @param orderNumber orderNumber
    #' @param productionOrderId productionOrderId
    #' @param quantity quantity
    #' @param status status
    #' @param marginPerUnit sale_price − cost_per_unit.
    #' @param marginPercent margin_per_unit ÷ cost_per_unit as a percentage.
    #' @param salePrice Finished product's sale price per unit (used to compute margin).
    #' @param ... Other optional arguments.
    initialize = function(`costPerUnit`, `costSource`, `lines`, `materialCostTotal`, `orderNumber`, `productionOrderId`, `quantity`, `status`, `marginPerUnit` = NULL, `marginPercent` = NULL, `salePrice` = NULL, ...) {
      if (!missing(`costPerUnit`)) {
        if (!(is.character(`costPerUnit`) && length(`costPerUnit`) == 1)) {
          stop(paste("Error! Invalid data for `costPerUnit`. Must be a string:", `costPerUnit`))
        }
        self$`costPerUnit` <- `costPerUnit`
      }
      if (!missing(`costSource`)) {
        if (!(is.character(`costSource`) && length(`costSource`) == 1)) {
          stop(paste("Error! Invalid data for `costSource`. Must be a string:", `costSource`))
        }
        self$`costSource` <- `costSource`
      }
      if (!missing(`lines`)) {
        stopifnot(is.vector(`lines`), length(`lines`) != 0)
        sapply(`lines`, function(x) stopifnot(R6::is.R6(x)))
        self$`lines` <- `lines`
      }
      if (!missing(`materialCostTotal`)) {
        if (!(is.character(`materialCostTotal`) && length(`materialCostTotal`) == 1)) {
          stop(paste("Error! Invalid data for `materialCostTotal`. Must be a string:", `materialCostTotal`))
        }
        self$`materialCostTotal` <- `materialCostTotal`
      }
      if (!missing(`orderNumber`)) {
        if (!(is.character(`orderNumber`) && length(`orderNumber`) == 1)) {
          stop(paste("Error! Invalid data for `orderNumber`. Must be a string:", `orderNumber`))
        }
        self$`orderNumber` <- `orderNumber`
      }
      if (!missing(`productionOrderId`)) {
        if (!(is.character(`productionOrderId`) && length(`productionOrderId`) == 1)) {
          stop(paste("Error! Invalid data for `productionOrderId`. Must be a string:", `productionOrderId`))
        }
        self$`productionOrderId` <- `productionOrderId`
      }
      if (!missing(`quantity`)) {
        if (!(is.numeric(`quantity`) && length(`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", `quantity`))
        }
        self$`quantity` <- `quantity`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`marginPerUnit`)) {
        if (!(is.character(`marginPerUnit`) && length(`marginPerUnit`) == 1)) {
          stop(paste("Error! Invalid data for `marginPerUnit`. Must be a string:", `marginPerUnit`))
        }
        self$`marginPerUnit` <- `marginPerUnit`
      }
      if (!is.null(`marginPercent`)) {
        if (!(is.character(`marginPercent`) && length(`marginPercent`) == 1)) {
          stop(paste("Error! Invalid data for `marginPercent`. Must be a string:", `marginPercent`))
        }
        self$`marginPercent` <- `marginPercent`
      }
      if (!is.null(`salePrice`)) {
        if (!(is.character(`salePrice`) && length(`salePrice`) == 1)) {
          stop(paste("Error! Invalid data for `salePrice`. Must be a string:", `salePrice`))
        }
        self$`salePrice` <- `salePrice`
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
    #' @return ProductionOrderCosting as a base R list.
    #' @examples
    #' # convert array of ProductionOrderCosting (x) to a data frame
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
    #' Convert ProductionOrderCosting to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProductionOrderCostingObject <- list()
      if (!is.null(self$`costPerUnit`)) {
        ProductionOrderCostingObject[["costPerUnit"]] <-
          self$`costPerUnit`
      }
      if (!is.null(self$`costSource`)) {
        ProductionOrderCostingObject[["costSource"]] <-
          self$`costSource`
      }
      if (!is.null(self$`lines`)) {
        ProductionOrderCostingObject[["lines"]] <-
          self$extractSimpleType(self$`lines`)
      }
      if (!is.null(self$`marginPerUnit`)) {
        ProductionOrderCostingObject[["marginPerUnit"]] <-
          self$`marginPerUnit`
      }
      if (!is.null(self$`marginPercent`)) {
        ProductionOrderCostingObject[["marginPercent"]] <-
          self$`marginPercent`
      }
      if (!is.null(self$`materialCostTotal`)) {
        ProductionOrderCostingObject[["materialCostTotal"]] <-
          self$`materialCostTotal`
      }
      if (!is.null(self$`orderNumber`)) {
        ProductionOrderCostingObject[["orderNumber"]] <-
          self$`orderNumber`
      }
      if (!is.null(self$`productionOrderId`)) {
        ProductionOrderCostingObject[["productionOrderId"]] <-
          self$`productionOrderId`
      }
      if (!is.null(self$`quantity`)) {
        ProductionOrderCostingObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`salePrice`)) {
        ProductionOrderCostingObject[["salePrice"]] <-
          self$`salePrice`
      }
      if (!is.null(self$`status`)) {
        ProductionOrderCostingObject[["status"]] <-
          self$`status`
      }
      return(ProductionOrderCostingObject)
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
    #' Deserialize JSON string into an instance of ProductionOrderCosting
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductionOrderCosting
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`costPerUnit`)) {
        self$`costPerUnit` <- this_object$`costPerUnit`
      }
      if (!is.null(this_object$`costSource`)) {
        self$`costSource` <- this_object$`costSource`
      }
      if (!is.null(this_object$`lines`)) {
        self$`lines` <- ApiClient$new()$deserializeObj(this_object$`lines`, "array[CostingLine]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`marginPerUnit`)) {
        self$`marginPerUnit` <- this_object$`marginPerUnit`
      }
      if (!is.null(this_object$`marginPercent`)) {
        self$`marginPercent` <- this_object$`marginPercent`
      }
      if (!is.null(this_object$`materialCostTotal`)) {
        self$`materialCostTotal` <- this_object$`materialCostTotal`
      }
      if (!is.null(this_object$`orderNumber`)) {
        self$`orderNumber` <- this_object$`orderNumber`
      }
      if (!is.null(this_object$`productionOrderId`)) {
        self$`productionOrderId` <- this_object$`productionOrderId`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      if (!is.null(this_object$`salePrice`)) {
        self$`salePrice` <- this_object$`salePrice`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProductionOrderCosting in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductionOrderCosting
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductionOrderCosting
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`costPerUnit` <- this_object$`costPerUnit`
      self$`costSource` <- this_object$`costSource`
      self$`lines` <- ApiClient$new()$deserializeObj(this_object$`lines`, "array[CostingLine]", loadNamespace("openapi"))
      self$`marginPerUnit` <- this_object$`marginPerUnit`
      self$`marginPercent` <- this_object$`marginPercent`
      self$`materialCostTotal` <- this_object$`materialCostTotal`
      self$`orderNumber` <- this_object$`orderNumber`
      self$`productionOrderId` <- this_object$`productionOrderId`
      self$`quantity` <- this_object$`quantity`
      self$`salePrice` <- this_object$`salePrice`
      self$`status` <- this_object$`status`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProductionOrderCosting and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `costPerUnit`
      if (!is.null(input_json$`costPerUnit`)) {
        if (!(is.character(input_json$`costPerUnit`) && length(input_json$`costPerUnit`) == 1)) {
          stop(paste("Error! Invalid data for `costPerUnit`. Must be a string:", input_json$`costPerUnit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductionOrderCosting: the required field `costPerUnit` is missing."))
      }
      # check the required field `costSource`
      if (!is.null(input_json$`costSource`)) {
        if (!(is.character(input_json$`costSource`) && length(input_json$`costSource`) == 1)) {
          stop(paste("Error! Invalid data for `costSource`. Must be a string:", input_json$`costSource`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductionOrderCosting: the required field `costSource` is missing."))
      }
      # check the required field `lines`
      if (!is.null(input_json$`lines`)) {
        stopifnot(is.vector(input_json$`lines`), length(input_json$`lines`) != 0)
        tmp <- sapply(input_json$`lines`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductionOrderCosting: the required field `lines` is missing."))
      }
      # check the required field `materialCostTotal`
      if (!is.null(input_json$`materialCostTotal`)) {
        if (!(is.character(input_json$`materialCostTotal`) && length(input_json$`materialCostTotal`) == 1)) {
          stop(paste("Error! Invalid data for `materialCostTotal`. Must be a string:", input_json$`materialCostTotal`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductionOrderCosting: the required field `materialCostTotal` is missing."))
      }
      # check the required field `orderNumber`
      if (!is.null(input_json$`orderNumber`)) {
        if (!(is.character(input_json$`orderNumber`) && length(input_json$`orderNumber`) == 1)) {
          stop(paste("Error! Invalid data for `orderNumber`. Must be a string:", input_json$`orderNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductionOrderCosting: the required field `orderNumber` is missing."))
      }
      # check the required field `productionOrderId`
      if (!is.null(input_json$`productionOrderId`)) {
        if (!(is.character(input_json$`productionOrderId`) && length(input_json$`productionOrderId`) == 1)) {
          stop(paste("Error! Invalid data for `productionOrderId`. Must be a string:", input_json$`productionOrderId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductionOrderCosting: the required field `productionOrderId` is missing."))
      }
      # check the required field `quantity`
      if (!is.null(input_json$`quantity`)) {
        if (!(is.numeric(input_json$`quantity`) && length(input_json$`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", input_json$`quantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductionOrderCosting: the required field `quantity` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductionOrderCosting: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProductionOrderCosting
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `costPerUnit` is null
      if (is.null(self$`costPerUnit`)) {
        return(FALSE)
      }

      # check if the required `costSource` is null
      if (is.null(self$`costSource`)) {
        return(FALSE)
      }

      # check if the required `lines` is null
      if (is.null(self$`lines`)) {
        return(FALSE)
      }

      # check if the required `materialCostTotal` is null
      if (is.null(self$`materialCostTotal`)) {
        return(FALSE)
      }

      # check if the required `orderNumber` is null
      if (is.null(self$`orderNumber`)) {
        return(FALSE)
      }

      # check if the required `productionOrderId` is null
      if (is.null(self$`productionOrderId`)) {
        return(FALSE)
      }

      # check if the required `quantity` is null
      if (is.null(self$`quantity`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
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
      # check if the required `costPerUnit` is null
      if (is.null(self$`costPerUnit`)) {
        invalid_fields["costPerUnit"] <- "Non-nullable required field `costPerUnit` cannot be null."
      }

      # check if the required `costSource` is null
      if (is.null(self$`costSource`)) {
        invalid_fields["costSource"] <- "Non-nullable required field `costSource` cannot be null."
      }

      # check if the required `lines` is null
      if (is.null(self$`lines`)) {
        invalid_fields["lines"] <- "Non-nullable required field `lines` cannot be null."
      }

      # check if the required `materialCostTotal` is null
      if (is.null(self$`materialCostTotal`)) {
        invalid_fields["materialCostTotal"] <- "Non-nullable required field `materialCostTotal` cannot be null."
      }

      # check if the required `orderNumber` is null
      if (is.null(self$`orderNumber`)) {
        invalid_fields["orderNumber"] <- "Non-nullable required field `orderNumber` cannot be null."
      }

      # check if the required `productionOrderId` is null
      if (is.null(self$`productionOrderId`)) {
        invalid_fields["productionOrderId"] <- "Non-nullable required field `productionOrderId` cannot be null."
      }

      # check if the required `quantity` is null
      if (is.null(self$`quantity`)) {
        invalid_fields["quantity"] <- "Non-nullable required field `quantity` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# ProductionOrderCosting$unlock()
#
## Below is an example to define the print function
# ProductionOrderCosting$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProductionOrderCosting$lock()

