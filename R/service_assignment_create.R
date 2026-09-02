#' Create a new ServiceAssignmentCreate
#'
#' @description
#' ServiceAssignmentCreate Class
#'
#' @docType class
#' @title ServiceAssignmentCreate
#' @description ServiceAssignmentCreate Class
#' @format An \code{R6Class} generator object
#' @field employeeId References the employees entity. character [optional]
#' @field jobId References the service_jobs entity. character [optional]
#' @field notes  character [optional]
#' @field scheduledDate Work day the assignment is scheduled for. character [optional]
#' @field scheduledEnd Planned end time of the assignment. character [optional]
#' @field scheduledStart Planned start time of the assignment. character [optional]
#' @field status Assignment lifecycle status: \"planned\", \"confirmed\", \"en_route\", \"in_progress\", \"completed\" or \"cancelled\". \link{ServiceAssignmentStatus} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServiceAssignmentCreate <- R6::R6Class(
  "ServiceAssignmentCreate",
  public = list(
    `employeeId` = NULL,
    `jobId` = NULL,
    `notes` = NULL,
    `scheduledDate` = NULL,
    `scheduledEnd` = NULL,
    `scheduledStart` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new ServiceAssignmentCreate class.
    #'
    #' @param employeeId References the employees entity.
    #' @param jobId References the service_jobs entity.
    #' @param notes notes
    #' @param scheduledDate Work day the assignment is scheduled for.
    #' @param scheduledEnd Planned end time of the assignment.
    #' @param scheduledStart Planned start time of the assignment.
    #' @param status Assignment lifecycle status: \"planned\", \"confirmed\", \"en_route\", \"in_progress\", \"completed\" or \"cancelled\".
    #' @param ... Other optional arguments.
    initialize = function(`employeeId` = NULL, `jobId` = NULL, `notes` = NULL, `scheduledDate` = NULL, `scheduledEnd` = NULL, `scheduledStart` = NULL, `status` = NULL, ...) {
      if (!is.null(`employeeId`)) {
        if (!(is.character(`employeeId`) && length(`employeeId`) == 1)) {
          stop(paste("Error! Invalid data for `employeeId`. Must be a string:", `employeeId`))
        }
        self$`employeeId` <- `employeeId`
      }
      if (!is.null(`jobId`)) {
        if (!(is.character(`jobId`) && length(`jobId`) == 1)) {
          stop(paste("Error! Invalid data for `jobId`. Must be a string:", `jobId`))
        }
        self$`jobId` <- `jobId`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`scheduledDate`)) {
        if (!is.character(`scheduledDate`)) {
          stop(paste("Error! Invalid data for `scheduledDate`. Must be a string:", `scheduledDate`))
        }
        self$`scheduledDate` <- `scheduledDate`
      }
      if (!is.null(`scheduledEnd`)) {
        if (!(is.character(`scheduledEnd`) && length(`scheduledEnd`) == 1)) {
          stop(paste("Error! Invalid data for `scheduledEnd`. Must be a string:", `scheduledEnd`))
        }
        self$`scheduledEnd` <- `scheduledEnd`
      }
      if (!is.null(`scheduledStart`)) {
        if (!(is.character(`scheduledStart`) && length(`scheduledStart`) == 1)) {
          stop(paste("Error! Invalid data for `scheduledStart`. Must be a string:", `scheduledStart`))
        }
        self$`scheduledStart` <- `scheduledStart`
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
    #' @return ServiceAssignmentCreate as a base R list.
    #' @examples
    #' # convert array of ServiceAssignmentCreate (x) to a data frame
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
    #' Convert ServiceAssignmentCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServiceAssignmentCreateObject <- list()
      if (!is.null(self$`employeeId`)) {
        ServiceAssignmentCreateObject[["employeeId"]] <-
          self$`employeeId`
      }
      if (!is.null(self$`jobId`)) {
        ServiceAssignmentCreateObject[["jobId"]] <-
          self$`jobId`
      }
      if (!is.null(self$`notes`)) {
        ServiceAssignmentCreateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`scheduledDate`)) {
        ServiceAssignmentCreateObject[["scheduledDate"]] <-
          self$`scheduledDate`
      }
      if (!is.null(self$`scheduledEnd`)) {
        ServiceAssignmentCreateObject[["scheduledEnd"]] <-
          self$`scheduledEnd`
      }
      if (!is.null(self$`scheduledStart`)) {
        ServiceAssignmentCreateObject[["scheduledStart"]] <-
          self$`scheduledStart`
      }
      if (!is.null(self$`status`)) {
        ServiceAssignmentCreateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      return(ServiceAssignmentCreateObject)
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
    #' Deserialize JSON string into an instance of ServiceAssignmentCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServiceAssignmentCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`employeeId`)) {
        self$`employeeId` <- this_object$`employeeId`
      }
      if (!is.null(this_object$`jobId`)) {
        self$`jobId` <- this_object$`jobId`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`scheduledDate`)) {
        self$`scheduledDate` <- this_object$`scheduledDate`
      }
      if (!is.null(this_object$`scheduledEnd`)) {
        self$`scheduledEnd` <- this_object$`scheduledEnd`
      }
      if (!is.null(this_object$`scheduledStart`)) {
        self$`scheduledStart` <- this_object$`scheduledStart`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- ServiceAssignmentStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServiceAssignmentCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServiceAssignmentCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServiceAssignmentCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`employeeId` <- this_object$`employeeId`
      self$`jobId` <- this_object$`jobId`
      self$`notes` <- this_object$`notes`
      self$`scheduledDate` <- this_object$`scheduledDate`
      self$`scheduledEnd` <- this_object$`scheduledEnd`
      self$`scheduledStart` <- this_object$`scheduledStart`
      self$`status` <- ServiceAssignmentStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ServiceAssignmentCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServiceAssignmentCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# ServiceAssignmentCreate$unlock()
#
## Below is an example to define the print function
# ServiceAssignmentCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServiceAssignmentCreate$lock()

