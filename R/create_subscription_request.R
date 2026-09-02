#' Create a new CreateSubscriptionRequest
#'
#' @description
#' CreateSubscriptionRequest Class
#'
#' @docType class
#' @title CreateSubscriptionRequest
#' @description CreateSubscriptionRequest Class
#' @format An \code{R6Class} generator object
#' @field event_type  character
#' @field is_active  character [optional]
#' @field name  character
#' @field secret  character [optional]
#' @field url  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateSubscriptionRequest <- R6::R6Class(
  "CreateSubscriptionRequest",
  public = list(
    `event_type` = NULL,
    `is_active` = NULL,
    `name` = NULL,
    `secret` = NULL,
    `url` = NULL,

    #' @description
    #' Initialize a new CreateSubscriptionRequest class.
    #'
    #' @param event_type event_type
    #' @param name name
    #' @param url url
    #' @param is_active is_active
    #' @param secret secret
    #' @param ... Other optional arguments.
    initialize = function(`event_type`, `name`, `url`, `is_active` = NULL, `secret` = NULL, ...) {
      if (!missing(`event_type`)) {
        if (!(is.character(`event_type`) && length(`event_type`) == 1)) {
          stop(paste("Error! Invalid data for `event_type`. Must be a string:", `event_type`))
        }
        self$`event_type` <- `event_type`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`is_active`)) {
        if (!(is.logical(`is_active`) && length(`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", `is_active`))
        }
        self$`is_active` <- `is_active`
      }
      if (!is.null(`secret`)) {
        if (!(is.character(`secret`) && length(`secret`) == 1)) {
          stop(paste("Error! Invalid data for `secret`. Must be a string:", `secret`))
        }
        self$`secret` <- `secret`
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
    #' @return CreateSubscriptionRequest as a base R list.
    #' @examples
    #' # convert array of CreateSubscriptionRequest (x) to a data frame
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
    #' Convert CreateSubscriptionRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateSubscriptionRequestObject <- list()
      if (!is.null(self$`event_type`)) {
        CreateSubscriptionRequestObject[["event_type"]] <-
          self$`event_type`
      }
      if (!is.null(self$`is_active`)) {
        CreateSubscriptionRequestObject[["is_active"]] <-
          self$`is_active`
      }
      if (!is.null(self$`name`)) {
        CreateSubscriptionRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`secret`)) {
        CreateSubscriptionRequestObject[["secret"]] <-
          self$`secret`
      }
      if (!is.null(self$`url`)) {
        CreateSubscriptionRequestObject[["url"]] <-
          self$`url`
      }
      return(CreateSubscriptionRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateSubscriptionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateSubscriptionRequest
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
    #' @return CreateSubscriptionRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateSubscriptionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateSubscriptionRequest
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
    #' Validate JSON input with respect to CreateSubscriptionRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateSubscriptionRequest: the required field `event_type` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateSubscriptionRequest: the required field `name` is missing."))
      }
      # check the required field `url`
      if (!is.null(input_json$`url`)) {
        if (!(is.character(input_json$`url`) && length(input_json$`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", input_json$`url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateSubscriptionRequest: the required field `url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateSubscriptionRequest
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `url` is null
      if (is.null(self$`url`)) {
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `url` is null
      if (is.null(self$`url`)) {
        invalid_fields["url"] <- "Non-nullable required field `url` cannot be null."
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
# CreateSubscriptionRequest$unlock()
#
## Below is an example to define the print function
# CreateSubscriptionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateSubscriptionRequest$lock()

