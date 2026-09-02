#' Create a new Workflow
#'
#' @description
#' Workflow Class
#'
#' @docType class
#' @title Workflow
#' @description Workflow Class
#' @format An \code{R6Class} generator object
#' @field actions  \link{AnyType} [optional]
#' @field enabled  character [optional]
#' @field name  character
#' @field triggerEvent Event that triggers the workflow, e.g. `order.paid`, `order.shipped`. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Workflow <- R6::R6Class(
  "Workflow",
  public = list(
    `actions` = NULL,
    `enabled` = NULL,
    `name` = NULL,
    `triggerEvent` = NULL,

    #' @description
    #' Initialize a new Workflow class.
    #'
    #' @param name name
    #' @param triggerEvent Event that triggers the workflow, e.g. `order.paid`, `order.shipped`.
    #' @param actions actions
    #' @param enabled enabled
    #' @param ... Other optional arguments.
    initialize = function(`name`, `triggerEvent`, `actions` = NULL, `enabled` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`triggerEvent`)) {
        if (!(is.character(`triggerEvent`) && length(`triggerEvent`) == 1)) {
          stop(paste("Error! Invalid data for `triggerEvent`. Must be a string:", `triggerEvent`))
        }
        self$`triggerEvent` <- `triggerEvent`
      }
      if (!is.null(`actions`)) {
        stopifnot(R6::is.R6(`actions`))
        self$`actions` <- `actions`
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
    #' @return Workflow as a base R list.
    #' @examples
    #' # convert array of Workflow (x) to a data frame
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
    #' Convert Workflow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WorkflowObject <- list()
      if (!is.null(self$`actions`)) {
        WorkflowObject[["actions"]] <-
          self$extractSimpleType(self$`actions`)
      }
      if (!is.null(self$`enabled`)) {
        WorkflowObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`name`)) {
        WorkflowObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`triggerEvent`)) {
        WorkflowObject[["triggerEvent"]] <-
          self$`triggerEvent`
      }
      return(WorkflowObject)
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
    #' Deserialize JSON string into an instance of Workflow
    #'
    #' @param input_json the JSON input
    #' @return the instance of Workflow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`actions`)) {
        `actions_object` <- AnyType$new()
        `actions_object`$fromJSON(jsonlite::toJSON(this_object$`actions`, auto_unbox = TRUE, digits = NA))
        self$`actions` <- `actions_object`
      }
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`triggerEvent`)) {
        self$`triggerEvent` <- this_object$`triggerEvent`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Workflow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Workflow
    #'
    #' @param input_json the JSON input
    #' @return the instance of Workflow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`actions` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`actions`, auto_unbox = TRUE, digits = NA))
      self$`enabled` <- this_object$`enabled`
      self$`name` <- this_object$`name`
      self$`triggerEvent` <- this_object$`triggerEvent`
      self
    },

    #' @description
    #' Validate JSON input with respect to Workflow and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Workflow: the required field `name` is missing."))
      }
      # check the required field `triggerEvent`
      if (!is.null(input_json$`triggerEvent`)) {
        if (!(is.character(input_json$`triggerEvent`) && length(input_json$`triggerEvent`) == 1)) {
          stop(paste("Error! Invalid data for `triggerEvent`. Must be a string:", input_json$`triggerEvent`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Workflow: the required field `triggerEvent` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Workflow
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

      # check if the required `triggerEvent` is null
      if (is.null(self$`triggerEvent`)) {
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

      # check if the required `triggerEvent` is null
      if (is.null(self$`triggerEvent`)) {
        invalid_fields["triggerEvent"] <- "Non-nullable required field `triggerEvent` cannot be null."
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
# Workflow$unlock()
#
## Below is an example to define the print function
# Workflow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Workflow$lock()

