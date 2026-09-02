#' Create a new WebhookSubscription
#'
#' @description
#' WebhookSubscription Class
#'
#' @docType class
#' @title WebhookSubscription
#' @description WebhookSubscription Class
#' @format An \code{R6Class} generator object
#' @field eventType Event type to react to (e.g. \"order.created\"); \"*\" = all events. character
#' @field isActive  character [optional]
#' @field name Human label (e.g. \"Warehouse app\"). character
#' @field secret Shared secret for HMAC-SHA256 signature, sent as X-Signature. character
#' @field url  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WebhookSubscription <- R6::R6Class(
  "WebhookSubscription",
  public = list(
    `eventType` = NULL,
    `isActive` = NULL,
    `name` = NULL,
    `secret` = NULL,
    `url` = NULL,

    #' @description
    #' Initialize a new WebhookSubscription class.
    #'
    #' @param eventType Event type to react to (e.g. \"order.created\"); \"*\" = all events.
    #' @param name Human label (e.g. \"Warehouse app\").
    #' @param secret Shared secret for HMAC-SHA256 signature, sent as X-Signature.
    #' @param url url
    #' @param isActive isActive
    #' @param ... Other optional arguments.
    initialize = function(`eventType`, `name`, `secret`, `url`, `isActive` = NULL, ...) {
      if (!missing(`eventType`)) {
        if (!(is.character(`eventType`) && length(`eventType`) == 1)) {
          stop(paste("Error! Invalid data for `eventType`. Must be a string:", `eventType`))
        }
        self$`eventType` <- `eventType`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`secret`)) {
        if (!(is.character(`secret`) && length(`secret`) == 1)) {
          stop(paste("Error! Invalid data for `secret`. Must be a string:", `secret`))
        }
        self$`secret` <- `secret`
      }
      if (!missing(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`isActive`)) {
        if (!(is.logical(`isActive`) && length(`isActive`) == 1)) {
          stop(paste("Error! Invalid data for `isActive`. Must be a boolean:", `isActive`))
        }
        self$`isActive` <- `isActive`
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
    #' @return WebhookSubscription as a base R list.
    #' @examples
    #' # convert array of WebhookSubscription (x) to a data frame
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
    #' Convert WebhookSubscription to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WebhookSubscriptionObject <- list()
      if (!is.null(self$`eventType`)) {
        WebhookSubscriptionObject[["eventType"]] <-
          self$`eventType`
      }
      if (!is.null(self$`isActive`)) {
        WebhookSubscriptionObject[["isActive"]] <-
          self$`isActive`
      }
      if (!is.null(self$`name`)) {
        WebhookSubscriptionObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`secret`)) {
        WebhookSubscriptionObject[["secret"]] <-
          self$`secret`
      }
      if (!is.null(self$`url`)) {
        WebhookSubscriptionObject[["url"]] <-
          self$`url`
      }
      return(WebhookSubscriptionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of WebhookSubscription
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebhookSubscription
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`eventType`)) {
        self$`eventType` <- this_object$`eventType`
      }
      if (!is.null(this_object$`isActive`)) {
        self$`isActive` <- this_object$`isActive`
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
    #' @return WebhookSubscription in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WebhookSubscription
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebhookSubscription
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`eventType` <- this_object$`eventType`
      self$`isActive` <- this_object$`isActive`
      self$`name` <- this_object$`name`
      self$`secret` <- this_object$`secret`
      self$`url` <- this_object$`url`
      self
    },

    #' @description
    #' Validate JSON input with respect to WebhookSubscription and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `eventType`
      if (!is.null(input_json$`eventType`)) {
        if (!(is.character(input_json$`eventType`) && length(input_json$`eventType`) == 1)) {
          stop(paste("Error! Invalid data for `eventType`. Must be a string:", input_json$`eventType`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebhookSubscription: the required field `eventType` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebhookSubscription: the required field `name` is missing."))
      }
      # check the required field `secret`
      if (!is.null(input_json$`secret`)) {
        if (!(is.character(input_json$`secret`) && length(input_json$`secret`) == 1)) {
          stop(paste("Error! Invalid data for `secret`. Must be a string:", input_json$`secret`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebhookSubscription: the required field `secret` is missing."))
      }
      # check the required field `url`
      if (!is.null(input_json$`url`)) {
        if (!(is.character(input_json$`url`) && length(input_json$`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", input_json$`url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebhookSubscription: the required field `url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WebhookSubscription
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `eventType` is null
      if (is.null(self$`eventType`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `secret` is null
      if (is.null(self$`secret`)) {
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
      # check if the required `eventType` is null
      if (is.null(self$`eventType`)) {
        invalid_fields["eventType"] <- "Non-nullable required field `eventType` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `secret` is null
      if (is.null(self$`secret`)) {
        invalid_fields["secret"] <- "Non-nullable required field `secret` cannot be null."
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
# WebhookSubscription$unlock()
#
## Below is an example to define the print function
# WebhookSubscription$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WebhookSubscription$lock()

