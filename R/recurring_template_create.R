#' Create a new RecurringTemplateCreate
#'
#' @description
#' RecurringTemplateCreate Class
#'
#' @docType class
#' @title RecurringTemplateCreate
#' @description RecurringTemplateCreate Class
#' @format An \code{R6Class} generator object
#' @field endDate  character [optional]
#' @field executionInterval  character
#' @field executionStatus  \link{ExecutionStatus}
#' @field finalize  character [optional]
#' @field lastExecutedAt  character [optional]
#' @field name  character
#' @field nextExecutionAt  character [optional]
#' @field startDate  character
#' @field templateType  \link{RecurringTemplateType}
#' @field voucherData  \link{AnyType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RecurringTemplateCreate <- R6::R6Class(
  "RecurringTemplateCreate",
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
    #' Initialize a new RecurringTemplateCreate class.
    #'
    #' @param executionInterval executionInterval
    #' @param executionStatus executionStatus
    #' @param name name
    #' @param startDate startDate
    #' @param templateType templateType
    #' @param endDate endDate
    #' @param finalize finalize
    #' @param lastExecutedAt lastExecutedAt
    #' @param nextExecutionAt nextExecutionAt
    #' @param voucherData voucherData
    #' @param ... Other optional arguments.
    initialize = function(`executionInterval`, `executionStatus`, `name`, `startDate`, `templateType`, `endDate` = NULL, `finalize` = NULL, `lastExecutedAt` = NULL, `nextExecutionAt` = NULL, `voucherData` = NULL, ...) {
      if (!missing(`executionInterval`)) {
        if (!(is.character(`executionInterval`) && length(`executionInterval`) == 1)) {
          stop(paste("Error! Invalid data for `executionInterval`. Must be a string:", `executionInterval`))
        }
        self$`executionInterval` <- `executionInterval`
      }
      if (!missing(`executionStatus`)) {
        if (!(`executionStatus` %in% c())) {
          stop(paste("Error! \"", `executionStatus`, "\" cannot be assigned to `executionStatus`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`executionStatus`))
        self$`executionStatus` <- `executionStatus`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`startDate`)) {
        if (!(is.character(`startDate`) && length(`startDate`) == 1)) {
          stop(paste("Error! Invalid data for `startDate`. Must be a string:", `startDate`))
        }
        self$`startDate` <- `startDate`
      }
      if (!missing(`templateType`)) {
        if (!(`templateType` %in% c())) {
          stop(paste("Error! \"", `templateType`, "\" cannot be assigned to `templateType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`templateType`))
        self$`templateType` <- `templateType`
      }
      if (!is.null(`endDate`)) {
        if (!is.character(`endDate`)) {
          stop(paste("Error! Invalid data for `endDate`. Must be a string:", `endDate`))
        }
        self$`endDate` <- `endDate`
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
      if (!is.null(`nextExecutionAt`)) {
        if (!is.character(`nextExecutionAt`)) {
          stop(paste("Error! Invalid data for `nextExecutionAt`. Must be a string:", `nextExecutionAt`))
        }
        self$`nextExecutionAt` <- `nextExecutionAt`
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
    #' @return RecurringTemplateCreate as a base R list.
    #' @examples
    #' # convert array of RecurringTemplateCreate (x) to a data frame
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
    #' Convert RecurringTemplateCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RecurringTemplateCreateObject <- list()
      if (!is.null(self$`endDate`)) {
        RecurringTemplateCreateObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`executionInterval`)) {
        RecurringTemplateCreateObject[["executionInterval"]] <-
          self$`executionInterval`
      }
      if (!is.null(self$`executionStatus`)) {
        RecurringTemplateCreateObject[["executionStatus"]] <-
          self$extractSimpleType(self$`executionStatus`)
      }
      if (!is.null(self$`finalize`)) {
        RecurringTemplateCreateObject[["finalize"]] <-
          self$`finalize`
      }
      if (!is.null(self$`lastExecutedAt`)) {
        RecurringTemplateCreateObject[["lastExecutedAt"]] <-
          self$`lastExecutedAt`
      }
      if (!is.null(self$`name`)) {
        RecurringTemplateCreateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`nextExecutionAt`)) {
        RecurringTemplateCreateObject[["nextExecutionAt"]] <-
          self$`nextExecutionAt`
      }
      if (!is.null(self$`startDate`)) {
        RecurringTemplateCreateObject[["startDate"]] <-
          self$`startDate`
      }
      if (!is.null(self$`templateType`)) {
        RecurringTemplateCreateObject[["templateType"]] <-
          self$extractSimpleType(self$`templateType`)
      }
      if (!is.null(self$`voucherData`)) {
        RecurringTemplateCreateObject[["voucherData"]] <-
          self$extractSimpleType(self$`voucherData`)
      }
      return(RecurringTemplateCreateObject)
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
    #' Deserialize JSON string into an instance of RecurringTemplateCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecurringTemplateCreate
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
    #' @return RecurringTemplateCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RecurringTemplateCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecurringTemplateCreate
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
    #' Validate JSON input with respect to RecurringTemplateCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `executionInterval`
      if (!is.null(input_json$`executionInterval`)) {
        if (!(is.character(input_json$`executionInterval`) && length(input_json$`executionInterval`) == 1)) {
          stop(paste("Error! Invalid data for `executionInterval`. Must be a string:", input_json$`executionInterval`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplateCreate: the required field `executionInterval` is missing."))
      }
      # check the required field `executionStatus`
      if (!is.null(input_json$`executionStatus`)) {
        stopifnot(R6::is.R6(input_json$`executionStatus`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplateCreate: the required field `executionStatus` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplateCreate: the required field `name` is missing."))
      }
      # check the required field `startDate`
      if (!is.null(input_json$`startDate`)) {
        if (!(is.character(input_json$`startDate`) && length(input_json$`startDate`) == 1)) {
          stop(paste("Error! Invalid data for `startDate`. Must be a string:", input_json$`startDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplateCreate: the required field `startDate` is missing."))
      }
      # check the required field `templateType`
      if (!is.null(input_json$`templateType`)) {
        stopifnot(R6::is.R6(input_json$`templateType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecurringTemplateCreate: the required field `templateType` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RecurringTemplateCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `executionInterval` is null
      if (is.null(self$`executionInterval`)) {
        return(FALSE)
      }

      # check if the required `executionStatus` is null
      if (is.null(self$`executionStatus`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `startDate` is null
      if (is.null(self$`startDate`)) {
        return(FALSE)
      }

      # check if the required `templateType` is null
      if (is.null(self$`templateType`)) {
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
      # check if the required `executionInterval` is null
      if (is.null(self$`executionInterval`)) {
        invalid_fields["executionInterval"] <- "Non-nullable required field `executionInterval` cannot be null."
      }

      # check if the required `executionStatus` is null
      if (is.null(self$`executionStatus`)) {
        invalid_fields["executionStatus"] <- "Non-nullable required field `executionStatus` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `startDate` is null
      if (is.null(self$`startDate`)) {
        invalid_fields["startDate"] <- "Non-nullable required field `startDate` cannot be null."
      }

      # check if the required `templateType` is null
      if (is.null(self$`templateType`)) {
        invalid_fields["templateType"] <- "Non-nullable required field `templateType` cannot be null."
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
# RecurringTemplateCreate$unlock()
#
## Below is an example to define the print function
# RecurringTemplateCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RecurringTemplateCreate$lock()

