#' Create a new ComplianceTraining
#'
#' @description
#' ComplianceTraining Class
#'
#' @docType class
#' @title ComplianceTraining
#' @description ComplianceTraining Class
#' @format An \code{R6Class} generator object
#' @field assignable Whether HR can assign this training as required for employees. character [optional]
#' @field code Stable code used by plugins and frontend players (e.g. \"data_privacy\"). character [optional]
#' @field createdAt  character [optional]
#' @field deletedAt  character [optional]
#' @field description  character [optional]
#' @field id  character [optional]
#' @field passScore Minimum score (0–100) required to pass. integer [optional]
#' @field pluginPlatform Marketplace plugin platform id when source = Plugin. character [optional]
#' @field source  \link{TrainingSource} [optional]
#' @field tenantId  character [optional]
#' @field title  character [optional]
#' @field updatedAt  character [optional]
#' @field validityMonths Certificate validity in months; null = no expiry. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ComplianceTraining <- R6::R6Class(
  "ComplianceTraining",
  public = list(
    `assignable` = NULL,
    `code` = NULL,
    `createdAt` = NULL,
    `deletedAt` = NULL,
    `description` = NULL,
    `id` = NULL,
    `passScore` = NULL,
    `pluginPlatform` = NULL,
    `source` = NULL,
    `tenantId` = NULL,
    `title` = NULL,
    `updatedAt` = NULL,
    `validityMonths` = NULL,

    #' @description
    #' Initialize a new ComplianceTraining class.
    #'
    #' @param assignable Whether HR can assign this training as required for employees.
    #' @param code Stable code used by plugins and frontend players (e.g. \"data_privacy\").
    #' @param createdAt createdAt
    #' @param deletedAt deletedAt
    #' @param description description
    #' @param id id
    #' @param passScore Minimum score (0–100) required to pass.
    #' @param pluginPlatform Marketplace plugin platform id when source = Plugin.
    #' @param source source
    #' @param tenantId tenantId
    #' @param title title
    #' @param updatedAt updatedAt
    #' @param validityMonths Certificate validity in months; null = no expiry.
    #' @param ... Other optional arguments.
    initialize = function(`assignable` = NULL, `code` = NULL, `createdAt` = NULL, `deletedAt` = NULL, `description` = NULL, `id` = NULL, `passScore` = NULL, `pluginPlatform` = NULL, `source` = NULL, `tenantId` = NULL, `title` = NULL, `updatedAt` = NULL, `validityMonths` = NULL, ...) {
      if (!is.null(`assignable`)) {
        if (!(is.logical(`assignable`) && length(`assignable`) == 1)) {
          stop(paste("Error! Invalid data for `assignable`. Must be a boolean:", `assignable`))
        }
        self$`assignable` <- `assignable`
      }
      if (!is.null(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
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
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`passScore`)) {
        if (!(is.numeric(`passScore`) && length(`passScore`) == 1)) {
          stop(paste("Error! Invalid data for `passScore`. Must be an integer:", `passScore`))
        }
        self$`passScore` <- `passScore`
      }
      if (!is.null(`pluginPlatform`)) {
        if (!(is.character(`pluginPlatform`) && length(`pluginPlatform`) == 1)) {
          stop(paste("Error! Invalid data for `pluginPlatform`. Must be a string:", `pluginPlatform`))
        }
        self$`pluginPlatform` <- `pluginPlatform`
      }
      if (!is.null(`source`)) {
        if (!(`source` %in% c())) {
          stop(paste("Error! \"", `source`, "\" cannot be assigned to `source`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`source`))
        self$`source` <- `source`
      }
      if (!is.null(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`updatedAt`)) {
        if (!is.character(`updatedAt`)) {
          stop(paste("Error! Invalid data for `updatedAt`. Must be a string:", `updatedAt`))
        }
        self$`updatedAt` <- `updatedAt`
      }
      if (!is.null(`validityMonths`)) {
        if (!(is.numeric(`validityMonths`) && length(`validityMonths`) == 1)) {
          stop(paste("Error! Invalid data for `validityMonths`. Must be an integer:", `validityMonths`))
        }
        self$`validityMonths` <- `validityMonths`
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
    #' @return ComplianceTraining as a base R list.
    #' @examples
    #' # convert array of ComplianceTraining (x) to a data frame
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
    #' Convert ComplianceTraining to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ComplianceTrainingObject <- list()
      if (!is.null(self$`assignable`)) {
        ComplianceTrainingObject[["assignable"]] <-
          self$`assignable`
      }
      if (!is.null(self$`code`)) {
        ComplianceTrainingObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`createdAt`)) {
        ComplianceTrainingObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`deletedAt`)) {
        ComplianceTrainingObject[["deletedAt"]] <-
          self$`deletedAt`
      }
      if (!is.null(self$`description`)) {
        ComplianceTrainingObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`id`)) {
        ComplianceTrainingObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`passScore`)) {
        ComplianceTrainingObject[["passScore"]] <-
          self$`passScore`
      }
      if (!is.null(self$`pluginPlatform`)) {
        ComplianceTrainingObject[["pluginPlatform"]] <-
          self$`pluginPlatform`
      }
      if (!is.null(self$`source`)) {
        ComplianceTrainingObject[["source"]] <-
          self$extractSimpleType(self$`source`)
      }
      if (!is.null(self$`tenantId`)) {
        ComplianceTrainingObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`title`)) {
        ComplianceTrainingObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`updatedAt`)) {
        ComplianceTrainingObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      if (!is.null(self$`validityMonths`)) {
        ComplianceTrainingObject[["validityMonths"]] <-
          self$`validityMonths`
      }
      return(ComplianceTrainingObject)
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
    #' Deserialize JSON string into an instance of ComplianceTraining
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComplianceTraining
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assignable`)) {
        self$`assignable` <- this_object$`assignable`
      }
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`deletedAt`)) {
        self$`deletedAt` <- this_object$`deletedAt`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`passScore`)) {
        self$`passScore` <- this_object$`passScore`
      }
      if (!is.null(this_object$`pluginPlatform`)) {
        self$`pluginPlatform` <- this_object$`pluginPlatform`
      }
      if (!is.null(this_object$`source`)) {
        `source_object` <- TrainingSource$new()
        `source_object`$fromJSON(jsonlite::toJSON(this_object$`source`, auto_unbox = TRUE, digits = NA))
        self$`source` <- `source_object`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`updatedAt`)) {
        self$`updatedAt` <- this_object$`updatedAt`
      }
      if (!is.null(this_object$`validityMonths`)) {
        self$`validityMonths` <- this_object$`validityMonths`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ComplianceTraining in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ComplianceTraining
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComplianceTraining
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assignable` <- this_object$`assignable`
      self$`code` <- this_object$`code`
      self$`createdAt` <- this_object$`createdAt`
      self$`deletedAt` <- this_object$`deletedAt`
      self$`description` <- this_object$`description`
      self$`id` <- this_object$`id`
      self$`passScore` <- this_object$`passScore`
      self$`pluginPlatform` <- this_object$`pluginPlatform`
      self$`source` <- TrainingSource$new()$fromJSON(jsonlite::toJSON(this_object$`source`, auto_unbox = TRUE, digits = NA))
      self$`tenantId` <- this_object$`tenantId`
      self$`title` <- this_object$`title`
      self$`updatedAt` <- this_object$`updatedAt`
      self$`validityMonths` <- this_object$`validityMonths`
      self
    },

    #' @description
    #' Validate JSON input with respect to ComplianceTraining and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ComplianceTraining
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`code`) > 64) {
        return(FALSE)
      }
      if (nchar(self$`code`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`description`) > 2000) {
        return(FALSE)
      }

      if (nchar(self$`pluginPlatform`) > 64) {
        return(FALSE)
      }

      if (nchar(self$`title`) > 200) {
        return(FALSE)
      }
      if (nchar(self$`title`) < 1) {
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
      if (nchar(self$`code`) > 64) {
        invalid_fields["code"] <- "Invalid length for `code`, must be smaller than or equal to 64."
      }
      if (nchar(self$`code`) < 1) {
        invalid_fields["code"] <- "Invalid length for `code`, must be bigger than or equal to 1."
      }

      if (nchar(self$`description`) > 2000) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 2000."
      }

      if (nchar(self$`pluginPlatform`) > 64) {
        invalid_fields["pluginPlatform"] <- "Invalid length for `pluginPlatform`, must be smaller than or equal to 64."
      }

      if (nchar(self$`title`) > 200) {
        invalid_fields["title"] <- "Invalid length for `title`, must be smaller than or equal to 200."
      }
      if (nchar(self$`title`) < 1) {
        invalid_fields["title"] <- "Invalid length for `title`, must be bigger than or equal to 1."
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
# ComplianceTraining$unlock()
#
## Below is an example to define the print function
# ComplianceTraining$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ComplianceTraining$lock()

