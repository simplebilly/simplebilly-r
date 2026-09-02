#' Create a new EuerErgebnis
#'
#' @description
#' EuerErgebnis Class
#'
#' @docType class
#' @title EuerErgebnis
#' @description EuerErgebnis Class
#' @format An \code{R6Class} generator object
#' @field anlage_zugaenge  character
#' @field gewinn_verlust  character
#' @field jahr  integer
#' @field summe_ausgaben  character
#' @field summe_einnahmen  character
#' @field zeilen  list(\link{EuerZeile})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EuerErgebnis <- R6::R6Class(
  "EuerErgebnis",
  public = list(
    `anlage_zugaenge` = NULL,
    `gewinn_verlust` = NULL,
    `jahr` = NULL,
    `summe_ausgaben` = NULL,
    `summe_einnahmen` = NULL,
    `zeilen` = NULL,

    #' @description
    #' Initialize a new EuerErgebnis class.
    #'
    #' @param anlage_zugaenge anlage_zugaenge
    #' @param gewinn_verlust gewinn_verlust
    #' @param jahr jahr
    #' @param summe_ausgaben summe_ausgaben
    #' @param summe_einnahmen summe_einnahmen
    #' @param zeilen zeilen
    #' @param ... Other optional arguments.
    initialize = function(`anlage_zugaenge`, `gewinn_verlust`, `jahr`, `summe_ausgaben`, `summe_einnahmen`, `zeilen`, ...) {
      if (!missing(`anlage_zugaenge`)) {
        if (!(is.character(`anlage_zugaenge`) && length(`anlage_zugaenge`) == 1)) {
          stop(paste("Error! Invalid data for `anlage_zugaenge`. Must be a string:", `anlage_zugaenge`))
        }
        self$`anlage_zugaenge` <- `anlage_zugaenge`
      }
      if (!missing(`gewinn_verlust`)) {
        if (!(is.character(`gewinn_verlust`) && length(`gewinn_verlust`) == 1)) {
          stop(paste("Error! Invalid data for `gewinn_verlust`. Must be a string:", `gewinn_verlust`))
        }
        self$`gewinn_verlust` <- `gewinn_verlust`
      }
      if (!missing(`jahr`)) {
        if (!(is.numeric(`jahr`) && length(`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", `jahr`))
        }
        self$`jahr` <- `jahr`
      }
      if (!missing(`summe_ausgaben`)) {
        if (!(is.character(`summe_ausgaben`) && length(`summe_ausgaben`) == 1)) {
          stop(paste("Error! Invalid data for `summe_ausgaben`. Must be a string:", `summe_ausgaben`))
        }
        self$`summe_ausgaben` <- `summe_ausgaben`
      }
      if (!missing(`summe_einnahmen`)) {
        if (!(is.character(`summe_einnahmen`) && length(`summe_einnahmen`) == 1)) {
          stop(paste("Error! Invalid data for `summe_einnahmen`. Must be a string:", `summe_einnahmen`))
        }
        self$`summe_einnahmen` <- `summe_einnahmen`
      }
      if (!missing(`zeilen`)) {
        stopifnot(is.vector(`zeilen`), length(`zeilen`) != 0)
        sapply(`zeilen`, function(x) stopifnot(R6::is.R6(x)))
        self$`zeilen` <- `zeilen`
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
    #' @return EuerErgebnis as a base R list.
    #' @examples
    #' # convert array of EuerErgebnis (x) to a data frame
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
    #' Convert EuerErgebnis to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EuerErgebnisObject <- list()
      if (!is.null(self$`anlage_zugaenge`)) {
        EuerErgebnisObject[["anlage_zugaenge"]] <-
          self$`anlage_zugaenge`
      }
      if (!is.null(self$`gewinn_verlust`)) {
        EuerErgebnisObject[["gewinn_verlust"]] <-
          self$`gewinn_verlust`
      }
      if (!is.null(self$`jahr`)) {
        EuerErgebnisObject[["jahr"]] <-
          self$`jahr`
      }
      if (!is.null(self$`summe_ausgaben`)) {
        EuerErgebnisObject[["summe_ausgaben"]] <-
          self$`summe_ausgaben`
      }
      if (!is.null(self$`summe_einnahmen`)) {
        EuerErgebnisObject[["summe_einnahmen"]] <-
          self$`summe_einnahmen`
      }
      if (!is.null(self$`zeilen`)) {
        EuerErgebnisObject[["zeilen"]] <-
          self$extractSimpleType(self$`zeilen`)
      }
      return(EuerErgebnisObject)
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
    #' Deserialize JSON string into an instance of EuerErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of EuerErgebnis
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`anlage_zugaenge`)) {
        self$`anlage_zugaenge` <- this_object$`anlage_zugaenge`
      }
      if (!is.null(this_object$`gewinn_verlust`)) {
        self$`gewinn_verlust` <- this_object$`gewinn_verlust`
      }
      if (!is.null(this_object$`jahr`)) {
        self$`jahr` <- this_object$`jahr`
      }
      if (!is.null(this_object$`summe_ausgaben`)) {
        self$`summe_ausgaben` <- this_object$`summe_ausgaben`
      }
      if (!is.null(this_object$`summe_einnahmen`)) {
        self$`summe_einnahmen` <- this_object$`summe_einnahmen`
      }
      if (!is.null(this_object$`zeilen`)) {
        self$`zeilen` <- ApiClient$new()$deserializeObj(this_object$`zeilen`, "array[EuerZeile]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EuerErgebnis in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EuerErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of EuerErgebnis
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`anlage_zugaenge` <- this_object$`anlage_zugaenge`
      self$`gewinn_verlust` <- this_object$`gewinn_verlust`
      self$`jahr` <- this_object$`jahr`
      self$`summe_ausgaben` <- this_object$`summe_ausgaben`
      self$`summe_einnahmen` <- this_object$`summe_einnahmen`
      self$`zeilen` <- ApiClient$new()$deserializeObj(this_object$`zeilen`, "array[EuerZeile]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to EuerErgebnis and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `anlage_zugaenge`
      if (!is.null(input_json$`anlage_zugaenge`)) {
        if (!(is.character(input_json$`anlage_zugaenge`) && length(input_json$`anlage_zugaenge`) == 1)) {
          stop(paste("Error! Invalid data for `anlage_zugaenge`. Must be a string:", input_json$`anlage_zugaenge`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerErgebnis: the required field `anlage_zugaenge` is missing."))
      }
      # check the required field `gewinn_verlust`
      if (!is.null(input_json$`gewinn_verlust`)) {
        if (!(is.character(input_json$`gewinn_verlust`) && length(input_json$`gewinn_verlust`) == 1)) {
          stop(paste("Error! Invalid data for `gewinn_verlust`. Must be a string:", input_json$`gewinn_verlust`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerErgebnis: the required field `gewinn_verlust` is missing."))
      }
      # check the required field `jahr`
      if (!is.null(input_json$`jahr`)) {
        if (!(is.numeric(input_json$`jahr`) && length(input_json$`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", input_json$`jahr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerErgebnis: the required field `jahr` is missing."))
      }
      # check the required field `summe_ausgaben`
      if (!is.null(input_json$`summe_ausgaben`)) {
        if (!(is.character(input_json$`summe_ausgaben`) && length(input_json$`summe_ausgaben`) == 1)) {
          stop(paste("Error! Invalid data for `summe_ausgaben`. Must be a string:", input_json$`summe_ausgaben`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerErgebnis: the required field `summe_ausgaben` is missing."))
      }
      # check the required field `summe_einnahmen`
      if (!is.null(input_json$`summe_einnahmen`)) {
        if (!(is.character(input_json$`summe_einnahmen`) && length(input_json$`summe_einnahmen`) == 1)) {
          stop(paste("Error! Invalid data for `summe_einnahmen`. Must be a string:", input_json$`summe_einnahmen`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerErgebnis: the required field `summe_einnahmen` is missing."))
      }
      # check the required field `zeilen`
      if (!is.null(input_json$`zeilen`)) {
        stopifnot(is.vector(input_json$`zeilen`), length(input_json$`zeilen`) != 0)
        tmp <- sapply(input_json$`zeilen`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerErgebnis: the required field `zeilen` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EuerErgebnis
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `anlage_zugaenge` is null
      if (is.null(self$`anlage_zugaenge`)) {
        return(FALSE)
      }

      # check if the required `gewinn_verlust` is null
      if (is.null(self$`gewinn_verlust`)) {
        return(FALSE)
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        return(FALSE)
      }

      # check if the required `summe_ausgaben` is null
      if (is.null(self$`summe_ausgaben`)) {
        return(FALSE)
      }

      # check if the required `summe_einnahmen` is null
      if (is.null(self$`summe_einnahmen`)) {
        return(FALSE)
      }

      # check if the required `zeilen` is null
      if (is.null(self$`zeilen`)) {
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
      # check if the required `anlage_zugaenge` is null
      if (is.null(self$`anlage_zugaenge`)) {
        invalid_fields["anlage_zugaenge"] <- "Non-nullable required field `anlage_zugaenge` cannot be null."
      }

      # check if the required `gewinn_verlust` is null
      if (is.null(self$`gewinn_verlust`)) {
        invalid_fields["gewinn_verlust"] <- "Non-nullable required field `gewinn_verlust` cannot be null."
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        invalid_fields["jahr"] <- "Non-nullable required field `jahr` cannot be null."
      }

      # check if the required `summe_ausgaben` is null
      if (is.null(self$`summe_ausgaben`)) {
        invalid_fields["summe_ausgaben"] <- "Non-nullable required field `summe_ausgaben` cannot be null."
      }

      # check if the required `summe_einnahmen` is null
      if (is.null(self$`summe_einnahmen`)) {
        invalid_fields["summe_einnahmen"] <- "Non-nullable required field `summe_einnahmen` cannot be null."
      }

      # check if the required `zeilen` is null
      if (is.null(self$`zeilen`)) {
        invalid_fields["zeilen"] <- "Non-nullable required field `zeilen` cannot be null."
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
# EuerErgebnis$unlock()
#
## Below is an example to define the print function
# EuerErgebnis$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EuerErgebnis$lock()

