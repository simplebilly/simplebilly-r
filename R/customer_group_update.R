#' Create a new CustomerGroupUpdate
#'
#' @description
#' CustomerGroupUpdate Class
#'
#' @docType class
#' @title CustomerGroupUpdate
#' @description CustomerGroupUpdate Class
#' @format An \code{R6Class} generator object
#' @field description  character [optional]
#' @field memberIds Contact ids that are members of this group. list(character) [optional]
#' @field membershipFilter Rule description for membership, e.g. \"orders > 5 last 12 months\". character [optional]
#' @field name Unique group name, e.g. \"VIP\", \"Wholesale\", \"Newsletter\". character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomerGroupUpdate <- R6::R6Class(
  "CustomerGroupUpdate",
  public = list(
    `description` = NULL,
    `memberIds` = NULL,
    `membershipFilter` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new CustomerGroupUpdate class.
    #'
    #' @param description description
    #' @param memberIds Contact ids that are members of this group.
    #' @param membershipFilter Rule description for membership, e.g. \"orders > 5 last 12 months\".
    #' @param name Unique group name, e.g. \"VIP\", \"Wholesale\", \"Newsletter\".
    #' @param ... Other optional arguments.
    initialize = function(`description` = NULL, `memberIds` = NULL, `membershipFilter` = NULL, `name` = NULL, ...) {
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`memberIds`)) {
        stopifnot(is.vector(`memberIds`), length(`memberIds`) != 0)
        sapply(`memberIds`, function(x) stopifnot(is.character(x)))
        self$`memberIds` <- `memberIds`
      }
      if (!is.null(`membershipFilter`)) {
        if (!(is.character(`membershipFilter`) && length(`membershipFilter`) == 1)) {
          stop(paste("Error! Invalid data for `membershipFilter`. Must be a string:", `membershipFilter`))
        }
        self$`membershipFilter` <- `membershipFilter`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return CustomerGroupUpdate as a base R list.
    #' @examples
    #' # convert array of CustomerGroupUpdate (x) to a data frame
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
    #' Convert CustomerGroupUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomerGroupUpdateObject <- list()
      if (!is.null(self$`description`)) {
        CustomerGroupUpdateObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`memberIds`)) {
        CustomerGroupUpdateObject[["memberIds"]] <-
          self$`memberIds`
      }
      if (!is.null(self$`membershipFilter`)) {
        CustomerGroupUpdateObject[["membershipFilter"]] <-
          self$`membershipFilter`
      }
      if (!is.null(self$`name`)) {
        CustomerGroupUpdateObject[["name"]] <-
          self$`name`
      }
      return(CustomerGroupUpdateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomerGroupUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomerGroupUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`memberIds`)) {
        self$`memberIds` <- ApiClient$new()$deserializeObj(this_object$`memberIds`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`membershipFilter`)) {
        self$`membershipFilter` <- this_object$`membershipFilter`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CustomerGroupUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomerGroupUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomerGroupUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`memberIds` <- ApiClient$new()$deserializeObj(this_object$`memberIds`, "array[character]", loadNamespace("openapi"))
      self$`membershipFilter` <- this_object$`membershipFilter`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to CustomerGroupUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomerGroupUpdate
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
# CustomerGroupUpdate$unlock()
#
## Below is an example to define the print function
# CustomerGroupUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomerGroupUpdate$lock()

