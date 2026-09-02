#' Create a new EksMonatsWert
#'
#' @description
#' EksMonatsWert Class
#'
#' @docType class
#' @title EksMonatsWert
#' @description EksMonatsWert Class
#' @format An \code{R6Class} generator object
#' @field ausgaben  character
#' @field einnahmen  character
#' @field ergebnis  character
#' @field monat  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EksMonatsWert <- R6::R6Class(
  "EksMonatsWert",
  public = list(
    `ausgaben` = NULL,
    `einnahmen` = NULL,
    `ergebnis` = NULL,
    `monat` = NULL,

    #' @description
    #' Initialize a new EksMonatsWert class.
    #'
    #' @param ausgaben ausgaben
    #' @param einnahmen einnahmen
    #' @param ergebnis ergebnis
    #' @param monat monat
    #' @param ... Other optional arguments.
    initialize = function(`ausgaben`, `einnahmen`, `ergebnis`, `monat`, ...) {
      if (!missing(`ausgaben`)) {
        if (!(is.character(`ausgaben`) && length(`ausgaben`) == 1)) {
          stop(paste("Error! Invalid data for `ausgaben`. Must be a string:", `ausgaben`))
        }
        self$`ausgaben` <- `ausgaben`
      }
      if (!missing(`einnahmen`)) {
        if (!(is.character(`einnahmen`) && length(`einnahmen`) == 1)) {
          stop(paste("Error! Invalid data for `einnahmen`. Must be a string:", `einnahmen`))
        }
        self$`einnahmen` <- `einnahmen`
      }
      if (!missing(`ergebnis`)) {
        if (!(is.character(`ergebnis`) && length(`ergebnis`) == 1)) {
          stop(paste("Error! Invalid data for `ergebnis`. Must be a string:", `ergebnis`))
        }
        self$`ergebnis` <- `ergebnis`
      }
      if (!missing(`monat`)) {
        if (!(is.character(`monat`) && length(`monat`) == 1)) {
          stop(paste("Error! Invalid data for `monat`. Must be a string:", `monat`))
        }
        self$`monat` <- `monat`
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
    #' @return EksMonatsWert as a base R list.
    #' @examples
    #' # convert array of EksMonatsWert (x) to a data frame
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
    #' Convert EksMonatsWert to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EksMonatsWertObject <- list()
      if (!is.null(self$`ausgaben`)) {
        EksMonatsWertObject[["ausgaben"]] <-
          self$`ausgaben`
      }
      if (!is.null(self$`einnahmen`)) {
        EksMonatsWertObject[["einnahmen"]] <-
          self$`einnahmen`
      }
      if (!is.null(self$`ergebnis`)) {
        EksMonatsWertObject[["ergebnis"]] <-
          self$`ergebnis`
      }
      if (!is.null(self$`monat`)) {
        EksMonatsWertObject[["monat"]] <-
          self$`monat`
      }
      return(EksMonatsWertObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of EksMonatsWert
    #'
    #' @param input_json the JSON input
    #' @return the instance of EksMonatsWert
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ausgaben`)) {
        self$`ausgaben` <- this_object$`ausgaben`
      }
      if (!is.null(this_object$`einnahmen`)) {
        self$`einnahmen` <- this_object$`einnahmen`
      }
      if (!is.null(this_object$`ergebnis`)) {
        self$`ergebnis` <- this_object$`ergebnis`
      }
      if (!is.null(this_object$`monat`)) {
        self$`monat` <- this_object$`monat`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EksMonatsWert in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EksMonatsWert
    #'
    #' @param input_json the JSON input
    #' @return the instance of EksMonatsWert
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ausgaben` <- this_object$`ausgaben`
      self$`einnahmen` <- this_object$`einnahmen`
      self$`ergebnis` <- this_object$`ergebnis`
      self$`monat` <- this_object$`monat`
      self
    },

    #' @description
    #' Validate JSON input with respect to EksMonatsWert and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ausgaben`
      if (!is.null(input_json$`ausgaben`)) {
        if (!(is.character(input_json$`ausgaben`) && length(input_json$`ausgaben`) == 1)) {
          stop(paste("Error! Invalid data for `ausgaben`. Must be a string:", input_json$`ausgaben`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EksMonatsWert: the required field `ausgaben` is missing."))
      }
      # check the required field `einnahmen`
      if (!is.null(input_json$`einnahmen`)) {
        if (!(is.character(input_json$`einnahmen`) && length(input_json$`einnahmen`) == 1)) {
          stop(paste("Error! Invalid data for `einnahmen`. Must be a string:", input_json$`einnahmen`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EksMonatsWert: the required field `einnahmen` is missing."))
      }
      # check the required field `ergebnis`
      if (!is.null(input_json$`ergebnis`)) {
        if (!(is.character(input_json$`ergebnis`) && length(input_json$`ergebnis`) == 1)) {
          stop(paste("Error! Invalid data for `ergebnis`. Must be a string:", input_json$`ergebnis`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EksMonatsWert: the required field `ergebnis` is missing."))
      }
      # check the required field `monat`
      if (!is.null(input_json$`monat`)) {
        if (!(is.character(input_json$`monat`) && length(input_json$`monat`) == 1)) {
          stop(paste("Error! Invalid data for `monat`. Must be a string:", input_json$`monat`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EksMonatsWert: the required field `monat` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EksMonatsWert
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ausgaben` is null
      if (is.null(self$`ausgaben`)) {
        return(FALSE)
      }

      # check if the required `einnahmen` is null
      if (is.null(self$`einnahmen`)) {
        return(FALSE)
      }

      # check if the required `ergebnis` is null
      if (is.null(self$`ergebnis`)) {
        return(FALSE)
      }

      # check if the required `monat` is null
      if (is.null(self$`monat`)) {
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
      # check if the required `ausgaben` is null
      if (is.null(self$`ausgaben`)) {
        invalid_fields["ausgaben"] <- "Non-nullable required field `ausgaben` cannot be null."
      }

      # check if the required `einnahmen` is null
      if (is.null(self$`einnahmen`)) {
        invalid_fields["einnahmen"] <- "Non-nullable required field `einnahmen` cannot be null."
      }

      # check if the required `ergebnis` is null
      if (is.null(self$`ergebnis`)) {
        invalid_fields["ergebnis"] <- "Non-nullable required field `ergebnis` cannot be null."
      }

      # check if the required `monat` is null
      if (is.null(self$`monat`)) {
        invalid_fields["monat"] <- "Non-nullable required field `monat` cannot be null."
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
# EksMonatsWert$unlock()
#
## Below is an example to define the print function
# EksMonatsWert$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EksMonatsWert$lock()

