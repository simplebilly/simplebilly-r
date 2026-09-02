#' Create a new WebhookEvent
#'
#' @description
#' WebhookEvent Class
#'
#' @docType class
#' @title WebhookEvent
#' @description WebhookEvent Class
#' @format An \code{R6Class} generator object
#' @field attempts  integer [optional]
#' @field channel source for inbound, target URL for outbound. character [optional]
#' @field direction inbound | outbound \link{WebhookDirection}
#' @field eventType  character
#' @field lastError  character [optional]
#' @field payload  \link{AnyType} [optional]
#' @field status accepted | delivered | failed \link{WebhookEventStatus} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WebhookEvent <- R6::R6Class(
  "WebhookEvent",
  public = list(
    `attempts` = NULL,
    `channel` = NULL,
    `direction` = NULL,
    `eventType` = NULL,
    `lastError` = NULL,
    `payload` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new WebhookEvent class.
    #'
    #' @param direction inbound | outbound
    #' @param eventType eventType
    #' @param attempts attempts
    #' @param channel source for inbound, target URL for outbound.
    #' @param lastError lastError
    #' @param payload payload
    #' @param status accepted | delivered | failed
    #' @param ... Other optional arguments.
    initialize = function(`direction`, `eventType`, `attempts` = NULL, `channel` = NULL, `lastError` = NULL, `payload` = NULL, `status` = NULL, ...) {
      if (!missing(`direction`)) {
        if (!(`direction` %in% c())) {
          stop(paste("Error! \"", `direction`, "\" cannot be assigned to `direction`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`direction`))
        self$`direction` <- `direction`
      }
      if (!missing(`eventType`)) {
        if (!(is.character(`eventType`) && length(`eventType`) == 1)) {
          stop(paste("Error! Invalid data for `eventType`. Must be a string:", `eventType`))
        }
        self$`eventType` <- `eventType`
      }
      if (!is.null(`attempts`)) {
        if (!(is.numeric(`attempts`) && length(`attempts`) == 1)) {
          stop(paste("Error! Invalid data for `attempts`. Must be an integer:", `attempts`))
        }
        self$`attempts` <- `attempts`
      }
      if (!is.null(`channel`)) {
        if (!(is.character(`channel`) && length(`channel`) == 1)) {
          stop(paste("Error! Invalid data for `channel`. Must be a string:", `channel`))
        }
        self$`channel` <- `channel`
      }
      if (!is.null(`lastError`)) {
        if (!(is.character(`lastError`) && length(`lastError`) == 1)) {
          stop(paste("Error! Invalid data for `lastError`. Must be a string:", `lastError`))
        }
        self$`lastError` <- `lastError`
      }
      if (!is.null(`payload`)) {
        stopifnot(R6::is.R6(`payload`))
        self$`payload` <- `payload`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
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
    #' @return WebhookEvent as a base R list.
    #' @examples
    #' # convert array of WebhookEvent (x) to a data frame
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
    #' Convert WebhookEvent to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WebhookEventObject <- list()
      if (!is.null(self$`attempts`)) {
        WebhookEventObject[["attempts"]] <-
          self$`attempts`
      }
      if (!is.null(self$`channel`)) {
        WebhookEventObject[["channel"]] <-
          self$`channel`
      }
      if (!is.null(self$`direction`)) {
        WebhookEventObject[["direction"]] <-
          self$extractSimpleType(self$`direction`)
      }
      if (!is.null(self$`eventType`)) {
        WebhookEventObject[["eventType"]] <-
          self$`eventType`
      }
      if (!is.null(self$`lastError`)) {
        WebhookEventObject[["lastError"]] <-
          self$`lastError`
      }
      if (!is.null(self$`payload`)) {
        WebhookEventObject[["payload"]] <-
          self$extractSimpleType(self$`payload`)
      }
      if (!is.null(self$`status`)) {
        WebhookEventObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      return(WebhookEventObject)
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
    #' Deserialize JSON string into an instance of WebhookEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebhookEvent
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`attempts`)) {
        self$`attempts` <- this_object$`attempts`
      }
      if (!is.null(this_object$`channel`)) {
        self$`channel` <- this_object$`channel`
      }
      if (!is.null(this_object$`direction`)) {
        `direction_object` <- WebhookDirection$new()
        `direction_object`$fromJSON(jsonlite::toJSON(this_object$`direction`, auto_unbox = TRUE, digits = NA))
        self$`direction` <- `direction_object`
      }
      if (!is.null(this_object$`eventType`)) {
        self$`eventType` <- this_object$`eventType`
      }
      if (!is.null(this_object$`lastError`)) {
        self$`lastError` <- this_object$`lastError`
      }
      if (!is.null(this_object$`payload`)) {
        `payload_object` <- AnyType$new()
        `payload_object`$fromJSON(jsonlite::toJSON(this_object$`payload`, auto_unbox = TRUE, digits = NA))
        self$`payload` <- `payload_object`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- WebhookEventStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return WebhookEvent in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WebhookEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebhookEvent
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`attempts` <- this_object$`attempts`
      self$`channel` <- this_object$`channel`
      self$`direction` <- WebhookDirection$new()$fromJSON(jsonlite::toJSON(this_object$`direction`, auto_unbox = TRUE, digits = NA))
      self$`eventType` <- this_object$`eventType`
      self$`lastError` <- this_object$`lastError`
      self$`payload` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`payload`, auto_unbox = TRUE, digits = NA))
      self$`status` <- WebhookEventStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to WebhookEvent and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `direction`
      if (!is.null(input_json$`direction`)) {
        stopifnot(R6::is.R6(input_json$`direction`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebhookEvent: the required field `direction` is missing."))
      }
      # check the required field `eventType`
      if (!is.null(input_json$`eventType`)) {
        if (!(is.character(input_json$`eventType`) && length(input_json$`eventType`) == 1)) {
          stop(paste("Error! Invalid data for `eventType`. Must be a string:", input_json$`eventType`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebhookEvent: the required field `eventType` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WebhookEvent
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `direction` is null
      if (is.null(self$`direction`)) {
        return(FALSE)
      }

      # check if the required `eventType` is null
      if (is.null(self$`eventType`)) {
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
      # check if the required `direction` is null
      if (is.null(self$`direction`)) {
        invalid_fields["direction"] <- "Non-nullable required field `direction` cannot be null."
      }

      # check if the required `eventType` is null
      if (is.null(self$`eventType`)) {
        invalid_fields["eventType"] <- "Non-nullable required field `eventType` cannot be null."
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
# WebhookEvent$unlock()
#
## Below is an example to define the print function
# WebhookEvent$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WebhookEvent$lock()

