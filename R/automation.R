#' Create a new Automation
#'
#' @description
#' Automation Class
#'
#' @docType class
#' @title Automation
#' @description Automation Class
#' @format An \code{R6Class} generator object
#' @field automationKey  character
#' @field config  \link{AnyType}
#' @field createdAt  character
#' @field enabled  character
#' @field lastRunAt  character [optional]
#' @field nextRunAt  character [optional]
#' @field tenantId  character
#' @field updatedAt  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Automation <- R6::R6Class(
  "Automation",
  public = list(
    `automationKey` = NULL,
    `config` = NULL,
    `createdAt` = NULL,
    `enabled` = NULL,
    `lastRunAt` = NULL,
    `nextRunAt` = NULL,
    `tenantId` = NULL,
    `updatedAt` = NULL,

    #' @description
    #' Initialize a new Automation class.
    #'
    #' @param automationKey automationKey
    #' @param config config
    #' @param createdAt createdAt
    #' @param enabled enabled
    #' @param tenantId tenantId
    #' @param updatedAt updatedAt
    #' @param lastRunAt lastRunAt
    #' @param nextRunAt nextRunAt
    #' @param ... Other optional arguments.
    initialize = function(`automationKey`, `config`, `createdAt`, `enabled`, `tenantId`, `updatedAt`, `lastRunAt` = NULL, `nextRunAt` = NULL, ...) {
      if (!missing(`automationKey`)) {
        if (!(is.character(`automationKey`) && length(`automationKey`) == 1)) {
          stop(paste("Error! Invalid data for `automationKey`. Must be a string:", `automationKey`))
        }
        self$`automationKey` <- `automationKey`
      }
      if (!missing(`config`)) {
        stopifnot(R6::is.R6(`config`))
        self$`config` <- `config`
      }
      if (!missing(`createdAt`)) {
        if (!(is.character(`createdAt`) && length(`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!missing(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!missing(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
      }
      if (!missing(`updatedAt`)) {
        if (!(is.character(`updatedAt`) && length(`updatedAt`) == 1)) {
          stop(paste("Error! Invalid data for `updatedAt`. Must be a string:", `updatedAt`))
        }
        self$`updatedAt` <- `updatedAt`
      }
      if (!is.null(`lastRunAt`)) {
        if (!is.character(`lastRunAt`)) {
          stop(paste("Error! Invalid data for `lastRunAt`. Must be a string:", `lastRunAt`))
        }
        self$`lastRunAt` <- `lastRunAt`
      }
      if (!is.null(`nextRunAt`)) {
        if (!is.character(`nextRunAt`)) {
          stop(paste("Error! Invalid data for `nextRunAt`. Must be a string:", `nextRunAt`))
        }
        self$`nextRunAt` <- `nextRunAt`
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
    #' @return Automation as a base R list.
    #' @examples
    #' # convert array of Automation (x) to a data frame
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
    #' Convert Automation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AutomationObject <- list()
      if (!is.null(self$`automationKey`)) {
        AutomationObject[["automationKey"]] <-
          self$`automationKey`
      }
      if (!is.null(self$`config`)) {
        AutomationObject[["config"]] <-
          self$extractSimpleType(self$`config`)
      }
      if (!is.null(self$`createdAt`)) {
        AutomationObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`enabled`)) {
        AutomationObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`lastRunAt`)) {
        AutomationObject[["lastRunAt"]] <-
          self$`lastRunAt`
      }
      if (!is.null(self$`nextRunAt`)) {
        AutomationObject[["nextRunAt"]] <-
          self$`nextRunAt`
      }
      if (!is.null(self$`tenantId`)) {
        AutomationObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`updatedAt`)) {
        AutomationObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      return(AutomationObject)
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
    #' Deserialize JSON string into an instance of Automation
    #'
    #' @param input_json the JSON input
    #' @return the instance of Automation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`automationKey`)) {
        self$`automationKey` <- this_object$`automationKey`
      }
      if (!is.null(this_object$`config`)) {
        `config_object` <- AnyType$new()
        `config_object`$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
        self$`config` <- `config_object`
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`lastRunAt`)) {
        self$`lastRunAt` <- this_object$`lastRunAt`
      }
      if (!is.null(this_object$`nextRunAt`)) {
        self$`nextRunAt` <- this_object$`nextRunAt`
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
    #' @return Automation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Automation
    #'
    #' @param input_json the JSON input
    #' @return the instance of Automation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`automationKey` <- this_object$`automationKey`
      self$`config` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
      self$`createdAt` <- this_object$`createdAt`
      self$`enabled` <- this_object$`enabled`
      self$`lastRunAt` <- this_object$`lastRunAt`
      self$`nextRunAt` <- this_object$`nextRunAt`
      self$`tenantId` <- this_object$`tenantId`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },

    #' @description
    #' Validate JSON input with respect to Automation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `automationKey`
      if (!is.null(input_json$`automationKey`)) {
        if (!(is.character(input_json$`automationKey`) && length(input_json$`automationKey`) == 1)) {
          stop(paste("Error! Invalid data for `automationKey`. Must be a string:", input_json$`automationKey`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Automation: the required field `automationKey` is missing."))
      }
      # check the required field `config`
      if (!is.null(input_json$`config`)) {
        stopifnot(R6::is.R6(input_json$`config`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Automation: the required field `config` is missing."))
      }
      # check the required field `createdAt`
      if (!is.null(input_json$`createdAt`)) {
        if (!(is.character(input_json$`createdAt`) && length(input_json$`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", input_json$`createdAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Automation: the required field `createdAt` is missing."))
      }
      # check the required field `enabled`
      if (!is.null(input_json$`enabled`)) {
        if (!(is.logical(input_json$`enabled`) && length(input_json$`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", input_json$`enabled`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Automation: the required field `enabled` is missing."))
      }
      # check the required field `tenantId`
      if (!is.null(input_json$`tenantId`)) {
        if (!(is.character(input_json$`tenantId`) && length(input_json$`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", input_json$`tenantId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Automation: the required field `tenantId` is missing."))
      }
      # check the required field `updatedAt`
      if (!is.null(input_json$`updatedAt`)) {
        if (!(is.character(input_json$`updatedAt`) && length(input_json$`updatedAt`) == 1)) {
          stop(paste("Error! Invalid data for `updatedAt`. Must be a string:", input_json$`updatedAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Automation: the required field `updatedAt` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Automation
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `automationKey` is null
      if (is.null(self$`automationKey`)) {
        return(FALSE)
      }

      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        return(FALSE)
      }

      # check if the required `enabled` is null
      if (is.null(self$`enabled`)) {
        return(FALSE)
      }

      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
        return(FALSE)
      }

      # check if the required `updatedAt` is null
      if (is.null(self$`updatedAt`)) {
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
      # check if the required `automationKey` is null
      if (is.null(self$`automationKey`)) {
        invalid_fields["automationKey"] <- "Non-nullable required field `automationKey` cannot be null."
      }

      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        invalid_fields["createdAt"] <- "Non-nullable required field `createdAt` cannot be null."
      }

      # check if the required `enabled` is null
      if (is.null(self$`enabled`)) {
        invalid_fields["enabled"] <- "Non-nullable required field `enabled` cannot be null."
      }

      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
        invalid_fields["tenantId"] <- "Non-nullable required field `tenantId` cannot be null."
      }

      # check if the required `updatedAt` is null
      if (is.null(self$`updatedAt`)) {
        invalid_fields["updatedAt"] <- "Non-nullable required field `updatedAt` cannot be null."
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
# Automation$unlock()
#
## Below is an example to define the print function
# Automation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Automation$lock()

