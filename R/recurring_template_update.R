#' Create a new RecurringTemplateUpdate
#'
#' @description
#' RecurringTemplateUpdate Class
#'
#' @docType class
#' @title RecurringTemplateUpdate
#' @description RecurringTemplateUpdate Class
#' @format An \code{R6Class} generator object
#' @field endDate  character [optional]
#' @field executionInterval  character [optional]
#' @field executionStatus  \link{ExecutionStatus} [optional]
#' @field finalize  character [optional]
#' @field lastExecutedAt  character [optional]
#' @field name  character [optional]
#' @field nextExecutionAt  character [optional]
#' @field startDate  character [optional]
#' @field templateType  \link{RecurringTemplateType} [optional]
#' @field voucherData  \link{AnyType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RecurringTemplateUpdate <- R6::R6Class(
  "RecurringTemplateUpdate",
  public = list(
    `endDate` = NULL,
    `executionInterval` = NULL,
    `executionStatus` = NULL,
    `finalize` = NULL,
    `lastExecutedAt` = NULL,
    `name` = NULL,
    `nextExecutionAt` = NULL,
    `startDate` = NULL,
    `templateType` = NULL,
    `voucherData` = NULL,

    #' @description
    #' Initialize a new RecurringTemplateUpdate class.
    #'
    #' @param endDate endDate
    #' @param executionInterval executionInterval
    #' @param executionStatus executionStatus
    #' @param finalize finalize
    #' @param lastExecutedAt lastExecutedAt
    #' @param name name
    #' @param nextExecutionAt nextExecutionAt
    #' @param startDate startDate
    #' @param templateType templateType
    #' @param voucherData voucherData
    #' @param ... Other optional arguments.
    initialize = function(`endDate` = NULL, `executionInterval` = NULL, `executionStatus` = NULL, `finalize` = NULL, `lastExecutedAt` = NULL, `name` = NULL, `nextExecutionAt` = NULL, `startDate` = NULL, `templateType` = NULL, `voucherData` = NULL, ...) {
      if (!is.null(`endDate`)) {
        if (!is.character(`endDate`)) {
          stop(paste("Error! Invalid data for `endDate`. Must be a string:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`executionInterval`)) {
        if (!(is.character(`executionInterval`) && length(`executionInterval`) == 1)) {
          stop(paste("Error! Invalid data for `executionInterval`. Must be a string:", `executionInterval`))
        }
        self$`executionInterval` <- `executionInterval`
      }
      if (!is.null(`executionStatus`)) {
        if (!(`executionStatus` %in% c())) {
          stop(paste("Error! \"", `executionStatus`, "\" cannot be assigned to `executionStatus`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`executionStatus`))
        self$`executionStatus` <- `executionStatus`
      }
      if (!is.null(`finalize`)) {
        if (!(is.logical(`finalize`) && length(`finalize`) == 1)) {
          stop(paste("Error! Invalid data for `finalize`. Must be a boolean:", `finalize`))
        }
        self$`finalize` <- `finalize`
      }
      if (!is.null(`lastExecutedAt`)) {
        if (!is.character(`lastExecutedAt`)) {
          stop(paste("Error! Invalid data for `lastExecutedAt`. Must be a string:", `lastExecutedAt`))
        }
        self$`lastExecutedAt` <- `lastExecutedAt`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`nextExecutionAt`)) {
        if (!is.character(`nextExecutionAt`)) {
          stop(paste("Error! Invalid data for `nextExecutionAt`. Must be a string:", `nextExecutionAt`))
        }
        self$`nextExecutionAt` <- `nextExecutionAt`
      }
      if (!is.null(`startDate`)) {
        if (!is.character(`startDate`)) {
          stop(paste("Error! Invalid data for `startDate`. Must be a string:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!is.null(`templateType`)) {
        if (!(`templateType` %in% c())) {
          stop(paste("Error! \"", `templateType`, "\" cannot be assigned to `templateType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`templateType`))
        self$`templateType` <- `templateType`
      }
      if (!is.null(`voucherData`)) {
        stopifnot(R6::is.R6(`voucherData`))
        self$`voucherData` <- `voucherData`
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
    #' @return RecurringTemplateUpdate as a base R list.
    #' @examples
    #' # convert array of RecurringTemplateUpdate (x) to a data frame
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
    #' Convert RecurringTemplateUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RecurringTemplateUpdateObject <- list()
      if (!is.null(self$`endDate`)) {
        RecurringTemplateUpdateObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`executionInterval`)) {
        RecurringTemplateUpdateObject[["executionInterval"]] <-
          self$`executionInterval`
      }
      if (!is.null(self$`executionStatus`)) {
        RecurringTemplateUpdateObject[["executionStatus"]] <-
          self$extractSimpleType(self$`executionStatus`)
      }
      if (!is.null(self$`finalize`)) {
        RecurringTemplateUpdateObject[["finalize"]] <-
          self$`finalize`
      }
      if (!is.null(self$`lastExecutedAt`)) {
        RecurringTemplateUpdateObject[["lastExecutedAt"]] <-
          self$`lastExecutedAt`
      }
      if (!is.null(self$`name`)) {
        RecurringTemplateUpdateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`nextExecutionAt`)) {
        RecurringTemplateUpdateObject[["nextExecutionAt"]] <-
          self$`nextExecutionAt`
      }
      if (!is.null(self$`startDate`)) {
        RecurringTemplateUpdateObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`templateType`)) {
        RecurringTemplateUpdateObject[["templateType"]] <-
          self$extractSimpleType(self$`templateType`)
      }
      if (!is.null(self$`voucherData`)) {
        RecurringTemplateUpdateObject[["voucherData"]] <-
          self$extractSimpleType(self$`voucherData`)
      }
      return(RecurringTemplateUpdateObject)
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
    #' Deserialize JSON string into an instance of RecurringTemplateUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecurringTemplateUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`executionInterval`)) {
        self$`executionInterval` <- this_object$`executionInterval`
      }
      if (!is.null(this_object$`executionStatus`)) {
        `executionstatus_object` <- ExecutionStatus$new()
        `executionstatus_object`$fromJSON(jsonlite::toJSON(this_object$`executionStatus`, auto_unbox = TRUE, digits = NA))
        self$`executionStatus` <- `executionstatus_object`
      }
      if (!is.null(this_object$`finalize`)) {
        self$`finalize` <- this_object$`finalize`
      }
      if (!is.null(this_object$`lastExecutedAt`)) {
        self$`lastExecutedAt` <- this_object$`lastExecutedAt`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`nextExecutionAt`)) {
        self$`nextExecutionAt` <- this_object$`nextExecutionAt`
      }
      if (!is.null(this_object$`startDate`)) {
        self$`startDate` <- this_object$`startDate`
      }
      if (!is.null(this_object$`templateType`)) {
        `templatetype_object` <- RecurringTemplateType$new()
        `templatetype_object`$fromJSON(jsonlite::toJSON(this_object$`templateType`, auto_unbox = TRUE, digits = NA))
        self$`templateType` <- `templatetype_object`
      }
      if (!is.null(this_object$`voucherData`)) {
        `voucherdata_object` <- AnyType$new()
        `voucherdata_object`$fromJSON(jsonlite::toJSON(this_object$`voucherData`, auto_unbox = TRUE, digits = NA))
        self$`voucherData` <- `voucherdata_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RecurringTemplateUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RecurringTemplateUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecurringTemplateUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`endDate` <- this_object$`endDate`
      self$`executionInterval` <- this_object$`executionInterval`
      self$`executionStatus` <- ExecutionStatus$new()$fromJSON(jsonlite::toJSON(this_object$`executionStatus`, auto_unbox = TRUE, digits = NA))
      self$`finalize` <- this_object$`finalize`
      self$`lastExecutedAt` <- this_object$`lastExecutedAt`
      self$`name` <- this_object$`name`
      self$`nextExecutionAt` <- this_object$`nextExecutionAt`
      self$`startDate` <- this_object$`startDate`
      self$`templateType` <- RecurringTemplateType$new()$fromJSON(jsonlite::toJSON(this_object$`templateType`, auto_unbox = TRUE, digits = NA))
      self$`voucherData` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`voucherData`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to RecurringTemplateUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RecurringTemplateUpdate
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
# RecurringTemplateUpdate$unlock()
#
## Below is an example to define the print function
# RecurringTemplateUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RecurringTemplateUpdate$lock()

