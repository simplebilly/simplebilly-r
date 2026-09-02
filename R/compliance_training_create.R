#' Create a new ComplianceTrainingCreate
#'
#' @description
#' ComplianceTrainingCreate Class
#'
#' @docType class
#' @title ComplianceTrainingCreate
#' @description ComplianceTrainingCreate Class
#' @format An \code{R6Class} generator object
#' @field assignable Whether HR can assign this training as required for employees. character [optional]
#' @field code Stable code used by plugins and frontend players (e.g. \"data_privacy\"). character [optional]
#' @field description  character [optional]
#' @field passScore Minimum score (0–100) required to pass. integer [optional]
#' @field pluginPlatform Marketplace plugin platform id when source = Plugin. character [optional]
#' @field source  \link{TrainingSource} [optional]
#' @field title  character [optional]
#' @field validityMonths Certificate validity in months; null = no expiry. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ComplianceTrainingCreate <- R6::R6Class(
  "ComplianceTrainingCreate",
  public = list(
    `assignable` = NULL,
    `code` = NULL,
    `description` = NULL,
    `passScore` = NULL,
    `pluginPlatform` = NULL,
    `source` = NULL,
    `title` = NULL,
    `validityMonths` = NULL,

    #' @description
    #' Initialize a new ComplianceTrainingCreate class.
    #'
    #' @param assignable Whether HR can assign this training as required for employees.
    #' @param code Stable code used by plugins and frontend players (e.g. \"data_privacy\").
    #' @param description description
    #' @param passScore Minimum score (0–100) required to pass.
    #' @param pluginPlatform Marketplace plugin platform id when source = Plugin.
    #' @param source source
    #' @param title title
    #' @param validityMonths Certificate validity in months; null = no expiry.
    #' @param ... Other optional arguments.
    initialize = function(`assignable` = NULL, `code` = NULL, `description` = NULL, `passScore` = NULL, `pluginPlatform` = NULL, `source` = NULL, `title` = NULL, `validityMonths` = NULL, ...) {
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
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
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
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
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
    #' @return ComplianceTrainingCreate as a base R list.
    #' @examples
    #' # convert array of ComplianceTrainingCreate (x) to a data frame
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
    #' Convert ComplianceTrainingCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ComplianceTrainingCreateObject <- list()
      if (!is.null(self$`assignable`)) {
        ComplianceTrainingCreateObject[["assignable"]] <-
          self$`assignable`
      }
      if (!is.null(self$`code`)) {
        ComplianceTrainingCreateObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`description`)) {
        ComplianceTrainingCreateObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`passScore`)) {
        ComplianceTrainingCreateObject[["passScore"]] <-
          self$`passScore`
      }
      if (!is.null(self$`pluginPlatform`)) {
        ComplianceTrainingCreateObject[["pluginPlatform"]] <-
          self$`pluginPlatform`
      }
      if (!is.null(self$`source`)) {
        ComplianceTrainingCreateObject[["source"]] <-
          self$extractSimpleType(self$`source`)
      }
      if (!is.null(self$`title`)) {
        ComplianceTrainingCreateObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`validityMonths`)) {
        ComplianceTrainingCreateObject[["validityMonths"]] <-
          self$`validityMonths`
      }
      return(ComplianceTrainingCreateObject)
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
    #' Deserialize JSON string into an instance of ComplianceTrainingCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComplianceTrainingCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assignable`)) {
        self$`assignable` <- this_object$`assignable`
      }
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
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
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
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
    #' @return ComplianceTrainingCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ComplianceTrainingCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComplianceTrainingCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assignable` <- this_object$`assignable`
      self$`code` <- this_object$`code`
      self$`description` <- this_object$`description`
      self$`passScore` <- this_object$`passScore`
      self$`pluginPlatform` <- this_object$`pluginPlatform`
      self$`source` <- TrainingSource$new()$fromJSON(jsonlite::toJSON(this_object$`source`, auto_unbox = TRUE, digits = NA))
      self$`title` <- this_object$`title`
      self$`validityMonths` <- this_object$`validityMonths`
      self
    },

    #' @description
    #' Validate JSON input with respect to ComplianceTrainingCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ComplianceTrainingCreate
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
# ComplianceTrainingCreate$unlock()
#
## Below is an example to define the print function
# ComplianceTrainingCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ComplianceTrainingCreate$lock()

