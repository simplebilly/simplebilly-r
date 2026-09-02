#' Create a new TimeEntryDto
#'
#' @description
#' API shape returned to the frontend (matches `frontend/src/types/time-entry.ts`).
#'
#' @docType class
#' @title TimeEntryDto
#' @description TimeEntryDto Class
#' @format An \code{R6Class} generator object
#' @field clock_in  character [optional]
#' @field clock_out  character [optional]
#' @field created_at  character
#' @field date  character
#' @field employee_id  character
#' @field hours  character [optional]
#' @field notes  character [optional]
#' @field time_entry_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TimeEntryDto <- R6::R6Class(
  "TimeEntryDto",
  public = list(
    `clock_in` = NULL,
    `clock_out` = NULL,
    `created_at` = NULL,
    `date` = NULL,
    `employee_id` = NULL,
    `hours` = NULL,
    `notes` = NULL,
    `time_entry_id` = NULL,

    #' @description
    #' Initialize a new TimeEntryDto class.
    #'
    #' @param created_at created_at
    #' @param date date
    #' @param employee_id employee_id
    #' @param time_entry_id time_entry_id
    #' @param clock_in clock_in
    #' @param clock_out clock_out
    #' @param hours hours
    #' @param notes notes
    #' @param ... Other optional arguments.
    initialize = function(`created_at`, `date`, `employee_id`, `time_entry_id`, `clock_in` = NULL, `clock_out` = NULL, `hours` = NULL, `notes` = NULL, ...) {
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`date`)) {
        if (!(is.character(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!missing(`employee_id`)) {
        if (!(is.character(`employee_id`) && length(`employee_id`) == 1)) {
          stop(paste("Error! Invalid data for `employee_id`. Must be a string:", `employee_id`))
        }
        self$`employee_id` <- `employee_id`
      }
      if (!missing(`time_entry_id`)) {
        if (!(is.character(`time_entry_id`) && length(`time_entry_id`) == 1)) {
          stop(paste("Error! Invalid data for `time_entry_id`. Must be a string:", `time_entry_id`))
        }
        self$`time_entry_id` <- `time_entry_id`
      }
      if (!is.null(`clock_in`)) {
        if (!is.character(`clock_in`)) {
          stop(paste("Error! Invalid data for `clock_in`. Must be a string:", `clock_in`))
        }
        self$`clock_in` <- `clock_in`
      }
      if (!is.null(`clock_out`)) {
        if (!is.character(`clock_out`)) {
          stop(paste("Error! Invalid data for `clock_out`. Must be a string:", `clock_out`))
        }
        self$`clock_out` <- `clock_out`
      }
      if (!is.null(`hours`)) {
        if (!(is.character(`hours`) && length(`hours`) == 1)) {
          stop(paste("Error! Invalid data for `hours`. Must be a string:", `hours`))
        }
        self$`hours` <- `hours`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
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
    #' @return TimeEntryDto as a base R list.
    #' @examples
    #' # convert array of TimeEntryDto (x) to a data frame
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
    #' Convert TimeEntryDto to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TimeEntryDtoObject <- list()
      if (!is.null(self$`clock_in`)) {
        TimeEntryDtoObject[["clock_in"]] <-
          self$`clock_in`
      }
      if (!is.null(self$`clock_out`)) {
        TimeEntryDtoObject[["clock_out"]] <-
          self$`clock_out`
      }
      if (!is.null(self$`created_at`)) {
        TimeEntryDtoObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`date`)) {
        TimeEntryDtoObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`employee_id`)) {
        TimeEntryDtoObject[["employee_id"]] <-
          self$`employee_id`
      }
      if (!is.null(self$`hours`)) {
        TimeEntryDtoObject[["hours"]] <-
          self$`hours`
      }
      if (!is.null(self$`notes`)) {
        TimeEntryDtoObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`time_entry_id`)) {
        TimeEntryDtoObject[["time_entry_id"]] <-
          self$`time_entry_id`
      }
      return(TimeEntryDtoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TimeEntryDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of TimeEntryDto
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`clock_in`)) {
        self$`clock_in` <- this_object$`clock_in`
      }
      if (!is.null(this_object$`clock_out`)) {
        self$`clock_out` <- this_object$`clock_out`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`employee_id`)) {
        self$`employee_id` <- this_object$`employee_id`
      }
      if (!is.null(this_object$`hours`)) {
        self$`hours` <- this_object$`hours`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`time_entry_id`)) {
        self$`time_entry_id` <- this_object$`time_entry_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TimeEntryDto in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TimeEntryDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of TimeEntryDto
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`clock_in` <- this_object$`clock_in`
      self$`clock_out` <- this_object$`clock_out`
      self$`created_at` <- this_object$`created_at`
      self$`date` <- this_object$`date`
      self$`employee_id` <- this_object$`employee_id`
      self$`hours` <- this_object$`hours`
      self$`notes` <- this_object$`notes`
      self$`time_entry_id` <- this_object$`time_entry_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to TimeEntryDto and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TimeEntryDto: the required field `created_at` is missing."))
      }
      # check the required field `date`
      if (!is.null(input_json$`date`)) {
        if (!(is.character(input_json$`date`) && length(input_json$`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", input_json$`date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TimeEntryDto: the required field `date` is missing."))
      }
      # check the required field `employee_id`
      if (!is.null(input_json$`employee_id`)) {
        if (!(is.character(input_json$`employee_id`) && length(input_json$`employee_id`) == 1)) {
          stop(paste("Error! Invalid data for `employee_id`. Must be a string:", input_json$`employee_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TimeEntryDto: the required field `employee_id` is missing."))
      }
      # check the required field `time_entry_id`
      if (!is.null(input_json$`time_entry_id`)) {
        if (!(is.character(input_json$`time_entry_id`) && length(input_json$`time_entry_id`) == 1)) {
          stop(paste("Error! Invalid data for `time_entry_id`. Must be a string:", input_json$`time_entry_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TimeEntryDto: the required field `time_entry_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TimeEntryDto
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `date` is null
      if (is.null(self$`date`)) {
        return(FALSE)
      }

      # check if the required `employee_id` is null
      if (is.null(self$`employee_id`)) {
        return(FALSE)
      }

      # check if the required `time_entry_id` is null
      if (is.null(self$`time_entry_id`)) {
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
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `date` is null
      if (is.null(self$`date`)) {
        invalid_fields["date"] <- "Non-nullable required field `date` cannot be null."
      }

      # check if the required `employee_id` is null
      if (is.null(self$`employee_id`)) {
        invalid_fields["employee_id"] <- "Non-nullable required field `employee_id` cannot be null."
      }

      # check if the required `time_entry_id` is null
      if (is.null(self$`time_entry_id`)) {
        invalid_fields["time_entry_id"] <- "Non-nullable required field `time_entry_id` cannot be null."
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
# TimeEntryDto$unlock()
#
## Below is an example to define the print function
# TimeEntryDto$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TimeEntryDto$lock()

