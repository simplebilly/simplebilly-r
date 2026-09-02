#' Create a new ProductStock
#'
#' @description
#' ProductStock Class
#'
#' @docType class
#' @title ProductStock
#' @description ProductStock Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field product_id  character
#' @field sku  character
#' @field stock_quantity  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProductStock <- R6::R6Class(
  "ProductStock",
  public = list(
    `name` = NULL,
    `product_id` = NULL,
    `sku` = NULL,
    `stock_quantity` = NULL,

    #' @description
    #' Initialize a new ProductStock class.
    #'
    #' @param name name
    #' @param product_id product_id
    #' @param sku sku
    #' @param stock_quantity stock_quantity
    #' @param ... Other optional arguments.
    initialize = function(`name`, `product_id`, `sku`, `stock_quantity` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`product_id`)) {
        if (!(is.character(`product_id`) && length(`product_id`) == 1)) {
          stop(paste("Error! Invalid data for `product_id`. Must be a string:", `product_id`))
        }
        self$`product_id` <- `product_id`
      }
      if (!missing(`sku`)) {
        if (!(is.character(`sku`) && length(`sku`) == 1)) {
          stop(paste("Error! Invalid data for `sku`. Must be a string:", `sku`))
        }
        self$`sku` <- `sku`
      }
      if (!is.null(`stock_quantity`)) {
        if (!(is.numeric(`stock_quantity`) && length(`stock_quantity`) == 1)) {
          stop(paste("Error! Invalid data for `stock_quantity`. Must be an integer:", `stock_quantity`))
        }
        self$`stock_quantity` <- `stock_quantity`
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
    #' @return ProductStock as a base R list.
    #' @examples
    #' # convert array of ProductStock (x) to a data frame
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
    #' Convert ProductStock to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProductStockObject <- list()
      if (!is.null(self$`name`)) {
        ProductStockObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`product_id`)) {
        ProductStockObject[["product_id"]] <-
          self$`product_id`
      }
      if (!is.null(self$`sku`)) {
        ProductStockObject[["sku"]] <-
          self$`sku`
      }
      if (!is.null(self$`stock_quantity`)) {
        ProductStockObject[["stock_quantity"]] <-
          self$`stock_quantity`
      }
      return(ProductStockObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductStock
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductStock
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`product_id`)) {
        self$`product_id` <- this_object$`product_id`
      }
      if (!is.null(this_object$`sku`)) {
        self$`sku` <- this_object$`sku`
      }
      if (!is.null(this_object$`stock_quantity`)) {
        self$`stock_quantity` <- this_object$`stock_quantity`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProductStock in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductStock
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductStock
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`product_id` <- this_object$`product_id`
      self$`sku` <- this_object$`sku`
      self$`stock_quantity` <- this_object$`stock_quantity`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProductStock and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductStock: the required field `name` is missing."))
      }
      # check the required field `product_id`
      if (!is.null(input_json$`product_id`)) {
        if (!(is.character(input_json$`product_id`) && length(input_json$`product_id`) == 1)) {
          stop(paste("Error! Invalid data for `product_id`. Must be a string:", input_json$`product_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductStock: the required field `product_id` is missing."))
      }
      # check the required field `sku`
      if (!is.null(input_json$`sku`)) {
        if (!(is.character(input_json$`sku`) && length(input_json$`sku`) == 1)) {
          stop(paste("Error! Invalid data for `sku`. Must be a string:", input_json$`sku`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductStock: the required field `sku` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProductStock
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `product_id` is null
      if (is.null(self$`product_id`)) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `product_id` is null
      if (is.null(self$`product_id`)) {
        invalid_fields["product_id"] <- "Non-nullable required field `product_id` cannot be null."
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
# ProductStock$unlock()
#
## Below is an example to define the print function
# ProductStock$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProductStock$lock()

