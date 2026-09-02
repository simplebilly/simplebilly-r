#' Create a new ProductAttributeUpdate
#'
#' @description
#' ProductAttributeUpdate Class
#'
#' @docType class
#' @title ProductAttributeUpdate
#' @description ProductAttributeUpdate Class
#' @format An \code{R6Class} generator object
#' @field isFilterable Whether this attribute participates in the shop's faceted filters. character [optional]
#' @field name Attribute name, e.g. `Material`, `Farbe`, `Gewicht`. character [optional]
#' @field position Ordering position within the product's attribute list. integer [optional]
#' @field productId The product this attribute belongs to. References the product entity. character [optional]
#' @field unit Optional unit of measure for numeric attributes, e.g. `g`, `cm`. character [optional]
#' @field value Attribute value, e.g. `Baumwolle`, `Rot`, `180g`. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProductAttributeUpdate <- R6::R6Class(
  "ProductAttributeUpdate",
  public = list(
    `isFilterable` = NULL,
    `name` = NULL,
    `position` = NULL,
    `productId` = NULL,
    `unit` = NULL,
    `value` = NULL,

    #' @description
    #' Initialize a new ProductAttributeUpdate class.
    #'
    #' @param isFilterable Whether this attribute participates in the shop's faceted filters.
    #' @param name Attribute name, e.g. `Material`, `Farbe`, `Gewicht`.
    #' @param position Ordering position within the product's attribute list.
    #' @param productId The product this attribute belongs to. References the product entity.
    #' @param unit Optional unit of measure for numeric attributes, e.g. `g`, `cm`.
    #' @param value Attribute value, e.g. `Baumwolle`, `Rot`, `180g`.
    #' @param ... Other optional arguments.
    initialize = function(`isFilterable` = NULL, `name` = NULL, `position` = NULL, `productId` = NULL, `unit` = NULL, `value` = NULL, ...) {
      if (!is.null(`isFilterable`)) {
        if (!(is.logical(`isFilterable`) && length(`isFilterable`) == 1)) {
          stop(paste("Error! Invalid data for `isFilterable`. Must be a boolean:", `isFilterable`))
        }
        self$`isFilterable` <- `isFilterable`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`position`)) {
        if (!(is.numeric(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", `position`))
        }
        self$`position` <- `position`
      }
      if (!is.null(`productId`)) {
        if (!(is.character(`productId`) && length(`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", `productId`))
        }
        self$`productId` <- `productId`
      }
      if (!is.null(`unit`)) {
        if (!(is.character(`unit`) && length(`unit`) == 1)) {
          stop(paste("Error! Invalid data for `unit`. Must be a string:", `unit`))
        }
        self$`unit` <- `unit`
      }
      if (!is.null(`value`)) {
        if (!(is.character(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", `value`))
        }
        self$`value` <- `value`
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
    #' @return ProductAttributeUpdate as a base R list.
    #' @examples
    #' # convert array of ProductAttributeUpdate (x) to a data frame
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
    #' Convert ProductAttributeUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProductAttributeUpdateObject <- list()
      if (!is.null(self$`isFilterable`)) {
        ProductAttributeUpdateObject[["isFilterable"]] <-
          self$`isFilterable`
      }
      if (!is.null(self$`name`)) {
        ProductAttributeUpdateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`position`)) {
        ProductAttributeUpdateObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`productId`)) {
        ProductAttributeUpdateObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`unit`)) {
        ProductAttributeUpdateObject[["unit"]] <-
          self$`unit`
      }
      if (!is.null(self$`value`)) {
        ProductAttributeUpdateObject[["value"]] <-
          self$`value`
      }
      return(ProductAttributeUpdateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductAttributeUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductAttributeUpdate
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
    #' @return ProductAttributeUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductAttributeUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductAttributeUpdate
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
    #' Validate JSON input with respect to ProductAttributeUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProductAttributeUpdate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`name`) < 1) {
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
      if (nchar(self$`name`) < 1) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 1."
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
# ProductAttributeUpdate$unlock()
#
## Below is an example to define the print function
# ProductAttributeUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProductAttributeUpdate$lock()

