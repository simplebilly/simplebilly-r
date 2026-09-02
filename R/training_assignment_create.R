#' Create a new TrainingAssignmentCreate
#'
#' @description
#' TrainingAssignmentCreate Class
#'
#' @docType class
#' @title TrainingAssignmentCreate
#' @description TrainingAssignmentCreate Class
#' @format An \code{R6Class} generator object
#' @field assignedBy  character [optional]
#' @field dueDate  character [optional]
#' @field employeeId  character [optional]
#' @field notes  character [optional]
#' @field status  \link{AssignmentStatus} [optional]
#' @field trainingId  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TrainingAssignmentCreate <- R6::R6Class(
  "TrainingAssignmentCreate",
  public = list(
    `assignedBy` = NULL,
    `dueDate` = NULL,
    `employeeId` = NULL,
    `notes` = NULL,
    `status` = NULL,
    `trainingId` = NULL,

    #' @description
    #' Initialize a new TrainingAssignmentCreate class.
    #'
    #' @param assignedBy assignedBy
    #' @param dueDate dueDate
    #' @param employeeId employeeId
    #' @param notes notes
    #' @param status status
    #' @param trainingId trainingId
    #' @param ... Other optional arguments.
    initialize = function(`assignedBy` = NULL, `dueDate` = NULL, `employeeId` = NULL, `notes` = NULL, `status` = NULL, `trainingId` = NULL, ...) {
      if (!is.null(`assignedBy`)) {
        if (!(is.character(`assignedBy`) && length(`assignedBy`) == 1)) {
          stop(paste("Error! Invalid data for `assignedBy`. Must be a string:", `assignedBy`))
        }
        self$`assignedBy` <- `assignedBy`
      }
      if (!is.null(`dueDate`)) {
        if (!is.character(`dueDate`)) {
          stop(paste("Error! Invalid data for `dueDate`. Must be a string:", `dueDate`))
        }
        self$`dueDate` <- `dueDate`
      }
      if (!is.null(`employeeId`)) {
        if (!(is.character(`employeeId`) && length(`employeeId`) == 1)) {
          stop(paste("Error! Invalid data for `employeeId`. Must be a string:", `employeeId`))
        }
        self$`employeeId` <- `employeeId`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`trainingId`)) {
        if (!(is.character(`trainingId`) && length(`trainingId`) == 1)) {
          stop(paste("Error! Invalid data for `trainingId`. Must be a string:", `trainingId`))
        }
        self$`trainingId` <- `trainingId`
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
    #' @return TrainingAssignmentCreate as a base R list.
    #' @examples
    #' # convert array of TrainingAssignmentCreate (x) to a data frame
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
    #' Convert TrainingAssignmentCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TrainingAssignmentCreateObject <- list()
      if (!is.null(self$`assignedBy`)) {
        TrainingAssignmentCreateObject[["assignedBy"]] <-
          self$`assignedBy`
      }
      if (!is.null(self$`dueDate`)) {
        TrainingAssignmentCreateObject[["dueDate"]] <-
          self$`dueDate`
      }
      if (!is.null(self$`employeeId`)) {
        TrainingAssignmentCreateObject[["employeeId"]] <-
          self$`employeeId`
      }
      if (!is.null(self$`notes`)) {
        TrainingAssignmentCreateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`status`)) {
        TrainingAssignmentCreateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`trainingId`)) {
        TrainingAssignmentCreateObject[["trainingId"]] <-
          self$`trainingId`
      }
      return(TrainingAssignmentCreateObject)
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
    #' Deserialize JSON string into an instance of TrainingAssignmentCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrainingAssignmentCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assignedBy`)) {
        self$`assignedBy` <- this_object$`assignedBy`
      }
      if (!is.null(this_object$`dueDate`)) {
        self$`dueDate` <- this_object$`dueDate`
      }
      if (!is.null(this_object$`employeeId`)) {
        self$`employeeId` <- this_object$`employeeId`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- AssignmentStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`trainingId`)) {
        self$`trainingId` <- this_object$`trainingId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TrainingAssignmentCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TrainingAssignmentCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrainingAssignmentCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assignedBy` <- this_object$`assignedBy`
      self$`dueDate` <- this_object$`dueDate`
      self$`employeeId` <- this_object$`employeeId`
      self$`notes` <- this_object$`notes`
      self$`status` <- AssignmentStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`trainingId` <- this_object$`trainingId`
      self
    },

    #' @description
    #' Validate JSON input with respect to TrainingAssignmentCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TrainingAssignmentCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`notes`) > 1000) {
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
      if (nchar(self$`notes`) > 1000) {
        invalid_fields["notes"] <- "Invalid length for `notes`, must be smaller than or equal to 1000."
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
# TrainingAssignmentCreate$unlock()
#
## Below is an example to define the print function
# TrainingAssignmentCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TrainingAssignmentCreate$lock()

