#' Create a new ProductionOrder
#'
#' @description
#' ProductionOrder Class
#'
#' @docType class
#' @title ProductionOrder
#' @description ProductionOrder Class
#' @format An \code{R6Class} generator object
#' @field bomId References the BOM entity. character [optional]
#' @field components JSON snapshot of the BOM components at creation time. \link{AnyType} [optional]
#' @field endDate  character [optional]
#' @field notes  character [optional]
#' @field orderNumber  character
#' @field productId The finished product to manufacture. References the product entity. character
#' @field quantity Quantity of finished product to produce. integer
#' @field sourceWarehouseId Warehouse components are consumed from. References the warehouse entity. character [optional]
#' @field startDate  character [optional]
#' @field status One of: planned | in_production | completed | cancelled \link{ProductionOrderStatus} [optional]
#' @field targetWarehouseId Warehouse the finished product is added to. References the warehouse entity. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProductionOrder <- R6::R6Class(
  "ProductionOrder",
  public = list(
    `bomId` = NULL,
    `components` = NULL,
    `endDate` = NULL,
    `notes` = NULL,
    `orderNumber` = NULL,
    `productId` = NULL,
    `quantity` = NULL,
    `sourceWarehouseId` = NULL,
    `startDate` = NULL,
    `status` = NULL,
    `targetWarehouseId` = NULL,

    #' @description
    #' Initialize a new ProductionOrder class.
    #'
    #' @param orderNumber orderNumber
    #' @param productId The finished product to manufacture. References the product entity.
    #' @param quantity Quantity of finished product to produce.
    #' @param bomId References the BOM entity.
    #' @param components JSON snapshot of the BOM components at creation time.
    #' @param endDate endDate
    #' @param notes notes
    #' @param sourceWarehouseId Warehouse components are consumed from. References the warehouse entity.
    #' @param startDate startDate
    #' @param status One of: planned | in_production | completed | cancelled
    #' @param targetWarehouseId Warehouse the finished product is added to. References the warehouse entity.
    #' @param ... Other optional arguments.
    initialize = function(`orderNumber`, `productId`, `quantity`, `bomId` = NULL, `components` = NULL, `endDate` = NULL, `notes` = NULL, `sourceWarehouseId` = NULL, `startDate` = NULL, `status` = NULL, `targetWarehouseId` = NULL, ...) {
      if (!missing(`orderNumber`)) {
        if (!(is.character(`orderNumber`) && length(`orderNumber`) == 1)) {
          stop(paste("Error! Invalid data for `orderNumber`. Must be a string:", `orderNumber`))
        }
        self$`orderNumber` <- `orderNumber`
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
      if (!is.null(`bomId`)) {
        if (!(is.character(`bomId`) && length(`bomId`) == 1)) {
          stop(paste("Error! Invalid data for `bomId`. Must be a string:", `bomId`))
        }
        self$`bomId` <- `bomId`
      }
      if (!is.null(`components`)) {
        stopifnot(R6::is.R6(`components`))
        self$`components` <- `components`
      }
      if (!is.null(`endDate`)) {
        if (!is.character(`endDate`)) {
          stop(paste("Error! Invalid data for `endDate`. Must be a string:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`sourceWarehouseId`)) {
        if (!(is.character(`sourceWarehouseId`) && length(`sourceWarehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `sourceWarehouseId`. Must be a string:", `sourceWarehouseId`))
        }
        self$`sourceWarehouseId` <- `sourceWarehouseId`
      }
      if (!is.null(`startDate`)) {
        if (!is.character(`startDate`)) {
          stop(paste("Error! Invalid data for `startDate`. Must be a string:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`targetWarehouseId`)) {
        if (!(is.character(`targetWarehouseId`) && length(`targetWarehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `targetWarehouseId`. Must be a string:", `targetWarehouseId`))
        }
        self$`targetWarehouseId` <- `targetWarehouseId`
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
    #' @return ProductionOrder as a base R list.
    #' @examples
    #' # convert array of ProductionOrder (x) to a data frame
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
    #' Convert ProductionOrder to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProductionOrderObject <- list()
      if (!is.null(self$`bomId`)) {
        ProductionOrderObject[["bomId"]] <-
          self$`bomId`
      }
      if (!is.null(self$`components`)) {
        ProductionOrderObject[["components"]] <-
          self$extractSimpleType(self$`components`)
      }
      if (!is.null(self$`endDate`)) {
        ProductionOrderObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`notes`)) {
        ProductionOrderObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`orderNumber`)) {
        ProductionOrderObject[["orderNumber"]] <-
          self$`orderNumber`
      }
      if (!is.null(self$`productId`)) {
        ProductionOrderObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`quantity`)) {
        ProductionOrderObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`sourceWarehouseId`)) {
        ProductionOrderObject[["sourceWarehouseId"]] <-
          self$`sourceWarehouseId`
      }
      if (!is.null(self$`startDate`)) {
        ProductionOrderObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`status`)) {
        ProductionOrderObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`targetWarehouseId`)) {
        ProductionOrderObject[["targetWarehouseId"]] <-
          self$`targetWarehouseId`
      }
      return(ProductionOrderObject)
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
    #' Deserialize JSON string into an instance of ProductionOrder
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductionOrder
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bomId`)) {
        self$`bomId` <- this_object$`bomId`
      }
      if (!is.null(this_object$`components`)) {
        `components_object` <- AnyType$new()
        `components_object`$fromJSON(jsonlite::toJSON(this_object$`components`, auto_unbox = TRUE, digits = NA))
        self$`components` <- `components_object`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`orderNumber`)) {
        self$`orderNumber` <- this_object$`orderNumber`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      if (!is.null(this_object$`sourceWarehouseId`)) {
        self$`sourceWarehouseId` <- this_object$`sourceWarehouseId`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- ProductionOrderStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`targetWarehouseId`)) {
        self$`targetWarehouseId` <- this_object$`targetWarehouseId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProductionOrder in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductionOrder
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductionOrder
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bomId` <- this_object$`bomId`
      self$`components` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`components`, auto_unbox = TRUE, digits = NA))
      self$`endDate` <- this_object$`endDate`
      self$`notes` <- this_object$`notes`
      self$`orderNumber` <- this_object$`orderNumber`
      self$`productId` <- this_object$`productId`
      self$`quantity` <- this_object$`quantity`
      self$`sourceWarehouseId` <- this_object$`sourceWarehouseId`
      self$`startDate` <- this_object$`startDate`
      self$`status` <- ProductionOrderStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`targetWarehouseId` <- this_object$`targetWarehouseId`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProductionOrder and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `orderNumber`
      if (!is.null(input_json$`orderNumber`)) {
        if (!(is.character(input_json$`orderNumber`) && length(input_json$`orderNumber`) == 1)) {
          stop(paste("Error! Invalid data for `orderNumber`. Must be a string:", input_json$`orderNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductionOrder: the required field `orderNumber` is missing."))
      }
      # check the required field `productId`
      if (!is.null(input_json$`productId`)) {
        if (!(is.character(input_json$`productId`) && length(input_json$`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", input_json$`productId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductionOrder: the required field `productId` is missing."))
      }
      # check the required field `quantity`
      if (!is.null(input_json$`quantity`)) {
        if (!(is.numeric(input_json$`quantity`) && length(input_json$`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", input_json$`quantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductionOrder: the required field `quantity` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProductionOrder
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `orderNumber` is null
      if (is.null(self$`orderNumber`)) {
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

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `orderNumber` is null
      if (is.null(self$`orderNumber`)) {
        invalid_fields["orderNumber"] <- "Non-nullable required field `orderNumber` cannot be null."
      }

      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        invalid_fields["productId"] <- "Non-nullable required field `productId` cannot be null."
      }

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
# ProductionOrder$unlock()
#
## Below is an example to define the print function
# ProductionOrder$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProductionOrder$lock()

