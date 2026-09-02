#' Create a new EventSubscription
#'
#' @description
#' EventSubscription Class
#'
#' @docType class
#' @title EventSubscription
#' @description EventSubscription Class
#' @format An \code{R6Class} generator object
#' @field callback_url  character
#' @field event_type  character
#' @field is_active  character
#' @field subscription_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EventSubscription <- R6::R6Class(
  "EventSubscription",
  public = list(
    `callback_url` = NULL,
    `event_type` = NULL,
    `is_active` = NULL,
    `subscription_id` = NULL,

    #' @description
    #' Initialize a new EventSubscription class.
    #'
    #' @param callback_url callback_url
    #' @param event_type event_type
    #' @param is_active is_active
    #' @param subscription_id subscription_id
    #' @param ... Other optional arguments.
    initialize = function(`callback_url`, `event_type`, `is_active`, `subscription_id`, ...) {
      if (!missing(`callback_url`)) {
        if (!(is.character(`callback_url`) && length(`callback_url`) == 1)) {
          stop(paste("Error! Invalid data for `callback_url`. Must be a string:", `callback_url`))
        }
        self$`callback_url` <- `callback_url`
      }
      if (!missing(`event_type`)) {
        if (!(is.character(`event_type`) && length(`event_type`) == 1)) {
          stop(paste("Error! Invalid data for `event_type`. Must be a string:", `event_type`))
        }
        self$`event_type` <- `event_type`
      }
      if (!missing(`is_active`)) {
        if (!(is.logical(`is_active`) && length(`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", `is_active`))
        }
        self$`is_active` <- `is_active`
      }
      if (!missing(`subscription_id`)) {
        if (!(is.character(`subscription_id`) && length(`subscription_id`) == 1)) {
          stop(paste("Error! Invalid data for `subscription_id`. Must be a string:", `subscription_id`))
        }
        self$`subscription_id` <- `subscription_id`
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
    #' @return EventSubscription as a base R list.
    #' @examples
    #' # convert array of EventSubscription (x) to a data frame
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
    #' Convert EventSubscription to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EventSubscriptionObject <- list()
      if (!is.null(self$`callback_url`)) {
        EventSubscriptionObject[["callback_url"]] <-
          self$`callback_url`
      }
      if (!is.null(self$`event_type`)) {
        EventSubscriptionObject[["event_type"]] <-
          self$`event_type`
      }
      if (!is.null(self$`is_active`)) {
        EventSubscriptionObject[["is_active"]] <-
          self$`is_active`
      }
      if (!is.null(self$`subscription_id`)) {
        EventSubscriptionObject[["subscription_id"]] <-
          self$`subscription_id`
      }
      return(EventSubscriptionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of EventSubscription
    #'
    #' @param input_json the JSON input
    #' @return the instance of EventSubscription
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`callback_url`)) {
        self$`callback_url` <- this_object$`callback_url`
      }
      if (!is.null(this_object$`event_type`)) {
        self$`event_type` <- this_object$`event_type`
      }
      if (!is.null(this_object$`is_active`)) {
        self$`is_active` <- this_object$`is_active`
      }
      if (!is.null(this_object$`subscription_id`)) {
        self$`subscription_id` <- this_object$`subscription_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EventSubscription in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EventSubscription
    #'
    #' @param input_json the JSON input
    #' @return the instance of EventSubscription
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`callback_url` <- this_object$`callback_url`
      self$`event_type` <- this_object$`event_type`
      self$`is_active` <- this_object$`is_active`
      self$`subscription_id` <- this_object$`subscription_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to EventSubscription and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `callback_url`
      if (!is.null(input_json$`callback_url`)) {
        if (!(is.character(input_json$`callback_url`) && length(input_json$`callback_url`) == 1)) {
          stop(paste("Error! Invalid data for `callback_url`. Must be a string:", input_json$`callback_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EventSubscription: the required field `callback_url` is missing."))
      }
      # check the required field `event_type`
      if (!is.null(input_json$`event_type`)) {
        if (!(is.character(input_json$`event_type`) && length(input_json$`event_type`) == 1)) {
          stop(paste("Error! Invalid data for `event_type`. Must be a string:", input_json$`event_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EventSubscription: the required field `event_type` is missing."))
      }
      # check the required field `is_active`
      if (!is.null(input_json$`is_active`)) {
        if (!(is.logical(input_json$`is_active`) && length(input_json$`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", input_json$`is_active`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EventSubscription: the required field `is_active` is missing."))
      }
      # check the required field `subscription_id`
      if (!is.null(input_json$`subscription_id`)) {
        if (!(is.character(input_json$`subscription_id`) && length(input_json$`subscription_id`) == 1)) {
          stop(paste("Error! Invalid data for `subscription_id`. Must be a string:", input_json$`subscription_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EventSubscription: the required field `subscription_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EventSubscription
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `callback_url` is null
      if (is.null(self$`callback_url`)) {
        return(FALSE)
      }

      # check if the required `event_type` is null
      if (is.null(self$`event_type`)) {
        return(FALSE)
      }

      # check if the required `is_active` is null
      if (is.null(self$`is_active`)) {
        return(FALSE)
      }

      # check if the required `subscription_id` is null
      if (is.null(self$`subscription_id`)) {
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
      # check if the required `callback_url` is null
      if (is.null(self$`callback_url`)) {
        invalid_fields["callback_url"] <- "Non-nullable required field `callback_url` cannot be null."
      }

      # check if the required `event_type` is null
      if (is.null(self$`event_type`)) {
        invalid_fields["event_type"] <- "Non-nullable required field `event_type` cannot be null."
      }

      # check if the required `is_active` is null
      if (is.null(self$`is_active`)) {
        invalid_fields["is_active"] <- "Non-nullable required field `is_active` cannot be null."
      }

      # check if the required `subscription_id` is null
      if (is.null(self$`subscription_id`)) {
        invalid_fields["subscription_id"] <- "Non-nullable required field `subscription_id` cannot be null."
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
# EventSubscription$unlock()
#
## Below is an example to define the print function
# EventSubscription$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EventSubscription$lock()

