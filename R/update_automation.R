#' Create a new UpdateAutomation
#'
#' @description
#' UpdateAutomation Class
#'
#' @docType class
#' @title UpdateAutomation
#' @description UpdateAutomation Class
#' @format An \code{R6Class} generator object
#' @field config  \link{AnyType} [optional]
#' @field enabled  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateAutomation <- R6::R6Class(
  "UpdateAutomation",
  public = list(
    `config` = NULL,
    `enabled` = NULL,

    #' @description
    #' Initialize a new UpdateAutomation class.
    #'
    #' @param config config
    #' @param enabled enabled
    #' @param ... Other optional arguments.
    initialize = function(`config` = NULL, `enabled` = NULL, ...) {
      if (!is.null(`config`)) {
        stopifnot(R6::is.R6(`config`))
        self$`config` <- `config`
      }
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
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
    #' @return UpdateAutomation as a base R list.
    #' @examples
    #' # convert array of UpdateAutomation (x) to a data frame
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
    #' Convert UpdateAutomation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdateAutomationObject <- list()
      if (!is.null(self$`config`)) {
        UpdateAutomationObject[["config"]] <-
          self$extractSimpleType(self$`config`)
      }
      if (!is.null(self$`enabled`)) {
        UpdateAutomationObject[["enabled"]] <-
          self$`enabled`
      }
      return(UpdateAutomationObject)
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
    #' Deserialize JSON string into an instance of UpdateAutomation
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateAutomation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`config`)) {
        `config_object` <- AnyType$new()
        `config_object`$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
        self$`config` <- `config_object`
      }
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UpdateAutomation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateAutomation
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateAutomation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`config` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
      self$`enabled` <- this_object$`enabled`
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateAutomation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateAutomation
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
# UpdateAutomation$unlock()
#
## Below is an example to define the print function
# UpdateAutomation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateAutomation$lock()

