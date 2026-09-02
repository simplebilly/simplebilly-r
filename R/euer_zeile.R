#' Create a new EuerZeile
#'
#' @description
#' EuerZeile Class
#'
#' @docType class
#' @title EuerZeile
#' @description EuerZeile Class
#' @format An \code{R6Class} generator object
#' @field abschnitt  character
#' @field betrag  character
#' @field bezeichnung  character
#' @field zeile  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EuerZeile <- R6::R6Class(
  "EuerZeile",
  public = list(
    `abschnitt` = NULL,
    `betrag` = NULL,
    `bezeichnung` = NULL,
    `zeile` = NULL,

    #' @description
    #' Initialize a new EuerZeile class.
    #'
    #' @param abschnitt abschnitt
    #' @param betrag betrag
    #' @param bezeichnung bezeichnung
    #' @param zeile zeile
    #' @param ... Other optional arguments.
    initialize = function(`abschnitt`, `betrag`, `bezeichnung`, `zeile`, ...) {
      if (!missing(`abschnitt`)) {
        if (!(is.character(`abschnitt`) && length(`abschnitt`) == 1)) {
          stop(paste("Error! Invalid data for `abschnitt`. Must be a string:", `abschnitt`))
        }
        self$`abschnitt` <- `abschnitt`
      }
      if (!missing(`betrag`)) {
        if (!(is.character(`betrag`) && length(`betrag`) == 1)) {
          stop(paste("Error! Invalid data for `betrag`. Must be a string:", `betrag`))
        }
        self$`betrag` <- `betrag`
      }
      if (!missing(`bezeichnung`)) {
        if (!(is.character(`bezeichnung`) && length(`bezeichnung`) == 1)) {
          stop(paste("Error! Invalid data for `bezeichnung`. Must be a string:", `bezeichnung`))
        }
        self$`bezeichnung` <- `bezeichnung`
      }
      if (!missing(`zeile`)) {
        if (!(is.numeric(`zeile`) && length(`zeile`) == 1)) {
          stop(paste("Error! Invalid data for `zeile`. Must be an integer:", `zeile`))
        }
        self$`zeile` <- `zeile`
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
    #' @return EuerZeile as a base R list.
    #' @examples
    #' # convert array of EuerZeile (x) to a data frame
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
    #' Convert EuerZeile to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EuerZeileObject <- list()
      if (!is.null(self$`abschnitt`)) {
        EuerZeileObject[["abschnitt"]] <-
          self$`abschnitt`
      }
      if (!is.null(self$`betrag`)) {
        EuerZeileObject[["betrag"]] <-
          self$`betrag`
      }
      if (!is.null(self$`bezeichnung`)) {
        EuerZeileObject[["bezeichnung"]] <-
          self$`bezeichnung`
      }
      if (!is.null(self$`zeile`)) {
        EuerZeileObject[["zeile"]] <-
          self$`zeile`
      }
      return(EuerZeileObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of EuerZeile
    #'
    #' @param input_json the JSON input
    #' @return the instance of EuerZeile
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`abschnitt`)) {
        self$`abschnitt` <- this_object$`abschnitt`
      }
      if (!is.null(this_object$`betrag`)) {
        self$`betrag` <- this_object$`betrag`
      }
      if (!is.null(this_object$`bezeichnung`)) {
        self$`bezeichnung` <- this_object$`bezeichnung`
      }
      if (!is.null(this_object$`zeile`)) {
        self$`zeile` <- this_object$`zeile`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EuerZeile in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EuerZeile
    #'
    #' @param input_json the JSON input
    #' @return the instance of EuerZeile
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`abschnitt` <- this_object$`abschnitt`
      self$`betrag` <- this_object$`betrag`
      self$`bezeichnung` <- this_object$`bezeichnung`
      self$`zeile` <- this_object$`zeile`
      self
    },

    #' @description
    #' Validate JSON input with respect to EuerZeile and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `abschnitt`
      if (!is.null(input_json$`abschnitt`)) {
        if (!(is.character(input_json$`abschnitt`) && length(input_json$`abschnitt`) == 1)) {
          stop(paste("Error! Invalid data for `abschnitt`. Must be a string:", input_json$`abschnitt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerZeile: the required field `abschnitt` is missing."))
      }
      # check the required field `betrag`
      if (!is.null(input_json$`betrag`)) {
        if (!(is.character(input_json$`betrag`) && length(input_json$`betrag`) == 1)) {
          stop(paste("Error! Invalid data for `betrag`. Must be a string:", input_json$`betrag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerZeile: the required field `betrag` is missing."))
      }
      # check the required field `bezeichnung`
      if (!is.null(input_json$`bezeichnung`)) {
        if (!(is.character(input_json$`bezeichnung`) && length(input_json$`bezeichnung`) == 1)) {
          stop(paste("Error! Invalid data for `bezeichnung`. Must be a string:", input_json$`bezeichnung`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerZeile: the required field `bezeichnung` is missing."))
      }
      # check the required field `zeile`
      if (!is.null(input_json$`zeile`)) {
        if (!(is.numeric(input_json$`zeile`) && length(input_json$`zeile`) == 1)) {
          stop(paste("Error! Invalid data for `zeile`. Must be an integer:", input_json$`zeile`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerZeile: the required field `zeile` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EuerZeile
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `abschnitt` is null
      if (is.null(self$`abschnitt`)) {
        return(FALSE)
      }

      # check if the required `betrag` is null
      if (is.null(self$`betrag`)) {
        return(FALSE)
      }

      # check if the required `bezeichnung` is null
      if (is.null(self$`bezeichnung`)) {
        return(FALSE)
      }

      # check if the required `zeile` is null
      if (is.null(self$`zeile`)) {
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
      # check if the required `abschnitt` is null
      if (is.null(self$`abschnitt`)) {
        invalid_fields["abschnitt"] <- "Non-nullable required field `abschnitt` cannot be null."
      }

      # check if the required `betrag` is null
      if (is.null(self$`betrag`)) {
        invalid_fields["betrag"] <- "Non-nullable required field `betrag` cannot be null."
      }

      # check if the required `bezeichnung` is null
      if (is.null(self$`bezeichnung`)) {
        invalid_fields["bezeichnung"] <- "Non-nullable required field `bezeichnung` cannot be null."
      }

      # check if the required `zeile` is null
      if (is.null(self$`zeile`)) {
        invalid_fields["zeile"] <- "Non-nullable required field `zeile` cannot be null."
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
# EuerZeile$unlock()
#
## Below is an example to define the print function
# EuerZeile$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EuerZeile$lock()

