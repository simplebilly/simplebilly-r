#' Create a new BomUpdate
#'
#' @description
#' BomUpdate Class
#'
#' @docType class
#' @title BomUpdate
#' @description BomUpdate Class
#' @format An \code{R6Class} generator object
#' @field components JSON array of `{product_id, name, quantity, unit, scrap_rate}`. \link{AnyType} [optional]
#' @field description  character [optional]
#' @field name  character [optional]
#' @field outputQuantity Output quantity per production run (defaults to 1). integer [optional]
#' @field productId The finished product this BOM produces. References the product entity. character [optional]
#' @field status One of: draft | active | archived \link{BomStatus} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BomUpdate <- R6::R6Class(
  "BomUpdate",
  public = list(
    `components` = NULL,
    `description` = NULL,
    `name` = NULL,
    `outputQuantity` = NULL,
    `productId` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new BomUpdate class.
    #'
    #' @param components JSON array of `{product_id, name, quantity, unit, scrap_rate}`.
    #' @param description description
    #' @param name name
    #' @param outputQuantity Output quantity per production run (defaults to 1).
    #' @param productId The finished product this BOM produces. References the product entity.
    #' @param status One of: draft | active | archived
    #' @param ... Other optional arguments.
    initialize = function(`components` = NULL, `description` = NULL, `name` = NULL, `outputQuantity` = NULL, `productId` = NULL, `status` = NULL, ...) {
      if (!is.null(`components`)) {
        stopifnot(R6::is.R6(`components`))
        self$`components` <- `components`
      }
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
      if (!is.null(`outputQuantity`)) {
        if (!(is.numeric(`outputQuantity`) && length(`outputQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `outputQuantity`. Must be an integer:", `outputQuantity`))
        }
        self$`outputQuantity` <- `outputQuantity`
      }
      if (!is.null(`productId`)) {
        if (!(is.character(`productId`) && length(`productId`) == 1)) {
          stop(paste("Error! Invalid data for `productId`. Must be a string:", `productId`))
        }
        self$`productId` <- `productId`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
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
    #' @return BomUpdate as a base R list.
    #' @examples
    #' # convert array of BomUpdate (x) to a data frame
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
    #' Convert BomUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BomUpdateObject <- list()
      if (!is.null(self$`components`)) {
        BomUpdateObject[["components"]] <-
          self$extractSimpleType(self$`components`)
      }
      if (!is.null(self$`description`)) {
        BomUpdateObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`name`)) {
        BomUpdateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`outputQuantity`)) {
        BomUpdateObject[["outputQuantity"]] <-
          self$`outputQuantity`
      }
      if (!is.null(self$`productId`)) {
        BomUpdateObject[["productId"]] <-
          self$`productId`
      }
      if (!is.null(self$`status`)) {
        BomUpdateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      return(BomUpdateObject)
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
    #' Deserialize JSON string into an instance of BomUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of BomUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`components`)) {
        `components_object` <- AnyType$new()
        `components_object`$fromJSON(jsonlite::toJSON(this_object$`components`, auto_unbox = TRUE, digits = NA))
        self$`components` <- `components_object`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`outputQuantity`)) {
        self$`outputQuantity` <- this_object$`outputQuantity`
      }
      if (!is.null(this_object$`productId`)) {
        self$`productId` <- this_object$`productId`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- BomStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BomUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BomUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of BomUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`components` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`components`, auto_unbox = TRUE, digits = NA))
      self$`description` <- this_object$`description`
      self$`name` <- this_object$`name`
      self$`outputQuantity` <- this_object$`outputQuantity`
      self$`productId` <- this_object$`productId`
      self$`status` <- BomStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to BomUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BomUpdate
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
# BomUpdate$unlock()
#
## Below is an example to define the print function
# BomUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BomUpdate$lock()

