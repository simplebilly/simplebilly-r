#' Create a new ActivityCreate
#'
#' @description
#' ActivityCreate Class
#'
#' @docType class
#' @title ActivityCreate
#' @description ActivityCreate Class
#' @format An \code{R6Class} generator object
#' @field activityType One of: call | email | meeting | task | note \link{ActivityType}
#' @field assignedTo User responsible (`employee.employee_id`). character [optional]
#' @field contactId Contact this activity belongs to (`contact.contact_id`). References the contact entity. character [optional]
#' @field description  character [optional]
#' @field dueDate Follow-up / Wiedervorlage date. Open activities with a due date in the past are overdue. character [optional]
#' @field reminderDate When to remind about the follow-up. character [optional]
#' @field status One of: open | done | cancelled \link{ActivityStatus}
#' @field subject Short subject line. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ActivityCreate <- R6::R6Class(
  "ActivityCreate",
  public = list(
    `activityType` = NULL,
    `assignedTo` = NULL,
    `contactId` = NULL,
    `description` = NULL,
    `dueDate` = NULL,
    `reminderDate` = NULL,
    `status` = NULL,
    `subject` = NULL,

    #' @description
    #' Initialize a new ActivityCreate class.
    #'
    #' @param activityType One of: call | email | meeting | task | note
    #' @param status One of: open | done | cancelled
    #' @param subject Short subject line.
    #' @param assignedTo User responsible (`employee.employee_id`).
    #' @param contactId Contact this activity belongs to (`contact.contact_id`). References the contact entity.
    #' @param description description
    #' @param dueDate Follow-up / Wiedervorlage date. Open activities with a due date in the past are overdue.
    #' @param reminderDate When to remind about the follow-up.
    #' @param ... Other optional arguments.
    initialize = function(`activityType`, `status`, `subject`, `assignedTo` = NULL, `contactId` = NULL, `description` = NULL, `dueDate` = NULL, `reminderDate` = NULL, ...) {
      if (!missing(`activityType`)) {
        if (!(`activityType` %in% c())) {
          stop(paste("Error! \"", `activityType`, "\" cannot be assigned to `activityType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`activityType`))
        self$`activityType` <- `activityType`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`subject`)) {
        if (!(is.character(`subject`) && length(`subject`) == 1)) {
          stop(paste("Error! Invalid data for `subject`. Must be a string:", `subject`))
        }
        self$`subject` <- `subject`
      }
      if (!is.null(`assignedTo`)) {
        if (!(is.character(`assignedTo`) && length(`assignedTo`) == 1)) {
          stop(paste("Error! Invalid data for `assignedTo`. Must be a string:", `assignedTo`))
        }
        self$`assignedTo` <- `assignedTo`
      }
      if (!is.null(`contactId`)) {
        if (!(is.character(`contactId`) && length(`contactId`) == 1)) {
          stop(paste("Error! Invalid data for `contactId`. Must be a string:", `contactId`))
        }
        self$`contactId` <- `contactId`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`dueDate`)) {
        if (!is.character(`dueDate`)) {
          stop(paste("Error! Invalid data for `dueDate`. Must be a string:", `dueDate`))
        }
        self$`dueDate` <- `dueDate`
      }
      if (!is.null(`reminderDate`)) {
        if (!is.character(`reminderDate`)) {
          stop(paste("Error! Invalid data for `reminderDate`. Must be a string:", `reminderDate`))
        }
        self$`reminderDate` <- `reminderDate`
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
    #' @return ActivityCreate as a base R list.
    #' @examples
    #' # convert array of ActivityCreate (x) to a data frame
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
    #' Convert ActivityCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ActivityCreateObject <- list()
      if (!is.null(self$`activityType`)) {
        ActivityCreateObject[["activityType"]] <-
          self$extractSimpleType(self$`activityType`)
      }
      if (!is.null(self$`assignedTo`)) {
        ActivityCreateObject[["assignedTo"]] <-
          self$`assignedTo`
      }
      if (!is.null(self$`contactId`)) {
        ActivityCreateObject[["contactId"]] <-
          self$`contactId`
      }
      if (!is.null(self$`description`)) {
        ActivityCreateObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`dueDate`)) {
        ActivityCreateObject[["dueDate"]] <-
          self$`dueDate`
      }
      if (!is.null(self$`reminderDate`)) {
        ActivityCreateObject[["reminderDate"]] <-
          self$`reminderDate`
      }
      if (!is.null(self$`status`)) {
        ActivityCreateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`subject`)) {
        ActivityCreateObject[["subject"]] <-
          self$`subject`
      }
      return(ActivityCreateObject)
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
    #' Deserialize JSON string into an instance of ActivityCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ActivityCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`activityType`)) {
        `activitytype_object` <- ActivityType$new()
        `activitytype_object`$fromJSON(jsonlite::toJSON(this_object$`activityType`, auto_unbox = TRUE, digits = NA))
        self$`activityType` <- `activitytype_object`
      }
      if (!is.null(this_object$`assignedTo`)) {
        self$`assignedTo` <- this_object$`assignedTo`
      }
      if (!is.null(this_object$`contactId`)) {
        self$`contactId` <- this_object$`contactId`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`dueDate`)) {
        self$`dueDate` <- this_object$`dueDate`
      }
      if (!is.null(this_object$`reminderDate`)) {
        self$`reminderDate` <- this_object$`reminderDate`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- ActivityStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`subject`)) {
        self$`subject` <- this_object$`subject`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ActivityCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ActivityCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ActivityCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`activityType` <- ActivityType$new()$fromJSON(jsonlite::toJSON(this_object$`activityType`, auto_unbox = TRUE, digits = NA))
      self$`assignedTo` <- this_object$`assignedTo`
      self$`contactId` <- this_object$`contactId`
      self$`description` <- this_object$`description`
      self$`dueDate` <- this_object$`dueDate`
      self$`reminderDate` <- this_object$`reminderDate`
      self$`status` <- ActivityStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`subject` <- this_object$`subject`
      self
    },

    #' @description
    #' Validate JSON input with respect to ActivityCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `activityType`
      if (!is.null(input_json$`activityType`)) {
        stopifnot(R6::is.R6(input_json$`activityType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ActivityCreate: the required field `activityType` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ActivityCreate: the required field `status` is missing."))
      }
      # check the required field `subject`
      if (!is.null(input_json$`subject`)) {
        if (!(is.character(input_json$`subject`) && length(input_json$`subject`) == 1)) {
          stop(paste("Error! Invalid data for `subject`. Must be a string:", input_json$`subject`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ActivityCreate: the required field `subject` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ActivityCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `activityType` is null
      if (is.null(self$`activityType`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `subject` is null
      if (is.null(self$`subject`)) {
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
      # check if the required `activityType` is null
      if (is.null(self$`activityType`)) {
        invalid_fields["activityType"] <- "Non-nullable required field `activityType` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `subject` is null
      if (is.null(self$`subject`)) {
        invalid_fields["subject"] <- "Non-nullable required field `subject` cannot be null."
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
# ActivityCreate$unlock()
#
## Below is an example to define the print function
# ActivityCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ActivityCreate$lock()

