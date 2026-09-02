#' Create a new AutomationDto
#'
#' @description
#' AutomationDto Class
#'
#' @docType class
#' @title AutomationDto
#' @description AutomationDto Class
#' @format An \code{R6Class} generator object
#' @field automationKey  character
#' @field config  \link{AnyType}
#' @field defaultDay  integer [optional]
#' @field description  character
#' @field enabled  character
#' @field kind  character
#' @field lastRunAt  character [optional]
#' @field nextRunAt  character [optional]
#' @field scheduleKind  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AutomationDto <- R6::R6Class(
  "AutomationDto",
  public = list(
    `automationKey` = NULL,
    `config` = NULL,
    `defaultDay` = NULL,
    `description` = NULL,
    `enabled` = NULL,
    `kind` = NULL,
    `lastRunAt` = NULL,
    `nextRunAt` = NULL,
    `scheduleKind` = NULL,

    #' @description
    #' Initialize a new AutomationDto class.
    #'
    #' @param automationKey automationKey
    #' @param config config
    #' @param description description
    #' @param enabled enabled
    #' @param kind kind
    #' @param scheduleKind scheduleKind
    #' @param defaultDay defaultDay
    #' @param lastRunAt lastRunAt
    #' @param nextRunAt nextRunAt
    #' @param ... Other optional arguments.
    initialize = function(`automationKey`, `config`, `description`, `enabled`, `kind`, `scheduleKind`, `defaultDay` = NULL, `lastRunAt` = NULL, `nextRunAt` = NULL, ...) {
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
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!missing(`kind`)) {
        if (!(is.character(`kind`) && length(`kind`) == 1)) {
          stop(paste("Error! Invalid data for `kind`. Must be a string:", `kind`))
        }
        self$`kind` <- `kind`
      }
      if (!missing(`scheduleKind`)) {
        if (!(is.character(`scheduleKind`) && length(`scheduleKind`) == 1)) {
          stop(paste("Error! Invalid data for `scheduleKind`. Must be a string:", `scheduleKind`))
        }
        self$`scheduleKind` <- `scheduleKind`
      }
      if (!is.null(`defaultDay`)) {
        if (!(is.numeric(`defaultDay`) && length(`defaultDay`) == 1)) {
          stop(paste("Error! Invalid data for `defaultDay`. Must be an integer:", `defaultDay`))
        }
        self$`defaultDay` <- `defaultDay`
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
    #' @return AutomationDto as a base R list.
    #' @examples
    #' # convert array of AutomationDto (x) to a data frame
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
    #' Convert AutomationDto to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AutomationDtoObject <- list()
      if (!is.null(self$`automationKey`)) {
        AutomationDtoObject[["automationKey"]] <-
          self$`automationKey`
      }
      if (!is.null(self$`config`)) {
        AutomationDtoObject[["config"]] <-
          self$extractSimpleType(self$`config`)
      }
      if (!is.null(self$`defaultDay`)) {
        AutomationDtoObject[["defaultDay"]] <-
          self$`defaultDay`
      }
      if (!is.null(self$`description`)) {
        AutomationDtoObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`enabled`)) {
        AutomationDtoObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`kind`)) {
        AutomationDtoObject[["kind"]] <-
          self$`kind`
      }
      if (!is.null(self$`lastRunAt`)) {
        AutomationDtoObject[["lastRunAt"]] <-
          self$`lastRunAt`
      }
      if (!is.null(self$`nextRunAt`)) {
        AutomationDtoObject[["nextRunAt"]] <-
          self$`nextRunAt`
      }
      if (!is.null(self$`scheduleKind`)) {
        AutomationDtoObject[["scheduleKind"]] <-
          self$`scheduleKind`
      }
      return(AutomationDtoObject)
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
    #' Deserialize JSON string into an instance of AutomationDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of AutomationDto
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
      if (!is.null(this_object$`defaultDay`)) {
        self$`defaultDay` <- this_object$`defaultDay`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`kind`)) {
        self$`kind` <- this_object$`kind`
      }
      if (!is.null(this_object$`lastRunAt`)) {
        self$`lastRunAt` <- this_object$`lastRunAt`
      }
      if (!is.null(this_object$`nextRunAt`)) {
        self$`nextRunAt` <- this_object$`nextRunAt`
      }
      if (!is.null(this_object$`scheduleKind`)) {
        self$`scheduleKind` <- this_object$`scheduleKind`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AutomationDto in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AutomationDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of AutomationDto
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`automationKey` <- this_object$`automationKey`
      self$`config` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
      self$`defaultDay` <- this_object$`defaultDay`
      self$`description` <- this_object$`description`
      self$`enabled` <- this_object$`enabled`
      self$`kind` <- this_object$`kind`
      self$`lastRunAt` <- this_object$`lastRunAt`
      self$`nextRunAt` <- this_object$`nextRunAt`
      self$`scheduleKind` <- this_object$`scheduleKind`
      self
    },

    #' @description
    #' Validate JSON input with respect to AutomationDto and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AutomationDto: the required field `automationKey` is missing."))
      }
      # check the required field `config`
      if (!is.null(input_json$`config`)) {
        stopifnot(R6::is.R6(input_json$`config`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AutomationDto: the required field `config` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AutomationDto: the required field `description` is missing."))
      }
      # check the required field `enabled`
      if (!is.null(input_json$`enabled`)) {
        if (!(is.logical(input_json$`enabled`) && length(input_json$`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", input_json$`enabled`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AutomationDto: the required field `enabled` is missing."))
      }
      # check the required field `kind`
      if (!is.null(input_json$`kind`)) {
        if (!(is.character(input_json$`kind`) && length(input_json$`kind`) == 1)) {
          stop(paste("Error! Invalid data for `kind`. Must be a string:", input_json$`kind`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AutomationDto: the required field `kind` is missing."))
      }
      # check the required field `scheduleKind`
      if (!is.null(input_json$`scheduleKind`)) {
        if (!(is.character(input_json$`scheduleKind`) && length(input_json$`scheduleKind`) == 1)) {
          stop(paste("Error! Invalid data for `scheduleKind`. Must be a string:", input_json$`scheduleKind`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AutomationDto: the required field `scheduleKind` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AutomationDto
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

      if (self$`defaultDay` < 0) {
        return(FALSE)
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        return(FALSE)
      }

      # check if the required `enabled` is null
      if (is.null(self$`enabled`)) {
        return(FALSE)
      }

      # check if the required `kind` is null
      if (is.null(self$`kind`)) {
        return(FALSE)
      }

      # check if the required `scheduleKind` is null
      if (is.null(self$`scheduleKind`)) {
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

      if (self$`defaultDay` < 0) {
        invalid_fields["defaultDay"] <- "Invalid value for `defaultDay`, must be bigger than or equal to 0."
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      # check if the required `enabled` is null
      if (is.null(self$`enabled`)) {
        invalid_fields["enabled"] <- "Non-nullable required field `enabled` cannot be null."
      }

      # check if the required `kind` is null
      if (is.null(self$`kind`)) {
        invalid_fields["kind"] <- "Non-nullable required field `kind` cannot be null."
      }

      # check if the required `scheduleKind` is null
      if (is.null(self$`scheduleKind`)) {
        invalid_fields["scheduleKind"] <- "Non-nullable required field `scheduleKind` cannot be null."
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
# AutomationDto$unlock()
#
## Below is an example to define the print function
# AutomationDto$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AutomationDto$lock()

