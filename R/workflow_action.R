#' Create a new WorkflowAction
#'
#' @description
#' One action inside a workflow. Only `email` is supported for now.
#'
#' @docType class
#' @title WorkflowAction
#' @description WorkflowAction Class
#' @format An \code{R6Class} generator object
#' @field action_type  character
#' @field body  character [optional]
#' @field subject  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkflowAction <- R6::R6Class(
  "WorkflowAction",
  public = list(
    `action_type` = NULL,
    `body` = NULL,
    `subject` = NULL,

    #' @description
    #' Initialize a new WorkflowAction class.
    #'
    #' @param action_type action_type
    #' @param body body
    #' @param subject subject
    #' @param ... Other optional arguments.
    initialize = function(`action_type`, `body` = NULL, `subject` = NULL, ...) {
      if (!missing(`action_type`)) {
        if (!(is.character(`action_type`) && length(`action_type`) == 1)) {
          stop(paste("Error! Invalid data for `action_type`. Must be a string:", `action_type`))
        }
        self$`action_type` <- `action_type`
      }
      if (!is.null(`body`)) {
        if (!(is.character(`body`) && length(`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", `body`))
        }
        self$`body` <- `body`
      }
      if (!is.null(`subject`)) {
        if (!(is.character(`subject`) && length(`subject`) == 1)) {
          stop(paste("Error! Invalid data for `subject`. Must be a string:", `subject`))
        }
        self$`subject` <- `subject`
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
    #' @return WorkflowAction as a base R list.
    #' @examples
    #' # convert array of WorkflowAction (x) to a data frame
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
    #' Convert WorkflowAction to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WorkflowActionObject <- list()
      if (!is.null(self$`action_type`)) {
        WorkflowActionObject[["action_type"]] <-
          self$`action_type`
      }
      if (!is.null(self$`body`)) {
        WorkflowActionObject[["body"]] <-
          self$`body`
      }
      if (!is.null(self$`subject`)) {
        WorkflowActionObject[["subject"]] <-
          self$`subject`
      }
      return(WorkflowActionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of WorkflowAction
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowAction
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action_type`)) {
        self$`action_type` <- this_object$`action_type`
      }
      if (!is.null(this_object$`body`)) {
        self$`body` <- this_object$`body`
      }
      if (!is.null(this_object$`subject`)) {
        self$`subject` <- this_object$`subject`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return WorkflowAction in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WorkflowAction
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkflowAction
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`action_type` <- this_object$`action_type`
      self$`body` <- this_object$`body`
      self$`subject` <- this_object$`subject`
      self
    },

    #' @description
    #' Validate JSON input with respect to WorkflowAction and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `action_type`
      if (!is.null(input_json$`action_type`)) {
        if (!(is.character(input_json$`action_type`) && length(input_json$`action_type`) == 1)) {
          stop(paste("Error! Invalid data for `action_type`. Must be a string:", input_json$`action_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkflowAction: the required field `action_type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WorkflowAction
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `action_type` is null
      if (is.null(self$`action_type`)) {
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
      # check if the required `action_type` is null
      if (is.null(self$`action_type`)) {
        invalid_fields["action_type"] <- "Non-nullable required field `action_type` cannot be null."
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
# WorkflowAction$unlock()
#
## Below is an example to define the print function
# WorkflowAction$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WorkflowAction$lock()

