#' Create a new PlausibilityCheck
#'
#' @description
#' PlausibilityCheck Class
#'
#' @docType class
#' @title PlausibilityCheck
#' @description PlausibilityCheck Class
#' @format An \code{R6Class} generator object
#' @field detail  character
#' @field id  character
#' @field name  character
#' @field severity  \link{Severity}
#' @field status  \link{CheckStatus}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PlausibilityCheck <- R6::R6Class(
  "PlausibilityCheck",
  public = list(
    `detail` = NULL,
    `id` = NULL,
    `name` = NULL,
    `severity` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new PlausibilityCheck class.
    #'
    #' @param detail detail
    #' @param id id
    #' @param name name
    #' @param severity severity
    #' @param status status
    #' @param ... Other optional arguments.
    initialize = function(`detail`, `id`, `name`, `severity`, `status`, ...) {
      if (!missing(`detail`)) {
        if (!(is.character(`detail`) && length(`detail`) == 1)) {
          stop(paste("Error! Invalid data for `detail`. Must be a string:", `detail`))
        }
        self$`detail` <- `detail`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`severity`)) {
        if (!(`severity` %in% c())) {
          stop(paste("Error! \"", `severity`, "\" cannot be assigned to `severity`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`severity`))
        self$`severity` <- `severity`
      }
      if (!missing(`status`)) {
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
    #' @return PlausibilityCheck as a base R list.
    #' @examples
    #' # convert array of PlausibilityCheck (x) to a data frame
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
    #' Convert PlausibilityCheck to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PlausibilityCheckObject <- list()
      if (!is.null(self$`detail`)) {
        PlausibilityCheckObject[["detail"]] <-
          self$`detail`
      }
      if (!is.null(self$`id`)) {
        PlausibilityCheckObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        PlausibilityCheckObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`severity`)) {
        PlausibilityCheckObject[["severity"]] <-
          self$extractSimpleType(self$`severity`)
      }
      if (!is.null(self$`status`)) {
        PlausibilityCheckObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      return(PlausibilityCheckObject)
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
    #' Deserialize JSON string into an instance of PlausibilityCheck
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlausibilityCheck
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`detail`)) {
        self$`detail` <- this_object$`detail`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`severity`)) {
        `severity_object` <- Severity$new()
        `severity_object`$fromJSON(jsonlite::toJSON(this_object$`severity`, auto_unbox = TRUE, digits = NA))
        self$`severity` <- `severity_object`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- CheckStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PlausibilityCheck in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PlausibilityCheck
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlausibilityCheck
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`detail` <- this_object$`detail`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`severity` <- Severity$new()$fromJSON(jsonlite::toJSON(this_object$`severity`, auto_unbox = TRUE, digits = NA))
      self$`status` <- CheckStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to PlausibilityCheck and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `detail`
      if (!is.null(input_json$`detail`)) {
        if (!(is.character(input_json$`detail`) && length(input_json$`detail`) == 1)) {
          stop(paste("Error! Invalid data for `detail`. Must be a string:", input_json$`detail`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlausibilityCheck: the required field `detail` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlausibilityCheck: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlausibilityCheck: the required field `name` is missing."))
      }
      # check the required field `severity`
      if (!is.null(input_json$`severity`)) {
        stopifnot(R6::is.R6(input_json$`severity`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlausibilityCheck: the required field `severity` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlausibilityCheck: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PlausibilityCheck
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `detail` is null
      if (is.null(self$`detail`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `severity` is null
      if (is.null(self$`severity`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
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
      # check if the required `detail` is null
      if (is.null(self$`detail`)) {
        invalid_fields["detail"] <- "Non-nullable required field `detail` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `severity` is null
      if (is.null(self$`severity`)) {
        invalid_fields["severity"] <- "Non-nullable required field `severity` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# PlausibilityCheck$unlock()
#
## Below is an example to define the print function
# PlausibilityCheck$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PlausibilityCheck$lock()

