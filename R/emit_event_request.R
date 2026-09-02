#' Create a new EmitEventRequest
#'
#' @description
#' EmitEventRequest Class
#'
#' @docType class
#' @title EmitEventRequest
#' @description EmitEventRequest Class
#' @format An \code{R6Class} generator object
#' @field event_type  character
#' @field payload  \link{AnyType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EmitEventRequest <- R6::R6Class(
  "EmitEventRequest",
  public = list(
    `event_type` = NULL,
    `payload` = NULL,

    #' @description
    #' Initialize a new EmitEventRequest class.
    #'
    #' @param event_type event_type
    #' @param payload payload
    #' @param ... Other optional arguments.
    initialize = function(`event_type`, `payload` = NULL, ...) {
      if (!missing(`event_type`)) {
        if (!(is.character(`event_type`) && length(`event_type`) == 1)) {
          stop(paste("Error! Invalid data for `event_type`. Must be a string:", `event_type`))
        }
        self$`event_type` <- `event_type`
      }
      if (!is.null(`payload`)) {
        stopifnot(R6::is.R6(`payload`))
        self$`payload` <- `payload`
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
    #' @return EmitEventRequest as a base R list.
    #' @examples
    #' # convert array of EmitEventRequest (x) to a data frame
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
    #' Convert EmitEventRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EmitEventRequestObject <- list()
      if (!is.null(self$`event_type`)) {
        EmitEventRequestObject[["event_type"]] <-
          self$`event_type`
      }
      if (!is.null(self$`payload`)) {
        EmitEventRequestObject[["payload"]] <-
          self$extractSimpleType(self$`payload`)
      }
      return(EmitEventRequestObject)
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
    #' Deserialize JSON string into an instance of EmitEventRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmitEventRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`event_type`)) {
        self$`event_type` <- this_object$`event_type`
      }
      if (!is.null(this_object$`payload`)) {
        `payload_object` <- AnyType$new()
        `payload_object`$fromJSON(jsonlite::toJSON(this_object$`payload`, auto_unbox = TRUE, digits = NA))
        self$`payload` <- `payload_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EmitEventRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EmitEventRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmitEventRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`event_type` <- this_object$`event_type`
      self$`payload` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`payload`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to EmitEventRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `event_type`
      if (!is.null(input_json$`event_type`)) {
        if (!(is.character(input_json$`event_type`) && length(input_json$`event_type`) == 1)) {
          stop(paste("Error! Invalid data for `event_type`. Must be a string:", input_json$`event_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmitEventRequest: the required field `event_type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EmitEventRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `event_type` is null
      if (is.null(self$`event_type`)) {
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
      # check if the required `event_type` is null
      if (is.null(self$`event_type`)) {
        invalid_fields["event_type"] <- "Non-nullable required field `event_type` cannot be null."
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
# EmitEventRequest$unlock()
#
## Below is an example to define the print function
# EmitEventRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EmitEventRequest$lock()

