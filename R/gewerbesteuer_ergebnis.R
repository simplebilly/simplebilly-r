#' Create a new GewerbesteuerErgebnis
#'
#' @description
#' GewerbesteuerErgebnis Class
#'
#' @docType class
#' @title GewerbesteuerErgebnis
#' @description GewerbesteuerErgebnis Class
#' @format An \code{R6Class} generator object
#' @field freibetrag  character
#' @field gesamtbelastung  character
#' @field gewerbeertrag  character
#' @field hebesatz  character
#' @field jahr  integer
#' @field koerperschaftsteuer  character
#' @field land  character
#' @field messbetrag  character
#' @field steuer  character
#' @field steuer_art  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GewerbesteuerErgebnis <- R6::R6Class(
  "GewerbesteuerErgebnis",
  public = list(
    `freibetrag` = NULL,
    `gesamtbelastung` = NULL,
    `gewerbeertrag` = NULL,
    `hebesatz` = NULL,
    `jahr` = NULL,
    `koerperschaftsteuer` = NULL,
    `land` = NULL,
    `messbetrag` = NULL,
    `steuer` = NULL,
    `steuer_art` = NULL,

    #' @description
    #' Initialize a new GewerbesteuerErgebnis class.
    #'
    #' @param freibetrag freibetrag
    #' @param gesamtbelastung gesamtbelastung
    #' @param gewerbeertrag gewerbeertrag
    #' @param hebesatz hebesatz
    #' @param jahr jahr
    #' @param koerperschaftsteuer koerperschaftsteuer
    #' @param land land
    #' @param messbetrag messbetrag
    #' @param steuer steuer
    #' @param steuer_art steuer_art
    #' @param ... Other optional arguments.
    initialize = function(`freibetrag`, `gesamtbelastung`, `gewerbeertrag`, `hebesatz`, `jahr`, `koerperschaftsteuer`, `land`, `messbetrag`, `steuer`, `steuer_art`, ...) {
      if (!missing(`freibetrag`)) {
        if (!(is.character(`freibetrag`) && length(`freibetrag`) == 1)) {
          stop(paste("Error! Invalid data for `freibetrag`. Must be a string:", `freibetrag`))
        }
        self$`freibetrag` <- `freibetrag`
      }
      if (!missing(`gesamtbelastung`)) {
        if (!(is.character(`gesamtbelastung`) && length(`gesamtbelastung`) == 1)) {
          stop(paste("Error! Invalid data for `gesamtbelastung`. Must be a string:", `gesamtbelastung`))
        }
        self$`gesamtbelastung` <- `gesamtbelastung`
      }
      if (!missing(`gewerbeertrag`)) {
        if (!(is.character(`gewerbeertrag`) && length(`gewerbeertrag`) == 1)) {
          stop(paste("Error! Invalid data for `gewerbeertrag`. Must be a string:", `gewerbeertrag`))
        }
        self$`gewerbeertrag` <- `gewerbeertrag`
      }
      if (!missing(`hebesatz`)) {
        if (!(is.character(`hebesatz`) && length(`hebesatz`) == 1)) {
          stop(paste("Error! Invalid data for `hebesatz`. Must be a string:", `hebesatz`))
        }
        self$`hebesatz` <- `hebesatz`
      }
      if (!missing(`jahr`)) {
        if (!(is.numeric(`jahr`) && length(`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", `jahr`))
        }
        self$`jahr` <- `jahr`
      }
      if (!missing(`koerperschaftsteuer`)) {
        if (!(is.character(`koerperschaftsteuer`) && length(`koerperschaftsteuer`) == 1)) {
          stop(paste("Error! Invalid data for `koerperschaftsteuer`. Must be a string:", `koerperschaftsteuer`))
        }
        self$`koerperschaftsteuer` <- `koerperschaftsteuer`
      }
      if (!missing(`land`)) {
        if (!(is.character(`land`) && length(`land`) == 1)) {
          stop(paste("Error! Invalid data for `land`. Must be a string:", `land`))
        }
        self$`land` <- `land`
      }
      if (!missing(`messbetrag`)) {
        if (!(is.character(`messbetrag`) && length(`messbetrag`) == 1)) {
          stop(paste("Error! Invalid data for `messbetrag`. Must be a string:", `messbetrag`))
        }
        self$`messbetrag` <- `messbetrag`
      }
      if (!missing(`steuer`)) {
        if (!(is.character(`steuer`) && length(`steuer`) == 1)) {
          stop(paste("Error! Invalid data for `steuer`. Must be a string:", `steuer`))
        }
        self$`steuer` <- `steuer`
      }
      if (!missing(`steuer_art`)) {
        if (!(is.character(`steuer_art`) && length(`steuer_art`) == 1)) {
          stop(paste("Error! Invalid data for `steuer_art`. Must be a string:", `steuer_art`))
        }
        self$`steuer_art` <- `steuer_art`
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
    #' @return GewerbesteuerErgebnis as a base R list.
    #' @examples
    #' # convert array of GewerbesteuerErgebnis (x) to a data frame
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
    #' Convert GewerbesteuerErgebnis to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GewerbesteuerErgebnisObject <- list()
      if (!is.null(self$`freibetrag`)) {
        GewerbesteuerErgebnisObject[["freibetrag"]] <-
          self$`freibetrag`
      }
      if (!is.null(self$`gesamtbelastung`)) {
        GewerbesteuerErgebnisObject[["gesamtbelastung"]] <-
          self$`gesamtbelastung`
      }
      if (!is.null(self$`gewerbeertrag`)) {
        GewerbesteuerErgebnisObject[["gewerbeertrag"]] <-
          self$`gewerbeertrag`
      }
      if (!is.null(self$`hebesatz`)) {
        GewerbesteuerErgebnisObject[["hebesatz"]] <-
          self$`hebesatz`
      }
      if (!is.null(self$`jahr`)) {
        GewerbesteuerErgebnisObject[["jahr"]] <-
          self$`jahr`
      }
      if (!is.null(self$`koerperschaftsteuer`)) {
        GewerbesteuerErgebnisObject[["koerperschaftsteuer"]] <-
          self$`koerperschaftsteuer`
      }
      if (!is.null(self$`land`)) {
        GewerbesteuerErgebnisObject[["land"]] <-
          self$`land`
      }
      if (!is.null(self$`messbetrag`)) {
        GewerbesteuerErgebnisObject[["messbetrag"]] <-
          self$`messbetrag`
      }
      if (!is.null(self$`steuer`)) {
        GewerbesteuerErgebnisObject[["steuer"]] <-
          self$`steuer`
      }
      if (!is.null(self$`steuer_art`)) {
        GewerbesteuerErgebnisObject[["steuer_art"]] <-
          self$`steuer_art`
      }
      return(GewerbesteuerErgebnisObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GewerbesteuerErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of GewerbesteuerErgebnis
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`freibetrag`)) {
        self$`freibetrag` <- this_object$`freibetrag`
      }
      if (!is.null(this_object$`gesamtbelastung`)) {
        self$`gesamtbelastung` <- this_object$`gesamtbelastung`
      }
      if (!is.null(this_object$`gewerbeertrag`)) {
        self$`gewerbeertrag` <- this_object$`gewerbeertrag`
      }
      if (!is.null(this_object$`hebesatz`)) {
        self$`hebesatz` <- this_object$`hebesatz`
      }
      if (!is.null(this_object$`jahr`)) {
        self$`jahr` <- this_object$`jahr`
      }
      if (!is.null(this_object$`koerperschaftsteuer`)) {
        self$`koerperschaftsteuer` <- this_object$`koerperschaftsteuer`
      }
      if (!is.null(this_object$`land`)) {
        self$`land` <- this_object$`land`
      }
      if (!is.null(this_object$`messbetrag`)) {
        self$`messbetrag` <- this_object$`messbetrag`
      }
      if (!is.null(this_object$`steuer`)) {
        self$`steuer` <- this_object$`steuer`
      }
      if (!is.null(this_object$`steuer_art`)) {
        self$`steuer_art` <- this_object$`steuer_art`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GewerbesteuerErgebnis in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GewerbesteuerErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of GewerbesteuerErgebnis
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`freibetrag` <- this_object$`freibetrag`
      self$`gesamtbelastung` <- this_object$`gesamtbelastung`
      self$`gewerbeertrag` <- this_object$`gewerbeertrag`
      self$`hebesatz` <- this_object$`hebesatz`
      self$`jahr` <- this_object$`jahr`
      self$`koerperschaftsteuer` <- this_object$`koerperschaftsteuer`
      self$`land` <- this_object$`land`
      self$`messbetrag` <- this_object$`messbetrag`
      self$`steuer` <- this_object$`steuer`
      self$`steuer_art` <- this_object$`steuer_art`
      self
    },

    #' @description
    #' Validate JSON input with respect to GewerbesteuerErgebnis and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `freibetrag`
      if (!is.null(input_json$`freibetrag`)) {
        if (!(is.character(input_json$`freibetrag`) && length(input_json$`freibetrag`) == 1)) {
          stop(paste("Error! Invalid data for `freibetrag`. Must be a string:", input_json$`freibetrag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewerbesteuerErgebnis: the required field `freibetrag` is missing."))
      }
      # check the required field `gesamtbelastung`
      if (!is.null(input_json$`gesamtbelastung`)) {
        if (!(is.character(input_json$`gesamtbelastung`) && length(input_json$`gesamtbelastung`) == 1)) {
          stop(paste("Error! Invalid data for `gesamtbelastung`. Must be a string:", input_json$`gesamtbelastung`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewerbesteuerErgebnis: the required field `gesamtbelastung` is missing."))
      }
      # check the required field `gewerbeertrag`
      if (!is.null(input_json$`gewerbeertrag`)) {
        if (!(is.character(input_json$`gewerbeertrag`) && length(input_json$`gewerbeertrag`) == 1)) {
          stop(paste("Error! Invalid data for `gewerbeertrag`. Must be a string:", input_json$`gewerbeertrag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewerbesteuerErgebnis: the required field `gewerbeertrag` is missing."))
      }
      # check the required field `hebesatz`
      if (!is.null(input_json$`hebesatz`)) {
        if (!(is.character(input_json$`hebesatz`) && length(input_json$`hebesatz`) == 1)) {
          stop(paste("Error! Invalid data for `hebesatz`. Must be a string:", input_json$`hebesatz`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewerbesteuerErgebnis: the required field `hebesatz` is missing."))
      }
      # check the required field `jahr`
      if (!is.null(input_json$`jahr`)) {
        if (!(is.numeric(input_json$`jahr`) && length(input_json$`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", input_json$`jahr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewerbesteuerErgebnis: the required field `jahr` is missing."))
      }
      # check the required field `koerperschaftsteuer`
      if (!is.null(input_json$`koerperschaftsteuer`)) {
        if (!(is.character(input_json$`koerperschaftsteuer`) && length(input_json$`koerperschaftsteuer`) == 1)) {
          stop(paste("Error! Invalid data for `koerperschaftsteuer`. Must be a string:", input_json$`koerperschaftsteuer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewerbesteuerErgebnis: the required field `koerperschaftsteuer` is missing."))
      }
      # check the required field `land`
      if (!is.null(input_json$`land`)) {
        if (!(is.character(input_json$`land`) && length(input_json$`land`) == 1)) {
          stop(paste("Error! Invalid data for `land`. Must be a string:", input_json$`land`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewerbesteuerErgebnis: the required field `land` is missing."))
      }
      # check the required field `messbetrag`
      if (!is.null(input_json$`messbetrag`)) {
        if (!(is.character(input_json$`messbetrag`) && length(input_json$`messbetrag`) == 1)) {
          stop(paste("Error! Invalid data for `messbetrag`. Must be a string:", input_json$`messbetrag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewerbesteuerErgebnis: the required field `messbetrag` is missing."))
      }
      # check the required field `steuer`
      if (!is.null(input_json$`steuer`)) {
        if (!(is.character(input_json$`steuer`) && length(input_json$`steuer`) == 1)) {
          stop(paste("Error! Invalid data for `steuer`. Must be a string:", input_json$`steuer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewerbesteuerErgebnis: the required field `steuer` is missing."))
      }
      # check the required field `steuer_art`
      if (!is.null(input_json$`steuer_art`)) {
        if (!(is.character(input_json$`steuer_art`) && length(input_json$`steuer_art`) == 1)) {
          stop(paste("Error! Invalid data for `steuer_art`. Must be a string:", input_json$`steuer_art`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewerbesteuerErgebnis: the required field `steuer_art` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GewerbesteuerErgebnis
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `freibetrag` is null
      if (is.null(self$`freibetrag`)) {
        return(FALSE)
      }

      # check if the required `gesamtbelastung` is null
      if (is.null(self$`gesamtbelastung`)) {
        return(FALSE)
      }

      # check if the required `gewerbeertrag` is null
      if (is.null(self$`gewerbeertrag`)) {
        return(FALSE)
      }

      # check if the required `hebesatz` is null
      if (is.null(self$`hebesatz`)) {
        return(FALSE)
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        return(FALSE)
      }

      # check if the required `koerperschaftsteuer` is null
      if (is.null(self$`koerperschaftsteuer`)) {
        return(FALSE)
      }

      # check if the required `land` is null
      if (is.null(self$`land`)) {
        return(FALSE)
      }

      # check if the required `messbetrag` is null
      if (is.null(self$`messbetrag`)) {
        return(FALSE)
      }

      # check if the required `steuer` is null
      if (is.null(self$`steuer`)) {
        return(FALSE)
      }

      # check if the required `steuer_art` is null
      if (is.null(self$`steuer_art`)) {
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
      # check if the required `freibetrag` is null
      if (is.null(self$`freibetrag`)) {
        invalid_fields["freibetrag"] <- "Non-nullable required field `freibetrag` cannot be null."
      }

      # check if the required `gesamtbelastung` is null
      if (is.null(self$`gesamtbelastung`)) {
        invalid_fields["gesamtbelastung"] <- "Non-nullable required field `gesamtbelastung` cannot be null."
      }

      # check if the required `gewerbeertrag` is null
      if (is.null(self$`gewerbeertrag`)) {
        invalid_fields["gewerbeertrag"] <- "Non-nullable required field `gewerbeertrag` cannot be null."
      }

      # check if the required `hebesatz` is null
      if (is.null(self$`hebesatz`)) {
        invalid_fields["hebesatz"] <- "Non-nullable required field `hebesatz` cannot be null."
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        invalid_fields["jahr"] <- "Non-nullable required field `jahr` cannot be null."
      }

      # check if the required `koerperschaftsteuer` is null
      if (is.null(self$`koerperschaftsteuer`)) {
        invalid_fields["koerperschaftsteuer"] <- "Non-nullable required field `koerperschaftsteuer` cannot be null."
      }

      # check if the required `land` is null
      if (is.null(self$`land`)) {
        invalid_fields["land"] <- "Non-nullable required field `land` cannot be null."
      }

      # check if the required `messbetrag` is null
      if (is.null(self$`messbetrag`)) {
        invalid_fields["messbetrag"] <- "Non-nullable required field `messbetrag` cannot be null."
      }

      # check if the required `steuer` is null
      if (is.null(self$`steuer`)) {
        invalid_fields["steuer"] <- "Non-nullable required field `steuer` cannot be null."
      }

      # check if the required `steuer_art` is null
      if (is.null(self$`steuer_art`)) {
        invalid_fields["steuer_art"] <- "Non-nullable required field `steuer_art` cannot be null."
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
# GewerbesteuerErgebnis$unlock()
#
## Below is an example to define the print function
# GewerbesteuerErgebnis$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GewerbesteuerErgebnis$lock()

