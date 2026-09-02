#' Create a new OssDependency
#'
#' @description
#' OssDependency Class
#'
#' @docType class
#' @title OssDependency
#' @description OssDependency Class
#' @format An \code{R6Class} generator object
#' @field dependency_type  character
#' @field license  character [optional]
#' @field name  character
#' @field version  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OssDependency <- R6::R6Class(
  "OssDependency",
  public = list(
    `dependency_type` = NULL,
    `license` = NULL,
    `name` = NULL,
    `version` = NULL,

    #' @description
    #' Initialize a new OssDependency class.
    #'
    #' @param dependency_type dependency_type
    #' @param name name
    #' @param version version
    #' @param license license
    #' @param ... Other optional arguments.
    initialize = function(`dependency_type`, `name`, `version`, `license` = NULL, ...) {
      if (!missing(`dependency_type`)) {
        if (!(is.character(`dependency_type`) && length(`dependency_type`) == 1)) {
          stop(paste("Error! Invalid data for `dependency_type`. Must be a string:", `dependency_type`))
        }
        self$`dependency_type` <- `dependency_type`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`license`)) {
        if (!(is.character(`license`) && length(`license`) == 1)) {
          stop(paste("Error! Invalid data for `license`. Must be a string:", `license`))
        }
        self$`license` <- `license`
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
    #' @return OssDependency as a base R list.
    #' @examples
    #' # convert array of OssDependency (x) to a data frame
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
    #' Convert OssDependency to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OssDependencyObject <- list()
      if (!is.null(self$`dependency_type`)) {
        OssDependencyObject[["dependency_type"]] <-
          self$`dependency_type`
      }
      if (!is.null(self$`license`)) {
        OssDependencyObject[["license"]] <-
          self$`license`
      }
      if (!is.null(self$`name`)) {
        OssDependencyObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`version`)) {
        OssDependencyObject[["version"]] <-
          self$`version`
      }
      return(OssDependencyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OssDependency
    #'
    #' @param input_json the JSON input
    #' @return the instance of OssDependency
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`dependency_type`)) {
        self$`dependency_type` <- this_object$`dependency_type`
      }
      if (!is.null(this_object$`license`)) {
        self$`license` <- this_object$`license`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OssDependency in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OssDependency
    #'
    #' @param input_json the JSON input
    #' @return the instance of OssDependency
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`dependency_type` <- this_object$`dependency_type`
      self$`license` <- this_object$`license`
      self$`name` <- this_object$`name`
      self$`version` <- this_object$`version`
      self
    },

    #' @description
    #' Validate JSON input with respect to OssDependency and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `dependency_type`
      if (!is.null(input_json$`dependency_type`)) {
        if (!(is.character(input_json$`dependency_type`) && length(input_json$`dependency_type`) == 1)) {
          stop(paste("Error! Invalid data for `dependency_type`. Must be a string:", input_json$`dependency_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OssDependency: the required field `dependency_type` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OssDependency: the required field `name` is missing."))
      }
      # check the required field `version`
      if (!is.null(input_json$`version`)) {
        if (!(is.character(input_json$`version`) && length(input_json$`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", input_json$`version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OssDependency: the required field `version` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OssDependency
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `dependency_type` is null
      if (is.null(self$`dependency_type`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
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
      # check if the required `dependency_type` is null
      if (is.null(self$`dependency_type`)) {
        invalid_fields["dependency_type"] <- "Non-nullable required field `dependency_type` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
        invalid_fields["version"] <- "Non-nullable required field `version` cannot be null."
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
# OssDependency$unlock()
#
## Below is an example to define the print function
# OssDependency$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OssDependency$lock()

