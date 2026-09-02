#' Create a new UpdateProfileRequest
#'
#' @description
#' UpdateProfileRequest Class
#'
#' @docType class
#' @title UpdateProfileRequest
#' @description UpdateProfileRequest Class
#' @format An \code{R6Class} generator object
#' @field avatar_url  character [optional]
#' @field first_name  character [optional]
#' @field last_name  character [optional]
#' @field name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateProfileRequest <- R6::R6Class(
  "UpdateProfileRequest",
  public = list(
    `avatar_url` = NULL,
    `first_name` = NULL,
    `last_name` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new UpdateProfileRequest class.
    #'
    #' @param avatar_url avatar_url
    #' @param first_name first_name
    #' @param last_name last_name
    #' @param name name
    #' @param ... Other optional arguments.
    initialize = function(`avatar_url` = NULL, `first_name` = NULL, `last_name` = NULL, `name` = NULL, ...) {
      if (!is.null(`avatar_url`)) {
        if (!(is.character(`avatar_url`) && length(`avatar_url`) == 1)) {
          stop(paste("Error! Invalid data for `avatar_url`. Must be a string:", `avatar_url`))
        }
        self$`avatar_url` <- `avatar_url`
      }
      if (!is.null(`first_name`)) {
        if (!(is.character(`first_name`) && length(`first_name`) == 1)) {
          stop(paste("Error! Invalid data for `first_name`. Must be a string:", `first_name`))
        }
        self$`first_name` <- `first_name`
      }
      if (!is.null(`last_name`)) {
        if (!(is.character(`last_name`) && length(`last_name`) == 1)) {
          stop(paste("Error! Invalid data for `last_name`. Must be a string:", `last_name`))
        }
        self$`last_name` <- `last_name`
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
    #' @return UpdateProfileRequest as a base R list.
    #' @examples
    #' # convert array of UpdateProfileRequest (x) to a data frame
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
    #' Convert UpdateProfileRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdateProfileRequestObject <- list()
      if (!is.null(self$`avatar_url`)) {
        UpdateProfileRequestObject[["avatar_url"]] <-
          self$`avatar_url`
      }
      if (!is.null(self$`first_name`)) {
        UpdateProfileRequestObject[["first_name"]] <-
          self$`first_name`
      }
      if (!is.null(self$`last_name`)) {
        UpdateProfileRequestObject[["last_name"]] <-
          self$`last_name`
      }
      if (!is.null(self$`name`)) {
        UpdateProfileRequestObject[["name"]] <-
          self$`name`
      }
      return(UpdateProfileRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateProfileRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateProfileRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`avatar_url`)) {
        self$`avatar_url` <- this_object$`avatar_url`
      }
      if (!is.null(this_object$`first_name`)) {
        self$`first_name` <- this_object$`first_name`
      }
      if (!is.null(this_object$`last_name`)) {
        self$`last_name` <- this_object$`last_name`
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
    #' @return UpdateProfileRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateProfileRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateProfileRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`avatar_url` <- this_object$`avatar_url`
      self$`first_name` <- this_object$`first_name`
      self$`last_name` <- this_object$`last_name`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateProfileRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateProfileRequest
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
# UpdateProfileRequest$unlock()
#
## Below is an example to define the print function
# UpdateProfileRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateProfileRequest$lock()

