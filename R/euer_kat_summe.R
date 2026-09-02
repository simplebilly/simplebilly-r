#' Create a new EuerKatSumme
#'
#' @description
#' EuerKatSumme Class
#'
#' @docType class
#' @title EuerKatSumme
#' @description EuerKatSumme Class
#' @format An \code{R6Class} generator object
#' @field betrag  character
#' @field name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EuerKatSumme <- R6::R6Class(
  "EuerKatSumme",
  public = list(
    `betrag` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new EuerKatSumme class.
    #'
    #' @param betrag betrag
    #' @param name name
    #' @param ... Other optional arguments.
    initialize = function(`betrag`, `name`, ...) {
      if (!missing(`betrag`)) {
        if (!(is.character(`betrag`) && length(`betrag`) == 1)) {
          stop(paste("Error! Invalid data for `betrag`. Must be a string:", `betrag`))
        }
        self$`betrag` <- `betrag`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return EuerKatSumme as a base R list.
    #' @examples
    #' # convert array of EuerKatSumme (x) to a data frame
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
    #' Convert EuerKatSumme to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EuerKatSummeObject <- list()
      if (!is.null(self$`betrag`)) {
        EuerKatSummeObject[["betrag"]] <-
          self$`betrag`
      }
      if (!is.null(self$`name`)) {
        EuerKatSummeObject[["name"]] <-
          self$`name`
      }
      return(EuerKatSummeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of EuerKatSumme
    #'
    #' @param input_json the JSON input
    #' @return the instance of EuerKatSumme
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`betrag`)) {
        self$`betrag` <- this_object$`betrag`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EuerKatSumme in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EuerKatSumme
    #'
    #' @param input_json the JSON input
    #' @return the instance of EuerKatSumme
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`betrag` <- this_object$`betrag`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to EuerKatSumme and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `betrag`
      if (!is.null(input_json$`betrag`)) {
        if (!(is.character(input_json$`betrag`) && length(input_json$`betrag`) == 1)) {
          stop(paste("Error! Invalid data for `betrag`. Must be a string:", input_json$`betrag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerKatSumme: the required field `betrag` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerKatSumme: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EuerKatSumme
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `betrag` is null
      if (is.null(self$`betrag`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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
      # check if the required `betrag` is null
      if (is.null(self$`betrag`)) {
        invalid_fields["betrag"] <- "Non-nullable required field `betrag` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# EuerKatSumme$unlock()
#
## Below is an example to define the print function
# EuerKatSumme$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EuerKatSumme$lock()

