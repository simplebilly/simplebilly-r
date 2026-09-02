#' Create a new KostenEintrag
#'
#' @description
#' KostenEintrag Class
#'
#' @docType class
#' @title KostenEintrag
#' @description KostenEintrag Class
#' @format An \code{R6Class} generator object
#' @field beschreibung  character
#' @field betrag  character
#' @field datum  character
#' @field typ  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
KostenEintrag <- R6::R6Class(
  "KostenEintrag",
  public = list(
    `beschreibung` = NULL,
    `betrag` = NULL,
    `datum` = NULL,
    `typ` = NULL,

    #' @description
    #' Initialize a new KostenEintrag class.
    #'
    #' @param beschreibung beschreibung
    #' @param betrag betrag
    #' @param datum datum
    #' @param typ typ
    #' @param ... Other optional arguments.
    initialize = function(`beschreibung`, `betrag`, `datum`, `typ`, ...) {
      if (!missing(`beschreibung`)) {
        if (!(is.character(`beschreibung`) && length(`beschreibung`) == 1)) {
          stop(paste("Error! Invalid data for `beschreibung`. Must be a string:", `beschreibung`))
        }
        self$`beschreibung` <- `beschreibung`
      }
      if (!missing(`betrag`)) {
        if (!(is.character(`betrag`) && length(`betrag`) == 1)) {
          stop(paste("Error! Invalid data for `betrag`. Must be a string:", `betrag`))
        }
        self$`betrag` <- `betrag`
      }
      if (!missing(`datum`)) {
        if (!(is.character(`datum`) && length(`datum`) == 1)) {
          stop(paste("Error! Invalid data for `datum`. Must be a string:", `datum`))
        }
        self$`datum` <- `datum`
      }
      if (!missing(`typ`)) {
        if (!(is.character(`typ`) && length(`typ`) == 1)) {
          stop(paste("Error! Invalid data for `typ`. Must be a string:", `typ`))
        }
        self$`typ` <- `typ`
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
    #' @return KostenEintrag as a base R list.
    #' @examples
    #' # convert array of KostenEintrag (x) to a data frame
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
    #' Convert KostenEintrag to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      KostenEintragObject <- list()
      if (!is.null(self$`beschreibung`)) {
        KostenEintragObject[["beschreibung"]] <-
          self$`beschreibung`
      }
      if (!is.null(self$`betrag`)) {
        KostenEintragObject[["betrag"]] <-
          self$`betrag`
      }
      if (!is.null(self$`datum`)) {
        KostenEintragObject[["datum"]] <-
          self$`datum`
      }
      if (!is.null(self$`typ`)) {
        KostenEintragObject[["typ"]] <-
          self$`typ`
      }
      return(KostenEintragObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of KostenEintrag
    #'
    #' @param input_json the JSON input
    #' @return the instance of KostenEintrag
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`beschreibung`)) {
        self$`beschreibung` <- this_object$`beschreibung`
      }
      if (!is.null(this_object$`betrag`)) {
        self$`betrag` <- this_object$`betrag`
      }
      if (!is.null(this_object$`datum`)) {
        self$`datum` <- this_object$`datum`
      }
      if (!is.null(this_object$`typ`)) {
        self$`typ` <- this_object$`typ`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return KostenEintrag in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of KostenEintrag
    #'
    #' @param input_json the JSON input
    #' @return the instance of KostenEintrag
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`beschreibung` <- this_object$`beschreibung`
      self$`betrag` <- this_object$`betrag`
      self$`datum` <- this_object$`datum`
      self$`typ` <- this_object$`typ`
      self
    },

    #' @description
    #' Validate JSON input with respect to KostenEintrag and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `beschreibung`
      if (!is.null(input_json$`beschreibung`)) {
        if (!(is.character(input_json$`beschreibung`) && length(input_json$`beschreibung`) == 1)) {
          stop(paste("Error! Invalid data for `beschreibung`. Must be a string:", input_json$`beschreibung`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KostenEintrag: the required field `beschreibung` is missing."))
      }
      # check the required field `betrag`
      if (!is.null(input_json$`betrag`)) {
        if (!(is.character(input_json$`betrag`) && length(input_json$`betrag`) == 1)) {
          stop(paste("Error! Invalid data for `betrag`. Must be a string:", input_json$`betrag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KostenEintrag: the required field `betrag` is missing."))
      }
      # check the required field `datum`
      if (!is.null(input_json$`datum`)) {
        if (!(is.character(input_json$`datum`) && length(input_json$`datum`) == 1)) {
          stop(paste("Error! Invalid data for `datum`. Must be a string:", input_json$`datum`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KostenEintrag: the required field `datum` is missing."))
      }
      # check the required field `typ`
      if (!is.null(input_json$`typ`)) {
        if (!(is.character(input_json$`typ`) && length(input_json$`typ`) == 1)) {
          stop(paste("Error! Invalid data for `typ`. Must be a string:", input_json$`typ`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KostenEintrag: the required field `typ` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of KostenEintrag
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `beschreibung` is null
      if (is.null(self$`beschreibung`)) {
        return(FALSE)
      }

      # check if the required `betrag` is null
      if (is.null(self$`betrag`)) {
        return(FALSE)
      }

      # check if the required `datum` is null
      if (is.null(self$`datum`)) {
        return(FALSE)
      }

      # check if the required `typ` is null
      if (is.null(self$`typ`)) {
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
      # check if the required `beschreibung` is null
      if (is.null(self$`beschreibung`)) {
        invalid_fields["beschreibung"] <- "Non-nullable required field `beschreibung` cannot be null."
      }

      # check if the required `betrag` is null
      if (is.null(self$`betrag`)) {
        invalid_fields["betrag"] <- "Non-nullable required field `betrag` cannot be null."
      }

      # check if the required `datum` is null
      if (is.null(self$`datum`)) {
        invalid_fields["datum"] <- "Non-nullable required field `datum` cannot be null."
      }

      # check if the required `typ` is null
      if (is.null(self$`typ`)) {
        invalid_fields["typ"] <- "Non-nullable required field `typ` cannot be null."
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
# KostenEintrag$unlock()
#
## Below is an example to define the print function
# KostenEintrag$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# KostenEintrag$lock()

