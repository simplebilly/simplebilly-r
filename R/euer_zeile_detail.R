#' Create a new EuerZeileDetail
#'
#' @description
#' EuerZeileDetail Class
#'
#' @docType class
#' @title EuerZeileDetail
#' @description EuerZeileDetail Class
#' @format An \code{R6Class} generator object
#' @field abschnitt  character
#' @field betrag_gesamt  character
#' @field bezeichnung  character
#' @field kategorien  list(\link{EuerKatSumme})
#' @field zeile  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EuerZeileDetail <- R6::R6Class(
  "EuerZeileDetail",
  public = list(
    `abschnitt` = NULL,
    `betrag_gesamt` = NULL,
    `bezeichnung` = NULL,
    `kategorien` = NULL,
    `zeile` = NULL,

    #' @description
    #' Initialize a new EuerZeileDetail class.
    #'
    #' @param abschnitt abschnitt
    #' @param betrag_gesamt betrag_gesamt
    #' @param bezeichnung bezeichnung
    #' @param kategorien kategorien
    #' @param zeile zeile
    #' @param ... Other optional arguments.
    initialize = function(`abschnitt`, `betrag_gesamt`, `bezeichnung`, `kategorien`, `zeile`, ...) {
      if (!missing(`abschnitt`)) {
        if (!(is.character(`abschnitt`) && length(`abschnitt`) == 1)) {
          stop(paste("Error! Invalid data for `abschnitt`. Must be a string:", `abschnitt`))
        }
        self$`abschnitt` <- `abschnitt`
      }
      if (!missing(`betrag_gesamt`)) {
        if (!(is.character(`betrag_gesamt`) && length(`betrag_gesamt`) == 1)) {
          stop(paste("Error! Invalid data for `betrag_gesamt`. Must be a string:", `betrag_gesamt`))
        }
        self$`betrag_gesamt` <- `betrag_gesamt`
      }
      if (!missing(`bezeichnung`)) {
        if (!(is.character(`bezeichnung`) && length(`bezeichnung`) == 1)) {
          stop(paste("Error! Invalid data for `bezeichnung`. Must be a string:", `bezeichnung`))
        }
        self$`bezeichnung` <- `bezeichnung`
      }
      if (!missing(`kategorien`)) {
        stopifnot(is.vector(`kategorien`), length(`kategorien`) != 0)
        sapply(`kategorien`, function(x) stopifnot(R6::is.R6(x)))
        self$`kategorien` <- `kategorien`
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
    #' @return EuerZeileDetail as a base R list.
    #' @examples
    #' # convert array of EuerZeileDetail (x) to a data frame
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
    #' Convert EuerZeileDetail to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EuerZeileDetailObject <- list()
      if (!is.null(self$`abschnitt`)) {
        EuerZeileDetailObject[["abschnitt"]] <-
          self$`abschnitt`
      }
      if (!is.null(self$`betrag_gesamt`)) {
        EuerZeileDetailObject[["betrag_gesamt"]] <-
          self$`betrag_gesamt`
      }
      if (!is.null(self$`bezeichnung`)) {
        EuerZeileDetailObject[["bezeichnung"]] <-
          self$`bezeichnung`
      }
      if (!is.null(self$`kategorien`)) {
        EuerZeileDetailObject[["kategorien"]] <-
          self$extractSimpleType(self$`kategorien`)
      }
      if (!is.null(self$`zeile`)) {
        EuerZeileDetailObject[["zeile"]] <-
          self$`zeile`
      }
      return(EuerZeileDetailObject)
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
    #' Deserialize JSON string into an instance of EuerZeileDetail
    #'
    #' @param input_json the JSON input
    #' @return the instance of EuerZeileDetail
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`abschnitt`)) {
        self$`abschnitt` <- this_object$`abschnitt`
      }
      if (!is.null(this_object$`betrag_gesamt`)) {
        self$`betrag_gesamt` <- this_object$`betrag_gesamt`
      }
      if (!is.null(this_object$`bezeichnung`)) {
        self$`bezeichnung` <- this_object$`bezeichnung`
      }
      if (!is.null(this_object$`kategorien`)) {
        self$`kategorien` <- ApiClient$new()$deserializeObj(this_object$`kategorien`, "array[EuerKatSumme]", loadNamespace("openapi"))
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
    #' @return EuerZeileDetail in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EuerZeileDetail
    #'
    #' @param input_json the JSON input
    #' @return the instance of EuerZeileDetail
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`abschnitt` <- this_object$`abschnitt`
      self$`betrag_gesamt` <- this_object$`betrag_gesamt`
      self$`bezeichnung` <- this_object$`bezeichnung`
      self$`kategorien` <- ApiClient$new()$deserializeObj(this_object$`kategorien`, "array[EuerKatSumme]", loadNamespace("openapi"))
      self$`zeile` <- this_object$`zeile`
      self
    },

    #' @description
    #' Validate JSON input with respect to EuerZeileDetail and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for EuerZeileDetail: the required field `abschnitt` is missing."))
      }
      # check the required field `betrag_gesamt`
      if (!is.null(input_json$`betrag_gesamt`)) {
        if (!(is.character(input_json$`betrag_gesamt`) && length(input_json$`betrag_gesamt`) == 1)) {
          stop(paste("Error! Invalid data for `betrag_gesamt`. Must be a string:", input_json$`betrag_gesamt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerZeileDetail: the required field `betrag_gesamt` is missing."))
      }
      # check the required field `bezeichnung`
      if (!is.null(input_json$`bezeichnung`)) {
        if (!(is.character(input_json$`bezeichnung`) && length(input_json$`bezeichnung`) == 1)) {
          stop(paste("Error! Invalid data for `bezeichnung`. Must be a string:", input_json$`bezeichnung`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerZeileDetail: the required field `bezeichnung` is missing."))
      }
      # check the required field `kategorien`
      if (!is.null(input_json$`kategorien`)) {
        stopifnot(is.vector(input_json$`kategorien`), length(input_json$`kategorien`) != 0)
        tmp <- sapply(input_json$`kategorien`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerZeileDetail: the required field `kategorien` is missing."))
      }
      # check the required field `zeile`
      if (!is.null(input_json$`zeile`)) {
        if (!(is.numeric(input_json$`zeile`) && length(input_json$`zeile`) == 1)) {
          stop(paste("Error! Invalid data for `zeile`. Must be an integer:", input_json$`zeile`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerZeileDetail: the required field `zeile` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EuerZeileDetail
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

      # check if the required `betrag_gesamt` is null
      if (is.null(self$`betrag_gesamt`)) {
        return(FALSE)
      }

      # check if the required `bezeichnung` is null
      if (is.null(self$`bezeichnung`)) {
        return(FALSE)
      }

      # check if the required `kategorien` is null
      if (is.null(self$`kategorien`)) {
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

      # check if the required `betrag_gesamt` is null
      if (is.null(self$`betrag_gesamt`)) {
        invalid_fields["betrag_gesamt"] <- "Non-nullable required field `betrag_gesamt` cannot be null."
      }

      # check if the required `bezeichnung` is null
      if (is.null(self$`bezeichnung`)) {
        invalid_fields["bezeichnung"] <- "Non-nullable required field `bezeichnung` cannot be null."
      }

      # check if the required `kategorien` is null
      if (is.null(self$`kategorien`)) {
        invalid_fields["kategorien"] <- "Non-nullable required field `kategorien` cannot be null."
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
# EuerZeileDetail$unlock()
#
## Below is an example to define the print function
# EuerZeileDetail$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EuerZeileDetail$lock()

