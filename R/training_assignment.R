#' Create a new TrainingAssignment
#'
#' @description
#' TrainingAssignment Class
#'
#' @docType class
#' @title TrainingAssignment
#' @description TrainingAssignment Class
#' @format An \code{R6Class} generator object
#' @field assignedBy  character [optional]
#' @field createdAt  character [optional]
#' @field deletedAt  character [optional]
#' @field dueDate  character [optional]
#' @field employeeId  character [optional]
#' @field id  character [optional]
#' @field notes  character [optional]
#' @field status  \link{AssignmentStatus} [optional]
#' @field tenantId  character [optional]
#' @field trainingId  character [optional]
#' @field updatedAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TrainingAssignment <- R6::R6Class(
  "TrainingAssignment",
  public = list(
    `assignedBy` = NULL,
    `createdAt` = NULL,
    `deletedAt` = NULL,
    `dueDate` = NULL,
    `employeeId` = NULL,
    `id` = NULL,
    `notes` = NULL,
    `status` = NULL,
    `tenantId` = NULL,
    `trainingId` = NULL,
    `updatedAt` = NULL,

    #' @description
    #' Initialize a new TrainingAssignment class.
    #'
    #' @param assignedBy assignedBy
    #' @param createdAt createdAt
    #' @param deletedAt deletedAt
    #' @param dueDate dueDate
    #' @param employeeId employeeId
    #' @param id id
    #' @param notes notes
    #' @param status status
    #' @param tenantId tenantId
    #' @param trainingId trainingId
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    initialize = function(`assignedBy` = NULL, `createdAt` = NULL, `deletedAt` = NULL, `dueDate` = NULL, `employeeId` = NULL, `id` = NULL, `notes` = NULL, `status` = NULL, `tenantId` = NULL, `trainingId` = NULL, `updatedAt` = NULL, ...) {
      if (!is.null(`assignedBy`)) {
        if (!(is.character(`assignedBy`) && length(`assignedBy`) == 1)) {
          stop(paste("Error! Invalid data for `assignedBy`. Must be a string:", `assignedBy`))
        }
        self$`assignedBy` <- `assignedBy`
      }
      if (!is.null(`createdAt`)) {
        if (!is.character(`createdAt`)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!is.null(`deletedAt`)) {
        if (!is.character(`deletedAt`)) {
          stop(paste("Error! Invalid data for `deletedAt`. Must be a string:", `deletedAt`))
        }
        self$`deletedAt` <- `deletedAt`
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
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
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
      if (!is.null(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
      }
      if (!is.null(`trainingId`)) {
        if (!(is.character(`trainingId`) && length(`trainingId`) == 1)) {
          stop(paste("Error! Invalid data for `trainingId`. Must be a string:", `trainingId`))
        }
        self$`trainingId` <- `trainingId`
      }
      if (!is.null(`updatedAt`)) {
        if (!is.character(`updatedAt`)) {
          stop(paste("Error! Invalid data for `updatedAt`. Must be a string:", `updatedAt`))
        }
        self$`updatedAt` <- `updatedAt`
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
    #' @return TrainingAssignment as a base R list.
    #' @examples
    #' # convert array of TrainingAssignment (x) to a data frame
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
    #' Convert TrainingAssignment to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TrainingAssignmentObject <- list()
      if (!is.null(self$`assignedBy`)) {
        TrainingAssignmentObject[["assignedBy"]] <-
          self$`assignedBy`
      }
      if (!is.null(self$`createdAt`)) {
        TrainingAssignmentObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`deletedAt`)) {
        TrainingAssignmentObject[["deletedAt"]] <-
          self$`deletedAt`
      }
      if (!is.null(self$`dueDate`)) {
        TrainingAssignmentObject[["dueDate"]] <-
          self$`dueDate`
      }
      if (!is.null(self$`employeeId`)) {
        TrainingAssignmentObject[["employeeId"]] <-
          self$`employeeId`
      }
      if (!is.null(self$`id`)) {
        TrainingAssignmentObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`notes`)) {
        TrainingAssignmentObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`status`)) {
        TrainingAssignmentObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`tenantId`)) {
        TrainingAssignmentObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`trainingId`)) {
        TrainingAssignmentObject[["trainingId"]] <-
          self$`trainingId`
      }
      if (!is.null(self$`updatedAt`)) {
        TrainingAssignmentObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      return(TrainingAssignmentObject)
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
    #' Deserialize JSON string into an instance of TrainingAssignment
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrainingAssignment
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assignedBy`)) {
        self$`assignedBy` <- this_object$`assignedBy`
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`deletedAt`)) {
        self$`deletedAt` <- this_object$`deletedAt`
      }
      if (!is.null(this_object$`dueDate`)) {
        self$`dueDate` <- this_object$`dueDate`
      }
      if (!is.null(this_object$`employeeId`)) {
        self$`employeeId` <- this_object$`employeeId`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- AssignmentStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      if (!is.null(this_object$`trainingId`)) {
        self$`trainingId` <- this_object$`trainingId`
      }
      if (!is.null(this_object$`updatedAt`)) {
        self$`updatedAt` <- this_object$`updatedAt`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TrainingAssignment in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TrainingAssignment
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrainingAssignment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assignedBy` <- this_object$`assignedBy`
      self$`createdAt` <- this_object$`createdAt`
      self$`deletedAt` <- this_object$`deletedAt`
      self$`dueDate` <- this_object$`dueDate`
      self$`employeeId` <- this_object$`employeeId`
      self$`id` <- this_object$`id`
      self$`notes` <- this_object$`notes`
      self$`status` <- AssignmentStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`tenantId` <- this_object$`tenantId`
      self$`trainingId` <- this_object$`trainingId`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },

    #' @description
    #' Validate JSON input with respect to TrainingAssignment and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TrainingAssignment
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
# TrainingAssignment$unlock()
#
## Below is an example to define the print function
# TrainingAssignment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TrainingAssignment$lock()

