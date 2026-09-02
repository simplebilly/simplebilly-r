#' Create a new ProductCategory
#'
#' @description
#' ProductCategory Class
#'
#' @docType class
#' @title ProductCategory
#' @description ProductCategory Class
#' @format An \code{R6Class} generator object
#' @field description  character [optional]
#' @field name  character
#' @field parentCategoryId References the category entity. character [optional]
#' @field sortOrder  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProductCategory <- R6::R6Class(
  "ProductCategory",
  public = list(
    `description` = NULL,
    `name` = NULL,
    `parentCategoryId` = NULL,
    `sortOrder` = NULL,

    #' @description
    #' Initialize a new ProductCategory class.
    #'
    #' @param name name
    #' @param sortOrder sortOrder
    #' @param description description
    #' @param parentCategoryId References the category entity.
    #' @param ... Other optional arguments.
    initialize = function(`name`, `sortOrder`, `description` = NULL, `parentCategoryId` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`sortOrder`)) {
        if (!(is.numeric(`sortOrder`) && length(`sortOrder`) == 1)) {
          stop(paste("Error! Invalid data for `sortOrder`. Must be an integer:", `sortOrder`))
        }
        self$`sortOrder` <- `sortOrder`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`parentCategoryId`)) {
        if (!(is.character(`parentCategoryId`) && length(`parentCategoryId`) == 1)) {
          stop(paste("Error! Invalid data for `parentCategoryId`. Must be a string:", `parentCategoryId`))
        }
        self$`parentCategoryId` <- `parentCategoryId`
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
    #' @return ProductCategory as a base R list.
    #' @examples
    #' # convert array of ProductCategory (x) to a data frame
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
    #' Convert ProductCategory to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProductCategoryObject <- list()
      if (!is.null(self$`description`)) {
        ProductCategoryObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`name`)) {
        ProductCategoryObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`parentCategoryId`)) {
        ProductCategoryObject[["parentCategoryId"]] <-
          self$`parentCategoryId`
      }
      if (!is.null(self$`sortOrder`)) {
        ProductCategoryObject[["sortOrder"]] <-
          self$`sortOrder`
      }
      return(ProductCategoryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductCategory
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductCategory
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
    #' @return ProductCategory in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductCategory
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductCategory
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`name` <- this_object$`name`
      self$`parentCategoryId` <- this_object$`parentCategoryId`
      self$`sortOrder` <- this_object$`sortOrder`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProductCategory and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ProductCategory: the required field `name` is missing."))
      }
      # check the required field `sortOrder`
      if (!is.null(input_json$`sortOrder`)) {
        if (!(is.numeric(input_json$`sortOrder`) && length(input_json$`sortOrder`) == 1)) {
          stop(paste("Error! Invalid data for `sortOrder`. Must be an integer:", input_json$`sortOrder`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProductCategory: the required field `sortOrder` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProductCategory
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

      # check if the required `sortOrder` is null
      if (is.null(self$`sortOrder`)) {
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

      # check if the required `sortOrder` is null
      if (is.null(self$`sortOrder`)) {
        invalid_fields["sortOrder"] <- "Non-nullable required field `sortOrder` cannot be null."
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
# ProductCategory$unlock()
#
## Below is an example to define the print function
# ProductCategory$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProductCategory$lock()

