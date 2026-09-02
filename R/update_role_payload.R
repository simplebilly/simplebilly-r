#' Create a new UpdateRolePayload
#'
#' @description
#' UpdateRolePayload Class
#'
#' @docType class
#' @title UpdateRolePayload
#' @description UpdateRolePayload Class
#' @format An \code{R6Class} generator object
#' @field role  character
#' @field sync_permissions  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateRolePayload <- R6::R6Class(
  "UpdateRolePayload",
  public = list(
    `role` = NULL,
    `sync_permissions` = NULL,

    #' @description
    #' Initialize a new UpdateRolePayload class.
    #'
    #' @param role role
    #' @param sync_permissions sync_permissions
    #' @param ... Other optional arguments.
    initialize = function(`role`, `sync_permissions` = NULL, ...) {
      if (!missing(`role`)) {
        if (!(is.character(`role`) && length(`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", `role`))
        }
        self$`role` <- `role`
      }
      if (!is.null(`sync_permissions`)) {
        if (!(is.logical(`sync_permissions`) && length(`sync_permissions`) == 1)) {
          stop(paste("Error! Invalid data for `sync_permissions`. Must be a boolean:", `sync_permissions`))
        }
        self$`sync_permissions` <- `sync_permissions`
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
    #' @return UpdateRolePayload as a base R list.
    #' @examples
    #' # convert array of UpdateRolePayload (x) to a data frame
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
    #' Convert UpdateRolePayload to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdateRolePayloadObject <- list()
      if (!is.null(self$`role`)) {
        UpdateRolePayloadObject[["role"]] <-
          self$`role`
      }
      if (!is.null(self$`sync_permissions`)) {
        UpdateRolePayloadObject[["sync_permissions"]] <-
          self$`sync_permissions`
      }
      return(UpdateRolePayloadObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateRolePayload
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateRolePayload
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`role`)) {
        self$`role` <- this_object$`role`
      }
      if (!is.null(this_object$`sync_permissions`)) {
        self$`sync_permissions` <- this_object$`sync_permissions`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UpdateRolePayload in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateRolePayload
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateRolePayload
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`role` <- this_object$`role`
      self$`sync_permissions` <- this_object$`sync_permissions`
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateRolePayload and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `role`
      if (!is.null(input_json$`role`)) {
        if (!(is.character(input_json$`role`) && length(input_json$`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", input_json$`role`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UpdateRolePayload: the required field `role` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateRolePayload
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `role` is null
      if (is.null(self$`role`)) {
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
      # check if the required `role` is null
      if (is.null(self$`role`)) {
        invalid_fields["role"] <- "Non-nullable required field `role` cannot be null."
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
# UpdateRolePayload$unlock()
#
## Below is an example to define the print function
# UpdateRolePayload$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateRolePayload$lock()

