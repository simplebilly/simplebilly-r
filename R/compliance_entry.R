#' Create a new ComplianceEntry
#'
#' @description
#' ComplianceEntry Class
#'
#' @docType class
#' @title ComplianceEntry
#' @description ComplianceEntry Class
#' @format An \code{R6Class} generator object
#' @field description  character
#' @field module  character
#' @field regulations  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ComplianceEntry <- R6::R6Class(
  "ComplianceEntry",
  public = list(
    `description` = NULL,
    `module` = NULL,
    `regulations` = NULL,

    #' @description
    #' Initialize a new ComplianceEntry class.
    #'
    #' @param description description
    #' @param module module
    #' @param regulations regulations
    #' @param ... Other optional arguments.
    initialize = function(`description`, `module`, `regulations`, ...) {
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`module`)) {
        if (!(is.character(`module`) && length(`module`) == 1)) {
          stop(paste("Error! Invalid data for `module`. Must be a string:", `module`))
        }
        self$`module` <- `module`
      }
      if (!missing(`regulations`)) {
        stopifnot(is.vector(`regulations`), length(`regulations`) != 0)
        sapply(`regulations`, function(x) stopifnot(is.character(x)))
        self$`regulations` <- `regulations`
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
    #' @return ComplianceEntry as a base R list.
    #' @examples
    #' # convert array of ComplianceEntry (x) to a data frame
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
    #' Convert ComplianceEntry to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ComplianceEntryObject <- list()
      if (!is.null(self$`description`)) {
        ComplianceEntryObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`module`)) {
        ComplianceEntryObject[["module"]] <-
          self$`module`
      }
      if (!is.null(self$`regulations`)) {
        ComplianceEntryObject[["regulations"]] <-
          self$`regulations`
      }
      return(ComplianceEntryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ComplianceEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComplianceEntry
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`module`)) {
        self$`module` <- this_object$`module`
      }
      if (!is.null(this_object$`regulations`)) {
        self$`regulations` <- ApiClient$new()$deserializeObj(this_object$`regulations`, "array[character]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ComplianceEntry in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ComplianceEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComplianceEntry
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`module` <- this_object$`module`
      self$`regulations` <- ApiClient$new()$deserializeObj(this_object$`regulations`, "array[character]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ComplianceEntry and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceEntry: the required field `description` is missing."))
      }
      # check the required field `module`
      if (!is.null(input_json$`module`)) {
        if (!(is.character(input_json$`module`) && length(input_json$`module`) == 1)) {
          stop(paste("Error! Invalid data for `module`. Must be a string:", input_json$`module`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceEntry: the required field `module` is missing."))
      }
      # check the required field `regulations`
      if (!is.null(input_json$`regulations`)) {
        stopifnot(is.vector(input_json$`regulations`), length(input_json$`regulations`) != 0)
        tmp <- sapply(input_json$`regulations`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceEntry: the required field `regulations` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ComplianceEntry
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `description` is null
      if (is.null(self$`description`)) {
        return(FALSE)
      }

      # check if the required `module` is null
      if (is.null(self$`module`)) {
        return(FALSE)
      }

      # check if the required `regulations` is null
      if (is.null(self$`regulations`)) {
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
      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      # check if the required `module` is null
      if (is.null(self$`module`)) {
        invalid_fields["module"] <- "Non-nullable required field `module` cannot be null."
      }

      # check if the required `regulations` is null
      if (is.null(self$`regulations`)) {
        invalid_fields["regulations"] <- "Non-nullable required field `regulations` cannot be null."
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
# ComplianceEntry$unlock()
#
## Below is an example to define the print function
# ComplianceEntry$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ComplianceEntry$lock()

