#' Create a new ProductAttribute
#'
#' @description
#' ProductAttribute Class
#'
#' @docType class
#' @title ProductAttribute
#' @description ProductAttribute Class
#' @format An \code{R6Class} generator object
#' @field isFilterable Whether this attribute participates in the shop's faceted filters. character [optional]
#' @field name Attribute name, e.g. `Material`, `Farbe`, `Gewicht`. character
#' @field position Ordering position within the product's attribute list. integer [optional]
#' @field productId The product this attribute belongs to. References the product entity. character
#' @field unit Optional unit of measure for numeric attributes, e.g. `g`, `cm`. character [optional]
#' @field value Attribute value, e.g. `Baumwolle`, `Rot`, `180g`. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProductAttribute <- R6::R6Class(
  "ProductAttribute",
  public = list(
    `isFilterable` = NULL,
    `name` = NULL,
    `position` = NULL,
    `productId` = NULL,
    `unit` = NULL,
    `value` = NULL,

    #' @description
    #' Initialize a new ProductAttribute class.
    #'
    #' @param name Attribute name, e.g. `Material`, `Farbe`, `Gewicht`.
    #' @param productId The product this attribute belongs to. References the product entity.
    #' @param value Attribute value, e.g. `Baumwolle`, `Rot`, `180g`.
    #' @param isFilterable Whether this attribute participates in the shop's faceted filters.
    #' @param position Ordering position within the product's attribute list.
    #' @param unit Optional unit of measure for numeric attributes, e.g. `g`, `cm`.
    #' @param ... Other optional arguments.
    initialize = function(`name`, `productId`, `value`, `isFilterable` = NULL, `position` = NULL, `unit` = NULL, ...) {
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
      if (!missing(`value`)) {
        if (!(is.character(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", `value`))
        }
        self$`value` <- `value`
      }
      if (!is.null(`isFilterable`)) {
        if (!(is.logical(`isFilterable`) && length(`isFilterable`) == 1)) {
          stop(paste("Error! Invalid data for `isFilterable`. Must be a boolean:", `isFilterable`))
        }
        self$`isFilterable` <- `isFilterable`
      }
      if (!is.null(`position`)) {
        if (!(is.numeric(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", `position`))
        }
        self$`position` <- `position`
      }
      if (!is.null(`unit`)) {
        if (!(is.character(`unit`) && length(`unit`) == 1)) {
          stop(paste("Error! Invalid data for `unit`. Must be a string:", `unit`))
        }
        self$`unit` <- `unit`
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
    #' @return ProductAttribute as a base R list.
    #' @examples
    #' # convert array of ProductAttribute (x) to a data frame
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
    #' Convert ProductAttribute to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProductAttributeObject <- list()
      if (!is.null(self$`isFilterable`)) {
        ProductAttributeObject[["isFilterable"]] <-
          self$`isFilterable`
      }
      if (!is.null(self$`name`)) {
        ProductAttributeObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`position`)) {
        ProductAttributeObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`productId`)) {
        ProductAttributeObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`unit`)) {
        ProductAttributeObject[["unit"]] <-
          self$`unit`
      }
      if (!is.null(self$`value`)) {
        ProductAttributeObject[["value"]] <-
          self$`value`
      }
      return(ProductAttributeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductAttribute
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductAttribute
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`isFilterable`)) {
        self$`isFilterable` <- this_object$`isFilterable`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`unit`)) {
        self$`unit` <- this_object$`unit`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProductAttribute in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductAttribute
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductAttribute
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`isFilterable` <- this_object$`isFilterable`
      self$`name` <- this_object$`name`
      self$`position` <- this_object$`position`
      self$`productId` <- this_object$`productId`
      self$`unit` <- this_object$`unit`
      self$`value` <- this_object$`value`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProductAttribute and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ProductAttribute: the required field `name` is missing."))
      }
      # check the required field `productId`
      if (!is.null(input_json$`productId`)) {
        if (!(is.character(input_json$`productId`) && length(input_json$`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", input_json$`productId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductAttribute: the required field `productId` is missing."))
      }
      # check the required field `value`
      if (!is.null(input_json$`value`)) {
        if (!(is.character(input_json$`value`) && length(input_json$`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", input_json$`value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductAttribute: the required field `value` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProductAttribute
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

      if (nchar(self$`name`) < 1) {
        return(FALSE)
      }

      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        return(FALSE)
      }

      # check if the required `value` is null
      if (is.null(self$`value`)) {
        return(FALSE)
      }

      if (nchar(self$`value`) < 1) {
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

      if (nchar(self$`name`) < 1) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 1."
      }

      # check if the required `productId` is null
      if (is.null(self$`productId`)) {
        invalid_fields["productId"] <- "Non-nullable required field `productId` cannot be null."
      }

      # check if the required `value` is null
      if (is.null(self$`value`)) {
        invalid_fields["value"] <- "Non-nullable required field `value` cannot be null."
      }

      if (nchar(self$`value`) < 1) {
        invalid_fields["value"] <- "Invalid length for `value`, must be bigger than or equal to 1."
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
# ProductAttribute$unlock()
#
## Below is an example to define the print function
# ProductAttribute$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProductAttribute$lock()

