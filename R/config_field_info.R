#' Create a new ConfigFieldInfo
#'
#' @description
#' Owned, API-safe copy of a [`ConfigField`] for DTOs / OpenAPI ([`ConfigField`] borrows `&'static str`, which cannot round-trip `Deserialize`).
#'
#' @docType class
#' @title ConfigFieldInfo
#' @description ConfigFieldInfo Class
#' @format An \code{R6Class} generator object
#' @field kind  \link{ConfigFieldKind}
#' @field label  character
#' @field name  character
#' @field placeholder  character [optional]
#' @field required  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConfigFieldInfo <- R6::R6Class(
  "ConfigFieldInfo",
  public = list(
    `kind` = NULL,
    `label` = NULL,
    `name` = NULL,
    `placeholder` = NULL,
    `required` = NULL,

    #' @description
    #' Initialize a new ConfigFieldInfo class.
    #'
    #' @param kind kind
    #' @param label label
    #' @param name name
    #' @param required required
    #' @param placeholder placeholder
    #' @param ... Other optional arguments.
    initialize = function(`kind`, `label`, `name`, `required`, `placeholder` = NULL, ...) {
      if (!missing(`kind`)) {
        stopifnot(R6::is.R6(`kind`))
        self$`kind` <- `kind`
      }
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`required`)) {
        if (!(is.logical(`required`) && length(`required`) == 1)) {
          stop(paste("Error! Invalid data for `required`. Must be a boolean:", `required`))
        }
        self$`required` <- `required`
      }
      if (!is.null(`placeholder`)) {
        if (!(is.character(`placeholder`) && length(`placeholder`) == 1)) {
          stop(paste("Error! Invalid data for `placeholder`. Must be a string:", `placeholder`))
        }
        self$`placeholder` <- `placeholder`
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
    #' @return ConfigFieldInfo as a base R list.
    #' @examples
    #' # convert array of ConfigFieldInfo (x) to a data frame
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
    #' Convert ConfigFieldInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConfigFieldInfoObject <- list()
      if (!is.null(self$`kind`)) {
        ConfigFieldInfoObject[["kind"]] <-
          self$extractSimpleType(self$`kind`)
      }
      if (!is.null(self$`label`)) {
        ConfigFieldInfoObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`name`)) {
        ConfigFieldInfoObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`placeholder`)) {
        ConfigFieldInfoObject[["placeholder"]] <-
          self$`placeholder`
      }
      if (!is.null(self$`required`)) {
        ConfigFieldInfoObject[["required"]] <-
          self$`required`
      }
      return(ConfigFieldInfoObject)
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
    #' Deserialize JSON string into an instance of ConfigFieldInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConfigFieldInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`kind`)) {
        `kind_object` <- ConfigFieldKind$new()
        `kind_object`$fromJSON(jsonlite::toJSON(this_object$`kind`, auto_unbox = TRUE, digits = NA))
        self$`kind` <- `kind_object`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`placeholder`)) {
        self$`placeholder` <- this_object$`placeholder`
      }
      if (!is.null(this_object$`required`)) {
        self$`required` <- this_object$`required`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ConfigFieldInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConfigFieldInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConfigFieldInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`kind` <- ConfigFieldKind$new()$fromJSON(jsonlite::toJSON(this_object$`kind`, auto_unbox = TRUE, digits = NA))
      self$`label` <- this_object$`label`
      self$`name` <- this_object$`name`
      self$`placeholder` <- this_object$`placeholder`
      self$`required` <- this_object$`required`
      self
    },

    #' @description
    #' Validate JSON input with respect to ConfigFieldInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `kind`
      if (!is.null(input_json$`kind`)) {
        stopifnot(R6::is.R6(input_json$`kind`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConfigFieldInfo: the required field `kind` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConfigFieldInfo: the required field `label` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConfigFieldInfo: the required field `name` is missing."))
      }
      # check the required field `required`
      if (!is.null(input_json$`required`)) {
        if (!(is.logical(input_json$`required`) && length(input_json$`required`) == 1)) {
          stop(paste("Error! Invalid data for `required`. Must be a boolean:", input_json$`required`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConfigFieldInfo: the required field `required` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConfigFieldInfo
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `kind` is null
      if (is.null(self$`kind`)) {
        return(FALSE)
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `required` is null
      if (is.null(self$`required`)) {
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
      # check if the required `kind` is null
      if (is.null(self$`kind`)) {
        invalid_fields["kind"] <- "Non-nullable required field `kind` cannot be null."
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `required` is null
      if (is.null(self$`required`)) {
        invalid_fields["required"] <- "Non-nullable required field `required` cannot be null."
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
# ConfigFieldInfo$unlock()
#
## Below is an example to define the print function
# ConfigFieldInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConfigFieldInfo$lock()

