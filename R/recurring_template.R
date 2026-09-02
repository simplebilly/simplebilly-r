#' Create a new RecurringTemplate
#'
#' @description
#' RecurringTemplate Class
#'
#' @docType class
#' @title RecurringTemplate
#' @description RecurringTemplate Class
#' @format An \code{R6Class} generator object
#' @field created_at  character
#' @field deleted_at  character [optional]
#' @field end_date  character [optional]
#' @field execution_interval  character
#' @field execution_status  character
#' @field finalize  character
#' @field last_executed_at  character [optional]
#' @field name  character
#' @field next_execution_at  character [optional]
#' @field start_date  character
#' @field template_id  character
#' @field template_type  character
#' @field updated_at  character [optional]
#' @field voucher_data  \link{AnyType}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RecurringTemplate <- R6::R6Class(
  "RecurringTemplate",
  public = list(
    `created_at` = NULL,
    `deleted_at` = NULL,
    `end_date` = NULL,
    `execution_interval` = NULL,
    `execution_status` = NULL,
    `finalize` = NULL,
    `last_executed_at` = NULL,
    `name` = NULL,
    `next_execution_at` = NULL,
    `start_date` = NULL,
    `template_id` = NULL,
    `template_type` = NULL,
    `updated_at` = NULL,
    `voucher_data` = NULL,

    #' @description
    #' Initialize a new RecurringTemplate class.
    #'
    #' @param created_at created_at
    #' @param execution_interval execution_interval
    #' @param execution_status execution_status
    #' @param finalize finalize
    #' @param name name
    #' @param start_date start_date
    #' @param template_id template_id
    #' @param template_type template_type
    #' @param voucher_data voucher_data
    #' @param deleted_at deleted_at
    #' @param end_date end_date
    #' @param last_executed_at last_executed_at
    #' @param next_execution_at next_execution_at
    #' @param updated_at updated_at
    #' @param ... Other optional arguments.
    initialize = function(`created_at`, `execution_interval`, `execution_status`, `finalize`, `name`, `start_date`, `template_id`, `template_type`, `voucher_data`, `deleted_at` = NULL, `end_date` = NULL, `last_executed_at` = NULL, `next_execution_at` = NULL, `updated_at` = NULL, ...) {
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`execution_interval`)) {
        if (!(is.character(`execution_interval`) && length(`execution_interval`) == 1)) {
          stop(paste("Error! Invalid data for `execution_interval`. Must be a string:", `execution_interval`))
        }
        self$`execution_interval` <- `execution_interval`
      }
      if (!missing(`execution_status`)) {
        if (!(is.character(`execution_status`) && length(`execution_status`) == 1)) {
          stop(paste("Error! Invalid data for `execution_status`. Must be a string:", `execution_status`))
        }
        self$`execution_status` <- `execution_status`
      }
      if (!missing(`finalize`)) {
        if (!(is.logical(`finalize`) && length(`finalize`) == 1)) {
          stop(paste("Error! Invalid data for `finalize`. Must be a boolean:", `finalize`))
        }
        self$`finalize` <- `finalize`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`start_date`)) {
        if (!(is.character(`start_date`) && length(`start_date`) == 1)) {
          stop(paste("Error! Invalid data for `start_date`. Must be a string:", `start_date`))
        }
        self$`start_date` <- `start_date`
      }
      if (!missing(`template_id`)) {
        if (!(is.character(`template_id`) && length(`template_id`) == 1)) {
          stop(paste("Error! Invalid data for `template_id`. Must be a string:", `template_id`))
        }
        self$`template_id` <- `template_id`
      }
      if (!missing(`template_type`)) {
        if (!(is.character(`template_type`) && length(`template_type`) == 1)) {
          stop(paste("Error! Invalid data for `template_type`. Must be a string:", `template_type`))
        }
        self$`template_type` <- `template_type`
      }
      if (!missing(`voucher_data`)) {
        stopifnot(R6::is.R6(`voucher_data`))
        self$`voucher_data` <- `voucher_data`
      }
      if (!is.null(`deleted_at`)) {
        if (!(is.character(`deleted_at`) && length(`deleted_at`) == 1)) {
          stop(paste("Error! Invalid data for `deleted_at`. Must be a string:", `deleted_at`))
        }
        self$`deleted_at` <- `deleted_at`
      }
      if (!is.null(`end_date`)) {
        if (!is.character(`end_date`)) {
          stop(paste("Error! Invalid data for `end_date`. Must be a string:", `end_date`))
        }
        self$`end_date` <- `end_date`
      }
      if (!is.null(`last_executed_at`)) {
        if (!is.character(`last_executed_at`)) {
          stop(paste("Error! Invalid data for `last_executed_at`. Must be a string:", `last_executed_at`))
        }
        self$`last_executed_at` <- `last_executed_at`
      }
      if (!is.null(`next_execution_at`)) {
        if (!is.character(`next_execution_at`)) {
          stop(paste("Error! Invalid data for `next_execution_at`. Must be a string:", `next_execution_at`))
        }
        self$`next_execution_at` <- `next_execution_at`
      }
      if (!is.null(`updated_at`)) {
        if (!(is.character(`updated_at`) && length(`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
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
    #' @return RecurringTemplate as a base R list.
    #' @examples
    #' # convert array of RecurringTemplate (x) to a data frame
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
    #' Convert RecurringTemplate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RecurringTemplateObject <- list()
      if (!is.null(self$`created_at`)) {
        RecurringTemplateObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`deleted_at`)) {
        RecurringTemplateObject[["deleted_at"]] <-
          self$`deleted_at`
      }
      if (!is.null(self$`end_date`)) {
        RecurringTemplateObject[["end_date"]] <-
          self$`end_date`
      }
      if (!is.null(self$`execution_interval`)) {
        RecurringTemplateObject[["execution_interval"]] <-
          self$`execution_interval`
      }
      if (!is.null(self$`execution_status`)) {
        RecurringTemplateObject[["execution_status"]] <-
          self$`execution_status`
      }
      if (!is.null(self$`finalize`)) {
        RecurringTemplateObject[["finalize"]] <-
          self$`finalize`
      }
      if (!is.null(self$`last_executed_at`)) {
        RecurringTemplateObject[["last_executed_at"]] <-
          self$`last_executed_at`
      }
      if (!is.null(self$`name`)) {
        RecurringTemplateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`next_execution_at`)) {
        RecurringTemplateObject[["next_execution_at"]] <-
          self$`next_execution_at`
      }
      if (!is.null(self$`start_date`)) {
        RecurringTemplateObject[["start_date"]] <-
          self$`start_date`
      }
      if (!is.null(self$`template_id`)) {
        RecurringTemplateObject[["template_id"]] <-
          self$`template_id`
      }
      if (!is.null(self$`template_type`)) {
        RecurringTemplateObject[["template_type"]] <-
          self$`template_type`
      }
      if (!is.null(self$`updated_at`)) {
        RecurringTemplateObject[["updated_at"]] <-
          self$`updated_at`
      }
      if (!is.null(self$`voucher_data`)) {
        RecurringTemplateObject[["voucher_data"]] <-
          self$extractSimpleType(self$`voucher_data`)
      }
      return(RecurringTemplateObject)
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
    #' Deserialize JSON string into an instance of RecurringTemplate
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecurringTemplate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`deleted_at`)) {
        self$`deleted_at` <- this_object$`deleted_at`
      }
      if (!is.null(this_object$`end_date`)) {
        self$`end_date` <- this_object$`end_date`
      }
      if (!is.null(this_object$`execution_interval`)) {
        self$`execution_interval` <- this_object$`execution_interval`
      }
      if (!is.null(this_object$`execution_status`)) {
        self$`execution_status` <- this_object$`execution_status`
      }
      if (!is.null(this_object$`finalize`)) {
        self$`finalize` <- this_object$`finalize`
      }
      if (!is.null(this_object$`last_executed_at`)) {
        self$`last_executed_at` <- this_object$`last_executed_at`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`next_execution_at`)) {
        self$`next_execution_at` <- this_object$`next_execution_at`
      }
      if (!is.null(this_object$`start_date`)) {
        self$`start_date` <- this_object$`start_date`
      }
      if (!is.null(this_object$`template_id`)) {
        self$`template_id` <- this_object$`template_id`
      }
      if (!is.null(this_object$`template_type`)) {
        self$`template_type` <- this_object$`template_type`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      if (!is.null(this_object$`voucher_data`)) {
        `voucher_data_object` <- AnyType$new()
        `voucher_data_object`$fromJSON(jsonlite::toJSON(this_object$`voucher_data`, auto_unbox = TRUE, digits = NA))
        self$`voucher_data` <- `voucher_data_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RecurringTemplate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RecurringTemplate
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecurringTemplate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created_at` <- this_object$`created_at`
      self$`deleted_at` <- this_object$`deleted_at`
      self$`end_date` <- this_object$`end_date`
      self$`execution_interval` <- this_object$`execution_interval`
      self$`execution_status` <- this_object$`execution_status`
      self$`finalize` <- this_object$`finalize`
      self$`last_executed_at` <- this_object$`last_executed_at`
      self$`name` <- this_object$`name`
      self$`next_execution_at` <- this_object$`next_execution_at`
      self$`start_date` <- this_object$`start_date`
      self$`template_id` <- this_object$`template_id`
      self$`template_type` <- this_object$`template_type`
      self$`updated_at` <- this_object$`updated_at`
      self$`voucher_data` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`voucher_data`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to RecurringTemplate and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplate: the required field `created_at` is missing."))
      }
      # check the required field `execution_interval`
      if (!is.null(input_json$`execution_interval`)) {
        if (!(is.character(input_json$`execution_interval`) && length(input_json$`execution_interval`) == 1)) {
          stop(paste("Error! Invalid data for `execution_interval`. Must be a string:", input_json$`execution_interval`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplate: the required field `execution_interval` is missing."))
      }
      # check the required field `execution_status`
      if (!is.null(input_json$`execution_status`)) {
        if (!(is.character(input_json$`execution_status`) && length(input_json$`execution_status`) == 1)) {
          stop(paste("Error! Invalid data for `execution_status`. Must be a string:", input_json$`execution_status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplate: the required field `execution_status` is missing."))
      }
      # check the required field `finalize`
      if (!is.null(input_json$`finalize`)) {
        if (!(is.logical(input_json$`finalize`) && length(input_json$`finalize`) == 1)) {
          stop(paste("Error! Invalid data for `finalize`. Must be a boolean:", input_json$`finalize`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplate: the required field `finalize` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplate: the required field `name` is missing."))
      }
      # check the required field `start_date`
      if (!is.null(input_json$`start_date`)) {
        if (!(is.character(input_json$`start_date`) && length(input_json$`start_date`) == 1)) {
          stop(paste("Error! Invalid data for `start_date`. Must be a string:", input_json$`start_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplate: the required field `start_date` is missing."))
      }
      # check the required field `template_id`
      if (!is.null(input_json$`template_id`)) {
        if (!(is.character(input_json$`template_id`) && length(input_json$`template_id`) == 1)) {
          stop(paste("Error! Invalid data for `template_id`. Must be a string:", input_json$`template_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplate: the required field `template_id` is missing."))
      }
      # check the required field `template_type`
      if (!is.null(input_json$`template_type`)) {
        if (!(is.character(input_json$`template_type`) && length(input_json$`template_type`) == 1)) {
          stop(paste("Error! Invalid data for `template_type`. Must be a string:", input_json$`template_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplate: the required field `template_type` is missing."))
      }
      # check the required field `voucher_data`
      if (!is.null(input_json$`voucher_data`)) {
        stopifnot(R6::is.R6(input_json$`voucher_data`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplate: the required field `voucher_data` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RecurringTemplate
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

      # check if the required `execution_interval` is null
      if (is.null(self$`execution_interval`)) {
        return(FALSE)
      }

      # check if the required `execution_status` is null
      if (is.null(self$`execution_status`)) {
        return(FALSE)
      }

      # check if the required `finalize` is null
      if (is.null(self$`finalize`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `start_date` is null
      if (is.null(self$`start_date`)) {
        return(FALSE)
      }

      # check if the required `template_id` is null
      if (is.null(self$`template_id`)) {
        return(FALSE)
      }

      # check if the required `template_type` is null
      if (is.null(self$`template_type`)) {
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

      # check if the required `execution_interval` is null
      if (is.null(self$`execution_interval`)) {
        invalid_fields["execution_interval"] <- "Non-nullable required field `execution_interval` cannot be null."
      }

      # check if the required `execution_status` is null
      if (is.null(self$`execution_status`)) {
        invalid_fields["execution_status"] <- "Non-nullable required field `execution_status` cannot be null."
      }

      # check if the required `finalize` is null
      if (is.null(self$`finalize`)) {
        invalid_fields["finalize"] <- "Non-nullable required field `finalize` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `start_date` is null
      if (is.null(self$`start_date`)) {
        invalid_fields["start_date"] <- "Non-nullable required field `start_date` cannot be null."
      }

      # check if the required `template_id` is null
      if (is.null(self$`template_id`)) {
        invalid_fields["template_id"] <- "Non-nullable required field `template_id` cannot be null."
      }

      # check if the required `template_type` is null
      if (is.null(self$`template_type`)) {
        invalid_fields["template_type"] <- "Non-nullable required field `template_type` cannot be null."
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
# RecurringTemplate$unlock()
#
## Below is an example to define the print function
# RecurringTemplate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RecurringTemplate$lock()

