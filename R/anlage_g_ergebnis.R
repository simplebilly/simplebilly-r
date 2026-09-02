#' Create a new AnlageGErgebnis
#'
#' @description
#' AnlageGErgebnis Class
#'
#' @docType class
#' @title AnlageGErgebnis
#' @description AnlageGErgebnis Class
#' @format An \code{R6Class} generator object
#' @field gewinn_verlust  character
#' @field gewst_gezahlt  character
#' @field gewst_messbetrag_approx  character
#' @field gewst_pflichtig  character
#' @field jahr  integer
#' @field kfz_hinweise  list(\link{AnlageGKfzHinweis})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnlageGErgebnis <- R6::R6Class(
  "AnlageGErgebnis",
  public = list(
    `gewinn_verlust` = NULL,
    `gewst_gezahlt` = NULL,
    `gewst_messbetrag_approx` = NULL,
    `gewst_pflichtig` = NULL,
    `jahr` = NULL,
    `kfz_hinweise` = NULL,

    #' @description
    #' Initialize a new AnlageGErgebnis class.
    #'
    #' @param gewinn_verlust gewinn_verlust
    #' @param gewst_gezahlt gewst_gezahlt
    #' @param gewst_messbetrag_approx gewst_messbetrag_approx
    #' @param gewst_pflichtig gewst_pflichtig
    #' @param jahr jahr
    #' @param kfz_hinweise kfz_hinweise
    #' @param ... Other optional arguments.
    initialize = function(`gewinn_verlust`, `gewst_gezahlt`, `gewst_messbetrag_approx`, `gewst_pflichtig`, `jahr`, `kfz_hinweise`, ...) {
      if (!missing(`gewinn_verlust`)) {
        if (!(is.character(`gewinn_verlust`) && length(`gewinn_verlust`) == 1)) {
          stop(paste("Error! Invalid data for `gewinn_verlust`. Must be a string:", `gewinn_verlust`))
        }
        self$`gewinn_verlust` <- `gewinn_verlust`
      }
      if (!missing(`gewst_gezahlt`)) {
        if (!(is.character(`gewst_gezahlt`) && length(`gewst_gezahlt`) == 1)) {
          stop(paste("Error! Invalid data for `gewst_gezahlt`. Must be a string:", `gewst_gezahlt`))
        }
        self$`gewst_gezahlt` <- `gewst_gezahlt`
      }
      if (!missing(`gewst_messbetrag_approx`)) {
        if (!(is.character(`gewst_messbetrag_approx`) && length(`gewst_messbetrag_approx`) == 1)) {
          stop(paste("Error! Invalid data for `gewst_messbetrag_approx`. Must be a string:", `gewst_messbetrag_approx`))
        }
        self$`gewst_messbetrag_approx` <- `gewst_messbetrag_approx`
      }
      if (!missing(`gewst_pflichtig`)) {
        if (!(is.logical(`gewst_pflichtig`) && length(`gewst_pflichtig`) == 1)) {
          stop(paste("Error! Invalid data for `gewst_pflichtig`. Must be a boolean:", `gewst_pflichtig`))
        }
        self$`gewst_pflichtig` <- `gewst_pflichtig`
      }
      if (!missing(`jahr`)) {
        if (!(is.numeric(`jahr`) && length(`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", `jahr`))
        }
        self$`jahr` <- `jahr`
      }
      if (!missing(`kfz_hinweise`)) {
        stopifnot(is.vector(`kfz_hinweise`), length(`kfz_hinweise`) != 0)
        sapply(`kfz_hinweise`, function(x) stopifnot(R6::is.R6(x)))
        self$`kfz_hinweise` <- `kfz_hinweise`
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
    #' @return AnlageGErgebnis as a base R list.
    #' @examples
    #' # convert array of AnlageGErgebnis (x) to a data frame
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
    #' Convert AnlageGErgebnis to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnlageGErgebnisObject <- list()
      if (!is.null(self$`gewinn_verlust`)) {
        AnlageGErgebnisObject[["gewinn_verlust"]] <-
          self$`gewinn_verlust`
      }
      if (!is.null(self$`gewst_gezahlt`)) {
        AnlageGErgebnisObject[["gewst_gezahlt"]] <-
          self$`gewst_gezahlt`
      }
      if (!is.null(self$`gewst_messbetrag_approx`)) {
        AnlageGErgebnisObject[["gewst_messbetrag_approx"]] <-
          self$`gewst_messbetrag_approx`
      }
      if (!is.null(self$`gewst_pflichtig`)) {
        AnlageGErgebnisObject[["gewst_pflichtig"]] <-
          self$`gewst_pflichtig`
      }
      if (!is.null(self$`jahr`)) {
        AnlageGErgebnisObject[["jahr"]] <-
          self$`jahr`
      }
      if (!is.null(self$`kfz_hinweise`)) {
        AnlageGErgebnisObject[["kfz_hinweise"]] <-
          self$extractSimpleType(self$`kfz_hinweise`)
      }
      return(AnlageGErgebnisObject)
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
    #' Deserialize JSON string into an instance of AnlageGErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnlageGErgebnis
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gewinn_verlust`)) {
        self$`gewinn_verlust` <- this_object$`gewinn_verlust`
      }
      if (!is.null(this_object$`gewst_gezahlt`)) {
        self$`gewst_gezahlt` <- this_object$`gewst_gezahlt`
      }
      if (!is.null(this_object$`gewst_messbetrag_approx`)) {
        self$`gewst_messbetrag_approx` <- this_object$`gewst_messbetrag_approx`
      }
      if (!is.null(this_object$`gewst_pflichtig`)) {
        self$`gewst_pflichtig` <- this_object$`gewst_pflichtig`
      }
      if (!is.null(this_object$`jahr`)) {
        self$`jahr` <- this_object$`jahr`
      }
      if (!is.null(this_object$`kfz_hinweise`)) {
        self$`kfz_hinweise` <- ApiClient$new()$deserializeObj(this_object$`kfz_hinweise`, "array[AnlageGKfzHinweis]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnlageGErgebnis in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnlageGErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnlageGErgebnis
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gewinn_verlust` <- this_object$`gewinn_verlust`
      self$`gewst_gezahlt` <- this_object$`gewst_gezahlt`
      self$`gewst_messbetrag_approx` <- this_object$`gewst_messbetrag_approx`
      self$`gewst_pflichtig` <- this_object$`gewst_pflichtig`
      self$`jahr` <- this_object$`jahr`
      self$`kfz_hinweise` <- ApiClient$new()$deserializeObj(this_object$`kfz_hinweise`, "array[AnlageGKfzHinweis]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AnlageGErgebnis and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `gewinn_verlust`
      if (!is.null(input_json$`gewinn_verlust`)) {
        if (!(is.character(input_json$`gewinn_verlust`) && length(input_json$`gewinn_verlust`) == 1)) {
          stop(paste("Error! Invalid data for `gewinn_verlust`. Must be a string:", input_json$`gewinn_verlust`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnlageGErgebnis: the required field `gewinn_verlust` is missing."))
      }
      # check the required field `gewst_gezahlt`
      if (!is.null(input_json$`gewst_gezahlt`)) {
        if (!(is.character(input_json$`gewst_gezahlt`) && length(input_json$`gewst_gezahlt`) == 1)) {
          stop(paste("Error! Invalid data for `gewst_gezahlt`. Must be a string:", input_json$`gewst_gezahlt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnlageGErgebnis: the required field `gewst_gezahlt` is missing."))
      }
      # check the required field `gewst_messbetrag_approx`
      if (!is.null(input_json$`gewst_messbetrag_approx`)) {
        if (!(is.character(input_json$`gewst_messbetrag_approx`) && length(input_json$`gewst_messbetrag_approx`) == 1)) {
          stop(paste("Error! Invalid data for `gewst_messbetrag_approx`. Must be a string:", input_json$`gewst_messbetrag_approx`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnlageGErgebnis: the required field `gewst_messbetrag_approx` is missing."))
      }
      # check the required field `gewst_pflichtig`
      if (!is.null(input_json$`gewst_pflichtig`)) {
        if (!(is.logical(input_json$`gewst_pflichtig`) && length(input_json$`gewst_pflichtig`) == 1)) {
          stop(paste("Error! Invalid data for `gewst_pflichtig`. Must be a boolean:", input_json$`gewst_pflichtig`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnlageGErgebnis: the required field `gewst_pflichtig` is missing."))
      }
      # check the required field `jahr`
      if (!is.null(input_json$`jahr`)) {
        if (!(is.numeric(input_json$`jahr`) && length(input_json$`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", input_json$`jahr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnlageGErgebnis: the required field `jahr` is missing."))
      }
      # check the required field `kfz_hinweise`
      if (!is.null(input_json$`kfz_hinweise`)) {
        stopifnot(is.vector(input_json$`kfz_hinweise`), length(input_json$`kfz_hinweise`) != 0)
        tmp <- sapply(input_json$`kfz_hinweise`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnlageGErgebnis: the required field `kfz_hinweise` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnlageGErgebnis
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `gewinn_verlust` is null
      if (is.null(self$`gewinn_verlust`)) {
        return(FALSE)
      }

      # check if the required `gewst_gezahlt` is null
      if (is.null(self$`gewst_gezahlt`)) {
        return(FALSE)
      }

      # check if the required `gewst_messbetrag_approx` is null
      if (is.null(self$`gewst_messbetrag_approx`)) {
        return(FALSE)
      }

      # check if the required `gewst_pflichtig` is null
      if (is.null(self$`gewst_pflichtig`)) {
        return(FALSE)
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        return(FALSE)
      }

      # check if the required `kfz_hinweise` is null
      if (is.null(self$`kfz_hinweise`)) {
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
      # check if the required `gewinn_verlust` is null
      if (is.null(self$`gewinn_verlust`)) {
        invalid_fields["gewinn_verlust"] <- "Non-nullable required field `gewinn_verlust` cannot be null."
      }

      # check if the required `gewst_gezahlt` is null
      if (is.null(self$`gewst_gezahlt`)) {
        invalid_fields["gewst_gezahlt"] <- "Non-nullable required field `gewst_gezahlt` cannot be null."
      }

      # check if the required `gewst_messbetrag_approx` is null
      if (is.null(self$`gewst_messbetrag_approx`)) {
        invalid_fields["gewst_messbetrag_approx"] <- "Non-nullable required field `gewst_messbetrag_approx` cannot be null."
      }

      # check if the required `gewst_pflichtig` is null
      if (is.null(self$`gewst_pflichtig`)) {
        invalid_fields["gewst_pflichtig"] <- "Non-nullable required field `gewst_pflichtig` cannot be null."
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        invalid_fields["jahr"] <- "Non-nullable required field `jahr` cannot be null."
      }

      # check if the required `kfz_hinweise` is null
      if (is.null(self$`kfz_hinweise`)) {
        invalid_fields["kfz_hinweise"] <- "Non-nullable required field `kfz_hinweise` cannot be null."
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
# AnlageGErgebnis$unlock()
#
## Below is an example to define the print function
# AnlageGErgebnis$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnlageGErgebnis$lock()

