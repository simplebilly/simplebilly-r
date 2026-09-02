#' Create a new SyncLog
#'
#' @description
#' SyncLog Class
#'
#' @docType class
#' @title SyncLog
#' @description SyncLog Class
#' @format An \code{R6Class} generator object
#' @field completed_at  character [optional]
#' @field connection_id  character
#' @field error_message  character [optional]
#' @field items_failed  integer
#' @field items_synced  integer
#' @field log_id  character
#' @field platform  character
#' @field started_at  character
#' @field status  character
#' @field sync_type  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SyncLog <- R6::R6Class(
  "SyncLog",
  public = list(
    `completed_at` = NULL,
    `connection_id` = NULL,
    `error_message` = NULL,
    `items_failed` = NULL,
    `items_synced` = NULL,
    `log_id` = NULL,
    `platform` = NULL,
    `started_at` = NULL,
    `status` = NULL,
    `sync_type` = NULL,

    #' @description
    #' Initialize a new SyncLog class.
    #'
    #' @param connection_id connection_id
    #' @param items_failed items_failed
    #' @param items_synced items_synced
    #' @param log_id log_id
    #' @param platform platform
    #' @param started_at started_at
    #' @param status status
    #' @param sync_type sync_type
    #' @param completed_at completed_at
    #' @param error_message error_message
    #' @param ... Other optional arguments.
    initialize = function(`connection_id`, `items_failed`, `items_synced`, `log_id`, `platform`, `started_at`, `status`, `sync_type`, `completed_at` = NULL, `error_message` = NULL, ...) {
      if (!missing(`connection_id`)) {
        if (!(is.character(`connection_id`) && length(`connection_id`) == 1)) {
          stop(paste("Error! Invalid data for `connection_id`. Must be a string:", `connection_id`))
        }
        self$`connection_id` <- `connection_id`
      }
      if (!missing(`items_failed`)) {
        if (!(is.numeric(`items_failed`) && length(`items_failed`) == 1)) {
          stop(paste("Error! Invalid data for `items_failed`. Must be an integer:", `items_failed`))
        }
        self$`items_failed` <- `items_failed`
      }
      if (!missing(`items_synced`)) {
        if (!(is.numeric(`items_synced`) && length(`items_synced`) == 1)) {
          stop(paste("Error! Invalid data for `items_synced`. Must be an integer:", `items_synced`))
        }
        self$`items_synced` <- `items_synced`
      }
      if (!missing(`log_id`)) {
        if (!(is.character(`log_id`) && length(`log_id`) == 1)) {
          stop(paste("Error! Invalid data for `log_id`. Must be a string:", `log_id`))
        }
        self$`log_id` <- `log_id`
      }
      if (!missing(`platform`)) {
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!missing(`started_at`)) {
        if (!(is.character(`started_at`) && length(`started_at`) == 1)) {
          stop(paste("Error! Invalid data for `started_at`. Must be a string:", `started_at`))
        }
        self$`started_at` <- `started_at`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`sync_type`)) {
        if (!(is.character(`sync_type`) && length(`sync_type`) == 1)) {
          stop(paste("Error! Invalid data for `sync_type`. Must be a string:", `sync_type`))
        }
        self$`sync_type` <- `sync_type`
      }
      if (!is.null(`completed_at`)) {
        if (!is.character(`completed_at`)) {
          stop(paste("Error! Invalid data for `completed_at`. Must be a string:", `completed_at`))
        }
        self$`completed_at` <- `completed_at`
      }
      if (!is.null(`error_message`)) {
        if (!(is.character(`error_message`) && length(`error_message`) == 1)) {
          stop(paste("Error! Invalid data for `error_message`. Must be a string:", `error_message`))
        }
        self$`error_message` <- `error_message`
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
    #' @return SyncLog as a base R list.
    #' @examples
    #' # convert array of SyncLog (x) to a data frame
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
    #' Convert SyncLog to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SyncLogObject <- list()
      if (!is.null(self$`completed_at`)) {
        SyncLogObject[["completed_at"]] <-
          self$`completed_at`
      }
      if (!is.null(self$`connection_id`)) {
        SyncLogObject[["connection_id"]] <-
          self$`connection_id`
      }
      if (!is.null(self$`error_message`)) {
        SyncLogObject[["error_message"]] <-
          self$`error_message`
      }
      if (!is.null(self$`items_failed`)) {
        SyncLogObject[["items_failed"]] <-
          self$`items_failed`
      }
      if (!is.null(self$`items_synced`)) {
        SyncLogObject[["items_synced"]] <-
          self$`items_synced`
      }
      if (!is.null(self$`log_id`)) {
        SyncLogObject[["log_id"]] <-
          self$`log_id`
      }
      if (!is.null(self$`platform`)) {
        SyncLogObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`started_at`)) {
        SyncLogObject[["started_at"]] <-
          self$`started_at`
      }
      if (!is.null(self$`status`)) {
        SyncLogObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`sync_type`)) {
        SyncLogObject[["sync_type"]] <-
          self$`sync_type`
      }
      return(SyncLogObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SyncLog
    #'
    #' @param input_json the JSON input
    #' @return the instance of SyncLog
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`completed_at`)) {
        self$`completed_at` <- this_object$`completed_at`
      }
      if (!is.null(this_object$`connection_id`)) {
        self$`connection_id` <- this_object$`connection_id`
      }
      if (!is.null(this_object$`error_message`)) {
        self$`error_message` <- this_object$`error_message`
      }
      if (!is.null(this_object$`items_failed`)) {
        self$`items_failed` <- this_object$`items_failed`
      }
      if (!is.null(this_object$`items_synced`)) {
        self$`items_synced` <- this_object$`items_synced`
      }
      if (!is.null(this_object$`log_id`)) {
        self$`log_id` <- this_object$`log_id`
      }
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`started_at`)) {
        self$`started_at` <- this_object$`started_at`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`sync_type`)) {
        self$`sync_type` <- this_object$`sync_type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SyncLog in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SyncLog
    #'
    #' @param input_json the JSON input
    #' @return the instance of SyncLog
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`completed_at` <- this_object$`completed_at`
      self$`connection_id` <- this_object$`connection_id`
      self$`error_message` <- this_object$`error_message`
      self$`items_failed` <- this_object$`items_failed`
      self$`items_synced` <- this_object$`items_synced`
      self$`log_id` <- this_object$`log_id`
      self$`platform` <- this_object$`platform`
      self$`started_at` <- this_object$`started_at`
      self$`status` <- this_object$`status`
      self$`sync_type` <- this_object$`sync_type`
      self
    },

    #' @description
    #' Validate JSON input with respect to SyncLog and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `connection_id`
      if (!is.null(input_json$`connection_id`)) {
        if (!(is.character(input_json$`connection_id`) && length(input_json$`connection_id`) == 1)) {
          stop(paste("Error! Invalid data for `connection_id`. Must be a string:", input_json$`connection_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SyncLog: the required field `connection_id` is missing."))
      }
      # check the required field `items_failed`
      if (!is.null(input_json$`items_failed`)) {
        if (!(is.numeric(input_json$`items_failed`) && length(input_json$`items_failed`) == 1)) {
          stop(paste("Error! Invalid data for `items_failed`. Must be an integer:", input_json$`items_failed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SyncLog: the required field `items_failed` is missing."))
      }
      # check the required field `items_synced`
      if (!is.null(input_json$`items_synced`)) {
        if (!(is.numeric(input_json$`items_synced`) && length(input_json$`items_synced`) == 1)) {
          stop(paste("Error! Invalid data for `items_synced`. Must be an integer:", input_json$`items_synced`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SyncLog: the required field `items_synced` is missing."))
      }
      # check the required field `log_id`
      if (!is.null(input_json$`log_id`)) {
        if (!(is.character(input_json$`log_id`) && length(input_json$`log_id`) == 1)) {
          stop(paste("Error! Invalid data for `log_id`. Must be a string:", input_json$`log_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SyncLog: the required field `log_id` is missing."))
      }
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SyncLog: the required field `platform` is missing."))
      }
      # check the required field `started_at`
      if (!is.null(input_json$`started_at`)) {
        if (!(is.character(input_json$`started_at`) && length(input_json$`started_at`) == 1)) {
          stop(paste("Error! Invalid data for `started_at`. Must be a string:", input_json$`started_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SyncLog: the required field `started_at` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SyncLog: the required field `status` is missing."))
      }
      # check the required field `sync_type`
      if (!is.null(input_json$`sync_type`)) {
        if (!(is.character(input_json$`sync_type`) && length(input_json$`sync_type`) == 1)) {
          stop(paste("Error! Invalid data for `sync_type`. Must be a string:", input_json$`sync_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SyncLog: the required field `sync_type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SyncLog
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `connection_id` is null
      if (is.null(self$`connection_id`)) {
        return(FALSE)
      }

      # check if the required `items_failed` is null
      if (is.null(self$`items_failed`)) {
        return(FALSE)
      }

      # check if the required `items_synced` is null
      if (is.null(self$`items_synced`)) {
        return(FALSE)
      }

      # check if the required `log_id` is null
      if (is.null(self$`log_id`)) {
        return(FALSE)
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        return(FALSE)
      }

      # check if the required `started_at` is null
      if (is.null(self$`started_at`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `sync_type` is null
      if (is.null(self$`sync_type`)) {
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
      # check if the required `connection_id` is null
      if (is.null(self$`connection_id`)) {
        invalid_fields["connection_id"] <- "Non-nullable required field `connection_id` cannot be null."
      }

      # check if the required `items_failed` is null
      if (is.null(self$`items_failed`)) {
        invalid_fields["items_failed"] <- "Non-nullable required field `items_failed` cannot be null."
      }

      # check if the required `items_synced` is null
      if (is.null(self$`items_synced`)) {
        invalid_fields["items_synced"] <- "Non-nullable required field `items_synced` cannot be null."
      }

      # check if the required `log_id` is null
      if (is.null(self$`log_id`)) {
        invalid_fields["log_id"] <- "Non-nullable required field `log_id` cannot be null."
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        invalid_fields["platform"] <- "Non-nullable required field `platform` cannot be null."
      }

      # check if the required `started_at` is null
      if (is.null(self$`started_at`)) {
        invalid_fields["started_at"] <- "Non-nullable required field `started_at` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `sync_type` is null
      if (is.null(self$`sync_type`)) {
        invalid_fields["sync_type"] <- "Non-nullable required field `sync_type` cannot be null."
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
# SyncLog$unlock()
#
## Below is an example to define the print function
# SyncLog$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SyncLog$lock()

