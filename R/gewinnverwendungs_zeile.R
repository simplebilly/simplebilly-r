#' Create a new GewinnverwendungsZeile
#'
#' @description
#' GewinnverwendungsZeile Class
#'
#' @docType class
#' @title GewinnverwendungsZeile
#' @description GewinnverwendungsZeile Class
#' @format An \code{R6Class} generator object
#' @field betrag Betrag in EUR (2 Nachkommastellen, als String formatiert). character
#' @field label Deutsche Bezeichnung der Zeile. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GewinnverwendungsZeile <- R6::R6Class(
  "GewinnverwendungsZeile",
  public = list(
    `betrag` = NULL,
    `label` = NULL,

    #' @description
    #' Initialize a new GewinnverwendungsZeile class.
    #'
    #' @param betrag Betrag in EUR (2 Nachkommastellen, als String formatiert).
    #' @param label Deutsche Bezeichnung der Zeile.
    #' @param ... Other optional arguments.
    initialize = function(`betrag`, `label`, ...) {
      if (!missing(`betrag`)) {
        if (!(is.character(`betrag`) && length(`betrag`) == 1)) {
          stop(paste("Error! Invalid data for `betrag`. Must be a string:", `betrag`))
        }
        self$`betrag` <- `betrag`
      }
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
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
    #' @return GewinnverwendungsZeile as a base R list.
    #' @examples
    #' # convert array of GewinnverwendungsZeile (x) to a data frame
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
    #' Convert GewinnverwendungsZeile to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GewinnverwendungsZeileObject <- list()
      if (!is.null(self$`betrag`)) {
        GewinnverwendungsZeileObject[["betrag"]] <-
          self$`betrag`
      }
      if (!is.null(self$`label`)) {
        GewinnverwendungsZeileObject[["label"]] <-
          self$`label`
      }
      return(GewinnverwendungsZeileObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GewinnverwendungsZeile
    #'
    #' @param input_json the JSON input
    #' @return the instance of GewinnverwendungsZeile
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`betrag`)) {
        self$`betrag` <- this_object$`betrag`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GewinnverwendungsZeile in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GewinnverwendungsZeile
    #'
    #' @param input_json the JSON input
    #' @return the instance of GewinnverwendungsZeile
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`betrag` <- this_object$`betrag`
      self$`label` <- this_object$`label`
      self
    },

    #' @description
    #' Validate JSON input with respect to GewinnverwendungsZeile and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GewinnverwendungsZeile: the required field `betrag` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewinnverwendungsZeile: the required field `label` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GewinnverwendungsZeile
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

      # check if the required `label` is null
      if (is.null(self$`label`)) {
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

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
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
# GewinnverwendungsZeile$unlock()
#
## Below is an example to define the print function
# GewinnverwendungsZeile$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GewinnverwendungsZeile$lock()

