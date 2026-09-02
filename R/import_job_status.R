#' Create a new ImportJobStatus
#'
#' @description
#' ImportJobStatus Class
#'
#' @docType class
#' @title ImportJobStatus
#' @description ImportJobStatus Class
#' @format An \code{R6Class} generator object
#' @field error Set only when the job failed. character [optional]
#' @field job_id  character
#' @field processed  integer
#' @field progress 0–100 integer
#' @field provider Which competitor the import came from (lexoffice | billbee); the frontend uses it to label the job. Absent for legacy jobs. character [optional]
#' @field stage queued | fetching | downloading | importing | done character
#' @field status pending | running | done | failed character
#' @field total  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ImportJobStatus <- R6::R6Class(
  "ImportJobStatus",
  public = list(
    `error` = NULL,
    `job_id` = NULL,
    `processed` = NULL,
    `progress` = NULL,
    `provider` = NULL,
    `stage` = NULL,
    `status` = NULL,
    `total` = NULL,

    #' @description
    #' Initialize a new ImportJobStatus class.
    #'
    #' @param job_id job_id
    #' @param processed processed
    #' @param progress 0–100
    #' @param stage queued | fetching | downloading | importing | done
    #' @param status pending | running | done | failed
    #' @param total total
    #' @param error Set only when the job failed.
    #' @param provider Which competitor the import came from (lexoffice | billbee); the frontend uses it to label the job. Absent for legacy jobs.
    #' @param ... Other optional arguments.
    initialize = function(`job_id`, `processed`, `progress`, `stage`, `status`, `total`, `error` = NULL, `provider` = NULL, ...) {
      if (!missing(`job_id`)) {
        if (!(is.character(`job_id`) && length(`job_id`) == 1)) {
          stop(paste("Error! Invalid data for `job_id`. Must be a string:", `job_id`))
        }
        self$`job_id` <- `job_id`
      }
      if (!missing(`processed`)) {
        if (!(is.numeric(`processed`) && length(`processed`) == 1)) {
          stop(paste("Error! Invalid data for `processed`. Must be an integer:", `processed`))
        }
        self$`processed` <- `processed`
      }
      if (!missing(`progress`)) {
        if (!(is.numeric(`progress`) && length(`progress`) == 1)) {
          stop(paste("Error! Invalid data for `progress`. Must be an integer:", `progress`))
        }
        self$`progress` <- `progress`
      }
      if (!missing(`stage`)) {
        if (!(is.character(`stage`) && length(`stage`) == 1)) {
          stop(paste("Error! Invalid data for `stage`. Must be a string:", `stage`))
        }
        self$`stage` <- `stage`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
      }
      if (!is.null(`provider`)) {
        if (!(is.character(`provider`) && length(`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", `provider`))
        }
        self$`provider` <- `provider`
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
    #' @return ImportJobStatus as a base R list.
    #' @examples
    #' # convert array of ImportJobStatus (x) to a data frame
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
    #' Convert ImportJobStatus to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ImportJobStatusObject <- list()
      if (!is.null(self$`error`)) {
        ImportJobStatusObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`job_id`)) {
        ImportJobStatusObject[["job_id"]] <-
          self$`job_id`
      }
      if (!is.null(self$`processed`)) {
        ImportJobStatusObject[["processed"]] <-
          self$`processed`
      }
      if (!is.null(self$`progress`)) {
        ImportJobStatusObject[["progress"]] <-
          self$`progress`
      }
      if (!is.null(self$`provider`)) {
        ImportJobStatusObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`stage`)) {
        ImportJobStatusObject[["stage"]] <-
          self$`stage`
      }
      if (!is.null(self$`status`)) {
        ImportJobStatusObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`total`)) {
        ImportJobStatusObject[["total"]] <-
          self$`total`
      }
      return(ImportJobStatusObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ImportJobStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportJobStatus
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`job_id`)) {
        self$`job_id` <- this_object$`job_id`
      }
      if (!is.null(this_object$`processed`)) {
        self$`processed` <- this_object$`processed`
      }
      if (!is.null(this_object$`progress`)) {
        self$`progress` <- this_object$`progress`
      }
      if (!is.null(this_object$`provider`)) {
        self$`provider` <- this_object$`provider`
      }
      if (!is.null(this_object$`stage`)) {
        self$`stage` <- this_object$`stage`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ImportJobStatus in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ImportJobStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportJobStatus
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`error` <- this_object$`error`
      self$`job_id` <- this_object$`job_id`
      self$`processed` <- this_object$`processed`
      self$`progress` <- this_object$`progress`
      self$`provider` <- this_object$`provider`
      self$`stage` <- this_object$`stage`
      self$`status` <- this_object$`status`
      self$`total` <- this_object$`total`
      self
    },

    #' @description
    #' Validate JSON input with respect to ImportJobStatus and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `job_id`
      if (!is.null(input_json$`job_id`)) {
        if (!(is.character(input_json$`job_id`) && length(input_json$`job_id`) == 1)) {
          stop(paste("Error! Invalid data for `job_id`. Must be a string:", input_json$`job_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportJobStatus: the required field `job_id` is missing."))
      }
      # check the required field `processed`
      if (!is.null(input_json$`processed`)) {
        if (!(is.numeric(input_json$`processed`) && length(input_json$`processed`) == 1)) {
          stop(paste("Error! Invalid data for `processed`. Must be an integer:", input_json$`processed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportJobStatus: the required field `processed` is missing."))
      }
      # check the required field `progress`
      if (!is.null(input_json$`progress`)) {
        if (!(is.numeric(input_json$`progress`) && length(input_json$`progress`) == 1)) {
          stop(paste("Error! Invalid data for `progress`. Must be an integer:", input_json$`progress`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportJobStatus: the required field `progress` is missing."))
      }
      # check the required field `stage`
      if (!is.null(input_json$`stage`)) {
        if (!(is.character(input_json$`stage`) && length(input_json$`stage`) == 1)) {
          stop(paste("Error! Invalid data for `stage`. Must be a string:", input_json$`stage`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportJobStatus: the required field `stage` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportJobStatus: the required field `status` is missing."))
      }
      # check the required field `total`
      if (!is.null(input_json$`total`)) {
        if (!(is.numeric(input_json$`total`) && length(input_json$`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", input_json$`total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportJobStatus: the required field `total` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ImportJobStatus
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `job_id` is null
      if (is.null(self$`job_id`)) {
        return(FALSE)
      }

      # check if the required `processed` is null
      if (is.null(self$`processed`)) {
        return(FALSE)
      }

      if (self$`processed` < 0) {
        return(FALSE)
      }

      # check if the required `progress` is null
      if (is.null(self$`progress`)) {
        return(FALSE)
      }

      if (self$`progress` < 0) {
        return(FALSE)
      }

      # check if the required `stage` is null
      if (is.null(self$`stage`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        return(FALSE)
      }

      if (self$`total` < 0) {
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
      # check if the required `job_id` is null
      if (is.null(self$`job_id`)) {
        invalid_fields["job_id"] <- "Non-nullable required field `job_id` cannot be null."
      }

      # check if the required `processed` is null
      if (is.null(self$`processed`)) {
        invalid_fields["processed"] <- "Non-nullable required field `processed` cannot be null."
      }

      if (self$`processed` < 0) {
        invalid_fields["processed"] <- "Invalid value for `processed`, must be bigger than or equal to 0."
      }

      # check if the required `progress` is null
      if (is.null(self$`progress`)) {
        invalid_fields["progress"] <- "Non-nullable required field `progress` cannot be null."
      }

      if (self$`progress` < 0) {
        invalid_fields["progress"] <- "Invalid value for `progress`, must be bigger than or equal to 0."
      }

      # check if the required `stage` is null
      if (is.null(self$`stage`)) {
        invalid_fields["stage"] <- "Non-nullable required field `stage` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        invalid_fields["total"] <- "Non-nullable required field `total` cannot be null."
      }

      if (self$`total` < 0) {
        invalid_fields["total"] <- "Invalid value for `total`, must be bigger than or equal to 0."
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
# ImportJobStatus$unlock()
#
## Below is an example to define the print function
# ImportJobStatus$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ImportJobStatus$lock()

