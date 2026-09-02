#' Create a new Absence
#'
#' @description
#' Absence Class
#'
#' @docType class
#' @title Absence
#' @description Absence Class
#' @format An \code{R6Class} generator object
#' @field absenceType One of \"vacation\", \"sick\", \"sabbatical\", \"parental\", \"other\". \link{AbsenceType} [optional]
#' @field approvedAt  character [optional]
#' @field approvedBy References the user entity. character [optional]
#' @field createdAt  character [optional]
#' @field deletedAt  character [optional]
#' @field employeeId References the employee entity. character [optional]
#' @field endDate  character [optional]
#' @field id  character [optional]
#' @field notes  character [optional]
#' @field startDate  character [optional]
#' @field status One of \"pending\", \"approved\", \"rejected\", \"cancelled\". \link{AbsenceStatus} [optional]
#' @field tenantId  character [optional]
#' @field updatedAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Absence <- R6::R6Class(
  "Absence",
  public = list(
    `absenceType` = NULL,
    `approvedAt` = NULL,
    `approvedBy` = NULL,
    `createdAt` = NULL,
    `deletedAt` = NULL,
    `employeeId` = NULL,
    `endDate` = NULL,
    `id` = NULL,
    `notes` = NULL,
    `startDate` = NULL,
    `status` = NULL,
    `tenantId` = NULL,
    `updatedAt` = NULL,

    #' @description
    #' Initialize a new Absence class.
    #'
    #' @param absenceType One of \"vacation\", \"sick\", \"sabbatical\", \"parental\", \"other\".
    #' @param approvedAt approvedAt
    #' @param approvedBy References the user entity.
    #' @param createdAt createdAt
    #' @param deletedAt deletedAt
    #' @param employeeId References the employee entity.
    #' @param endDate endDate
    #' @param id id
    #' @param notes notes
    #' @param startDate startDate
    #' @param status One of \"pending\", \"approved\", \"rejected\", \"cancelled\".
    #' @param tenantId tenantId
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    initialize = function(`absenceType` = NULL, `approvedAt` = NULL, `approvedBy` = NULL, `createdAt` = NULL, `deletedAt` = NULL, `employeeId` = NULL, `endDate` = NULL, `id` = NULL, `notes` = NULL, `startDate` = NULL, `status` = NULL, `tenantId` = NULL, `updatedAt` = NULL, ...) {
      if (!is.null(`absenceType`)) {
        if (!(`absenceType` %in% c())) {
          stop(paste("Error! \"", `absenceType`, "\" cannot be assigned to `absenceType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`absenceType`))
        self$`absenceType` <- `absenceType`
      }
      if (!is.null(`approvedAt`)) {
        if (!is.character(`approvedAt`)) {
          stop(paste("Error! Invalid data for `approvedAt`. Must be a string:", `approvedAt`))
        }
        self$`approvedAt` <- `approvedAt`
      }
      if (!is.null(`approvedBy`)) {
        if (!(is.character(`approvedBy`) && length(`approvedBy`) == 1)) {
          stop(paste("Error! Invalid data for `approvedBy`. Must be a string:", `approvedBy`))
        }
        self$`approvedBy` <- `approvedBy`
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
      if (!is.null(`employeeId`)) {
        if (!(is.character(`employeeId`) && length(`employeeId`) == 1)) {
          stop(paste("Error! Invalid data for `employeeId`. Must be a string:", `employeeId`))
        }
        self$`employeeId` <- `employeeId`
      }
      if (!is.null(`endDate`)) {
        if (!is.character(`endDate`)) {
          stop(paste("Error! Invalid data for `endDate`. Must be a string:", `endDate`))
        }
        self$`endDate` <- `endDate`
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
      if (!is.null(`startDate`)) {
        if (!is.character(`startDate`)) {
          stop(paste("Error! Invalid data for `startDate`. Must be a string:", `startDate`))
        }
        self$`startDate` <- `startDate`
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
    #' @return Absence as a base R list.
    #' @examples
    #' # convert array of Absence (x) to a data frame
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
    #' Convert Absence to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AbsenceObject <- list()
      if (!is.null(self$`absenceType`)) {
        AbsenceObject[["absenceType"]] <-
          self$extractSimpleType(self$`absenceType`)
      }
      if (!is.null(self$`approvedAt`)) {
        AbsenceObject[["approvedAt"]] <-
          self$`approvedAt`
      }
      if (!is.null(self$`approvedBy`)) {
        AbsenceObject[["approvedBy"]] <-
          self$`approvedBy`
      }
      if (!is.null(self$`createdAt`)) {
        AbsenceObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`deletedAt`)) {
        AbsenceObject[["deletedAt"]] <-
          self$`deletedAt`
      }
      if (!is.null(self$`employeeId`)) {
        AbsenceObject[["employeeId"]] <-
          self$`employeeId`
      }
      if (!is.null(self$`endDate`)) {
        AbsenceObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`id`)) {
        AbsenceObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`notes`)) {
        AbsenceObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`startDate`)) {
        AbsenceObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`status`)) {
        AbsenceObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`tenantId`)) {
        AbsenceObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`updatedAt`)) {
        AbsenceObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      return(AbsenceObject)
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
    #' Deserialize JSON string into an instance of Absence
    #'
    #' @param input_json the JSON input
    #' @return the instance of Absence
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`absenceType`)) {
        `absencetype_object` <- AbsenceType$new()
        `absencetype_object`$fromJSON(jsonlite::toJSON(this_object$`absenceType`, auto_unbox = TRUE, digits = NA))
        self$`absenceType` <- `absencetype_object`
      }
      if (!is.null(this_object$`approvedAt`)) {
        self$`approvedAt` <- this_object$`approvedAt`
      }
      if (!is.null(this_object$`approvedBy`)) {
        self$`approvedBy` <- this_object$`approvedBy`
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`deletedAt`)) {
        self$`deletedAt` <- this_object$`deletedAt`
      }
      if (!is.null(this_object$`employeeId`)) {
        self$`employeeId` <- this_object$`employeeId`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- AbsenceStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
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
    #' @return Absence in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Absence
    #'
    #' @param input_json the JSON input
    #' @return the instance of Absence
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`absenceType` <- AbsenceType$new()$fromJSON(jsonlite::toJSON(this_object$`absenceType`, auto_unbox = TRUE, digits = NA))
      self$`approvedAt` <- this_object$`approvedAt`
      self$`approvedBy` <- this_object$`approvedBy`
      self$`createdAt` <- this_object$`createdAt`
      self$`deletedAt` <- this_object$`deletedAt`
      self$`employeeId` <- this_object$`employeeId`
      self$`endDate` <- this_object$`endDate`
      self$`id` <- this_object$`id`
      self$`notes` <- this_object$`notes`
      self$`startDate` <- this_object$`startDate`
      self$`status` <- AbsenceStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`tenantId` <- this_object$`tenantId`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },

    #' @description
    #' Validate JSON input with respect to Absence and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Absence
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`notes`) > 2000) {
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
      if (nchar(self$`notes`) > 2000) {
        invalid_fields["notes"] <- "Invalid length for `notes`, must be smaller than or equal to 2000."
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
# Absence$unlock()
#
## Below is an example to define the print function
# Absence$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Absence$lock()

