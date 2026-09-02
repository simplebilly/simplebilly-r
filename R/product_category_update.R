#' Create a new ProductCategoryUpdate
#'
#' @description
#' ProductCategoryUpdate Class
#'
#' @docType class
#' @title ProductCategoryUpdate
#' @description ProductCategoryUpdate Class
#' @format An \code{R6Class} generator object
#' @field description  character [optional]
#' @field name  character [optional]
#' @field parentCategoryId References the category entity. character [optional]
#' @field sortOrder  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProductCategoryUpdate <- R6::R6Class(
  "ProductCategoryUpdate",
  public = list(
    `description` = NULL,
    `name` = NULL,
    `parentCategoryId` = NULL,
    `sortOrder` = NULL,

    #' @description
    #' Initialize a new ProductCategoryUpdate class.
    #'
    #' @param description description
    #' @param name name
    #' @param parentCategoryId References the category entity.
    #' @param sortOrder sortOrder
    #' @param ... Other optional arguments.
    initialize = function(`description` = NULL, `name` = NULL, `parentCategoryId` = NULL, `sortOrder` = NULL, ...) {
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`parentCategoryId`)) {
        if (!(is.character(`parentCategoryId`) && length(`parentCategoryId`) == 1)) {
          stop(paste("Error! Invalid data for `parentCategoryId`. Must be a string:", `parentCategoryId`))
        }
        self$`parentCategoryId` <- `parentCategoryId`
      }
      if (!is.null(`sortOrder`)) {
        if (!(is.numeric(`sortOrder`) && length(`sortOrder`) == 1)) {
          stop(paste("Error! Invalid data for `sortOrder`. Must be an integer:", `sortOrder`))
        }
        self$`sortOrder` <- `sortOrder`
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
    #' @return ProductCategoryUpdate as a base R list.
    #' @examples
    #' # convert array of ProductCategoryUpdate (x) to a data frame
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
    #' Convert ProductCategoryUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProductCategoryUpdateObject <- list()
      if (!is.null(self$`description`)) {
        ProductCategoryUpdateObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`name`)) {
        ProductCategoryUpdateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`parentCategoryId`)) {
        ProductCategoryUpdateObject[["parentCategoryId"]] <-
          self$`parentCategoryId`
      }
      if (!is.null(self$`sortOrder`)) {
        ProductCategoryUpdateObject[["sortOrder"]] <-
          self$`sortOrder`
      }
      return(ProductCategoryUpdateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductCategoryUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductCategoryUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`parentCategoryId`)) {
        self$`parentCategoryId` <- this_object$`parentCategoryId`
      }
      if (!is.null(this_object$`sortOrder`)) {
        self$`sortOrder` <- this_object$`sortOrder`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProductCategoryUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductCategoryUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductCategoryUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`name` <- this_object$`name`
      self$`parentCategoryId` <- this_object$`parentCategoryId`
      self$`sortOrder` <- this_object$`sortOrder`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProductCategoryUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProductCategoryUpdate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# ProductCategoryUpdate$unlock()
#
## Below is an example to define the print function
# ProductCategoryUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProductCategoryUpdate$lock()

