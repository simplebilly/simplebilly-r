#' Create a new Job
#'
#' @description
#' Job Class
#'
#' @docType class
#' @title Job
#' @description Job Class
#' @format An \code{R6Class} generator object
#' @field attempts  integer [optional]
#' @field jobType Discriminator the worker dispatches on (e.g. \"webhook.deliver\"). character
#' @field maxAttempts  integer
#' @field payload  \link{AnyType} [optional]
#' @field runAt Earliest execution time; None = run now. character [optional]
#' @field status pending | running | done | failed \link{JobStatus}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Job <- R6::R6Class(
  "Job",
  public = list(
    `attempts` = NULL,
    `jobType` = NULL,
    `maxAttempts` = NULL,
    `payload` = NULL,
    `runAt` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new Job class.
    #'
    #' @param jobType Discriminator the worker dispatches on (e.g. \"webhook.deliver\").
    #' @param maxAttempts maxAttempts
    #' @param status pending | running | done | failed
    #' @param attempts attempts
    #' @param payload payload
    #' @param runAt Earliest execution time; None = run now.
    #' @param ... Other optional arguments.
    initialize = function(`jobType`, `maxAttempts`, `status`, `attempts` = NULL, `payload` = NULL, `runAt` = NULL, ...) {
      if (!missing(`jobType`)) {
        if (!(is.character(`jobType`) && length(`jobType`) == 1)) {
          stop(paste("Error! Invalid data for `jobType`. Must be a string:", `jobType`))
        }
        self$`jobType` <- `jobType`
      }
      if (!missing(`maxAttempts`)) {
        if (!(is.numeric(`maxAttempts`) && length(`maxAttempts`) == 1)) {
          stop(paste("Error! Invalid data for `maxAttempts`. Must be an integer:", `maxAttempts`))
        }
        self$`maxAttempts` <- `maxAttempts`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`attempts`)) {
        if (!(is.numeric(`attempts`) && length(`attempts`) == 1)) {
          stop(paste("Error! Invalid data for `attempts`. Must be an integer:", `attempts`))
        }
        self$`attempts` <- `attempts`
      }
      if (!is.null(`payload`)) {
        stopifnot(R6::is.R6(`payload`))
        self$`payload` <- `payload`
      }
      if (!is.null(`runAt`)) {
        if (!is.character(`runAt`)) {
          stop(paste("Error! Invalid data for `runAt`. Must be a string:", `runAt`))
        }
        self$`runAt` <- `runAt`
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
    #' @return Job as a base R list.
    #' @examples
    #' # convert array of Job (x) to a data frame
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
    #' Convert Job to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      JobObject <- list()
      if (!is.null(self$`attempts`)) {
        JobObject[["attempts"]] <-
          self$`attempts`
      }
      if (!is.null(self$`jobType`)) {
        JobObject[["jobType"]] <-
          self$`jobType`
      }
      if (!is.null(self$`maxAttempts`)) {
        JobObject[["maxAttempts"]] <-
          self$`maxAttempts`
      }
      if (!is.null(self$`payload`)) {
        JobObject[["payload"]] <-
          self$extractSimpleType(self$`payload`)
      }
      if (!is.null(self$`runAt`)) {
        JobObject[["runAt"]] <-
          self$`runAt`
      }
      if (!is.null(self$`status`)) {
        JobObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      return(JobObject)
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
    #' Deserialize JSON string into an instance of Job
    #'
    #' @param input_json the JSON input
    #' @return the instance of Job
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`attempts`)) {
        self$`attempts` <- this_object$`attempts`
      }
      if (!is.null(this_object$`jobType`)) {
        self$`jobType` <- this_object$`jobType`
      }
      if (!is.null(this_object$`maxAttempts`)) {
        self$`maxAttempts` <- this_object$`maxAttempts`
      }
      if (!is.null(this_object$`payload`)) {
        `payload_object` <- AnyType$new()
        `payload_object`$fromJSON(jsonlite::toJSON(this_object$`payload`, auto_unbox = TRUE, digits = NA))
        self$`payload` <- `payload_object`
      }
      if (!is.null(this_object$`runAt`)) {
        self$`runAt` <- this_object$`runAt`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- JobStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Job in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Job
    #'
    #' @param input_json the JSON input
    #' @return the instance of Job
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`attempts` <- this_object$`attempts`
      self$`jobType` <- this_object$`jobType`
      self$`maxAttempts` <- this_object$`maxAttempts`
      self$`payload` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`payload`, auto_unbox = TRUE, digits = NA))
      self$`runAt` <- this_object$`runAt`
      self$`status` <- JobStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Job and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `jobType`
      if (!is.null(input_json$`jobType`)) {
        if (!(is.character(input_json$`jobType`) && length(input_json$`jobType`) == 1)) {
          stop(paste("Error! Invalid data for `jobType`. Must be a string:", input_json$`jobType`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Job: the required field `jobType` is missing."))
      }
      # check the required field `maxAttempts`
      if (!is.null(input_json$`maxAttempts`)) {
        if (!(is.numeric(input_json$`maxAttempts`) && length(input_json$`maxAttempts`) == 1)) {
          stop(paste("Error! Invalid data for `maxAttempts`. Must be an integer:", input_json$`maxAttempts`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Job: the required field `maxAttempts` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Job: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Job
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `jobType` is null
      if (is.null(self$`jobType`)) {
        return(FALSE)
      }

      # check if the required `maxAttempts` is null
      if (is.null(self$`maxAttempts`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
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
      # check if the required `jobType` is null
      if (is.null(self$`jobType`)) {
        invalid_fields["jobType"] <- "Non-nullable required field `jobType` cannot be null."
      }

      # check if the required `maxAttempts` is null
      if (is.null(self$`maxAttempts`)) {
        invalid_fields["maxAttempts"] <- "Non-nullable required field `maxAttempts` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# Job$unlock()
#
## Below is an example to define the print function
# Job$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Job$lock()

