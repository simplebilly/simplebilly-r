#' Create a new AbsenceUpdate
#'
#' @description
#' AbsenceUpdate Class
#'
#' @docType class
#' @title AbsenceUpdate
#' @description AbsenceUpdate Class
#' @format An \code{R6Class} generator object
#' @field absenceType One of \"vacation\", \"sick\", \"sabbatical\", \"parental\", \"other\". \link{AbsenceType} [optional]
#' @field approvedAt  character [optional]
#' @field approvedBy References the user entity. character [optional]
#' @field employeeId References the employee entity. character [optional]
#' @field endDate  character [optional]
#' @field notes  character [optional]
#' @field startDate  character [optional]
#' @field status One of \"pending\", \"approved\", \"rejected\", \"cancelled\". \link{AbsenceStatus} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AbsenceUpdate <- R6::R6Class(
  "AbsenceUpdate",
  public = list(
    `absenceType` = NULL,
    `approvedAt` = NULL,
    `approvedBy` = NULL,
    `employeeId` = NULL,
    `endDate` = NULL,
    `notes` = NULL,
    `startDate` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new AbsenceUpdate class.
    #'
    #' @param absenceType One of \"vacation\", \"sick\", \"sabbatical\", \"parental\", \"other\".
    #' @param approvedAt approvedAt
    #' @param approvedBy References the user entity.
    #' @param employeeId References the employee entity.
    #' @param endDate endDate
    #' @param notes notes
    #' @param startDate startDate
    #' @param status One of \"pending\", \"approved\", \"rejected\", \"cancelled\".
    #' @param ... Other optional arguments.
    initialize = function(`absenceType` = NULL, `approvedAt` = NULL, `approvedBy` = NULL, `employeeId` = NULL, `endDate` = NULL, `notes` = NULL, `startDate` = NULL, `status` = NULL, ...) {
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
    #' @return AbsenceUpdate as a base R list.
    #' @examples
    #' # convert array of AbsenceUpdate (x) to a data frame
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
    #' Convert AbsenceUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AbsenceUpdateObject <- list()
      if (!is.null(self$`absenceType`)) {
        AbsenceUpdateObject[["absenceType"]] <-
          self$extractSimpleType(self$`absenceType`)
      }
      if (!is.null(self$`approvedAt`)) {
        AbsenceUpdateObject[["approvedAt"]] <-
          self$`approvedAt`
      }
      if (!is.null(self$`approvedBy`)) {
        AbsenceUpdateObject[["approvedBy"]] <-
          self$`approvedBy`
      }
      if (!is.null(self$`employeeId`)) {
        AbsenceUpdateObject[["employeeId"]] <-
          self$`employeeId`
      }
      if (!is.null(self$`endDate`)) {
        AbsenceUpdateObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`notes`)) {
        AbsenceUpdateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`startDate`)) {
        AbsenceUpdateObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`status`)) {
        AbsenceUpdateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      return(AbsenceUpdateObject)
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
    #' Deserialize JSON string into an instance of AbsenceUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of AbsenceUpdate
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
      if (!is.null(this_object$`employeeId`)) {
        self$`employeeId` <- this_object$`employeeId`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AbsenceUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AbsenceUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of AbsenceUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`absenceType` <- AbsenceType$new()$fromJSON(jsonlite::toJSON(this_object$`absenceType`, auto_unbox = TRUE, digits = NA))
      self$`approvedAt` <- this_object$`approvedAt`
      self$`approvedBy` <- this_object$`approvedBy`
      self$`employeeId` <- this_object$`employeeId`
      self$`endDate` <- this_object$`endDate`
      self$`notes` <- this_object$`notes`
      self$`startDate` <- this_object$`startDate`
      self$`status` <- AbsenceStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AbsenceUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AbsenceUpdate
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
# AbsenceUpdate$unlock()
#
## Below is an example to define the print function
# AbsenceUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AbsenceUpdate$lock()

