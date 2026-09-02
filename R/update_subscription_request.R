#' Create a new UpdateSubscriptionRequest
#'
#' @description
#' UpdateSubscriptionRequest Class
#'
#' @docType class
#' @title UpdateSubscriptionRequest
#' @description UpdateSubscriptionRequest Class
#' @format An \code{R6Class} generator object
#' @field event_type  character [optional]
#' @field is_active  character [optional]
#' @field name  character [optional]
#' @field secret  character [optional]
#' @field url  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateSubscriptionRequest <- R6::R6Class(
  "UpdateSubscriptionRequest",
  public = list(
    `event_type` = NULL,
    `is_active` = NULL,
    `name` = NULL,
    `secret` = NULL,
    `url` = NULL,

    #' @description
    #' Initialize a new UpdateSubscriptionRequest class.
    #'
    #' @param event_type event_type
    #' @param is_active is_active
    #' @param name name
    #' @param secret secret
    #' @param url url
    #' @param ... Other optional arguments.
    initialize = function(`event_type` = NULL, `is_active` = NULL, `name` = NULL, `secret` = NULL, `url` = NULL, ...) {
      if (!is.null(`event_type`)) {
        if (!(is.character(`event_type`) && length(`event_type`) == 1)) {
          stop(paste("Error! Invalid data for `event_type`. Must be a string:", `event_type`))
        }
        self$`event_type` <- `event_type`
      }
      if (!is.null(`is_active`)) {
        if (!(is.logical(`is_active`) && length(`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", `is_active`))
        }
        self$`is_active` <- `is_active`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`secret`)) {
        if (!(is.character(`secret`) && length(`secret`) == 1)) {
          stop(paste("Error! Invalid data for `secret`. Must be a string:", `secret`))
        }
        self$`secret` <- `secret`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
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
    #' @return UpdateSubscriptionRequest as a base R list.
    #' @examples
    #' # convert array of UpdateSubscriptionRequest (x) to a data frame
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
    #' Convert UpdateSubscriptionRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdateSubscriptionRequestObject <- list()
      if (!is.null(self$`event_type`)) {
        UpdateSubscriptionRequestObject[["event_type"]] <-
          self$`event_type`
      }
      if (!is.null(self$`is_active`)) {
        UpdateSubscriptionRequestObject[["is_active"]] <-
          self$`is_active`
      }
      if (!is.null(self$`name`)) {
        UpdateSubscriptionRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`secret`)) {
        UpdateSubscriptionRequestObject[["secret"]] <-
          self$`secret`
      }
      if (!is.null(self$`url`)) {
        UpdateSubscriptionRequestObject[["url"]] <-
          self$`url`
      }
      return(UpdateSubscriptionRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateSubscriptionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateSubscriptionRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`event_type`)) {
        self$`event_type` <- this_object$`event_type`
      }
      if (!is.null(this_object$`is_active`)) {
        self$`is_active` <- this_object$`is_active`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`secret`)) {
        self$`secret` <- this_object$`secret`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UpdateSubscriptionRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateSubscriptionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateSubscriptionRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`event_type` <- this_object$`event_type`
      self$`is_active` <- this_object$`is_active`
      self$`name` <- this_object$`name`
      self$`secret` <- this_object$`secret`
      self$`url` <- this_object$`url`
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateSubscriptionRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateSubscriptionRequest
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
# UpdateSubscriptionRequest$unlock()
#
## Below is an example to define the print function
# UpdateSubscriptionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateSubscriptionRequest$lock()

