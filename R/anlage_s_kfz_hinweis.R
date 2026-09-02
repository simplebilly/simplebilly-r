#' Create a new AnlageSKfzHinweis
#'
#' @description
#' AnlageSKfzHinweis Class
#'
#' @docType class
#' @title AnlageSKfzHinweis
#' @description AnlageSKfzHinweis Class
#' @format An \code{R6Class} generator object
#' @field bezeichnung  character
#' @field kennzeichen  character
#' @field privat_anteil_prozent  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnlageSKfzHinweis <- R6::R6Class(
  "AnlageSKfzHinweis",
  public = list(
    `bezeichnung` = NULL,
    `kennzeichen` = NULL,
    `privat_anteil_prozent` = NULL,

    #' @description
    #' Initialize a new AnlageSKfzHinweis class.
    #'
    #' @param bezeichnung bezeichnung
    #' @param kennzeichen kennzeichen
    #' @param privat_anteil_prozent privat_anteil_prozent
    #' @param ... Other optional arguments.
    initialize = function(`bezeichnung`, `kennzeichen`, `privat_anteil_prozent`, ...) {
      if (!missing(`bezeichnung`)) {
        if (!(is.character(`bezeichnung`) && length(`bezeichnung`) == 1)) {
          stop(paste("Error! Invalid data for `bezeichnung`. Must be a string:", `bezeichnung`))
        }
        self$`bezeichnung` <- `bezeichnung`
      }
      if (!missing(`kennzeichen`)) {
        if (!(is.character(`kennzeichen`) && length(`kennzeichen`) == 1)) {
          stop(paste("Error! Invalid data for `kennzeichen`. Must be a string:", `kennzeichen`))
        }
        self$`kennzeichen` <- `kennzeichen`
      }
      if (!missing(`privat_anteil_prozent`)) {
        if (!(is.character(`privat_anteil_prozent`) && length(`privat_anteil_prozent`) == 1)) {
          stop(paste("Error! Invalid data for `privat_anteil_prozent`. Must be a string:", `privat_anteil_prozent`))
        }
        self$`privat_anteil_prozent` <- `privat_anteil_prozent`
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
    #' @return AnlageSKfzHinweis as a base R list.
    #' @examples
    #' # convert array of AnlageSKfzHinweis (x) to a data frame
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
    #' Convert AnlageSKfzHinweis to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnlageSKfzHinweisObject <- list()
      if (!is.null(self$`bezeichnung`)) {
        AnlageSKfzHinweisObject[["bezeichnung"]] <-
          self$`bezeichnung`
      }
      if (!is.null(self$`kennzeichen`)) {
        AnlageSKfzHinweisObject[["kennzeichen"]] <-
          self$`kennzeichen`
      }
      if (!is.null(self$`privat_anteil_prozent`)) {
        AnlageSKfzHinweisObject[["privat_anteil_prozent"]] <-
          self$`privat_anteil_prozent`
      }
      return(AnlageSKfzHinweisObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AnlageSKfzHinweis
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnlageSKfzHinweis
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bezeichnung`)) {
        self$`bezeichnung` <- this_object$`bezeichnung`
      }
      if (!is.null(this_object$`kennzeichen`)) {
        self$`kennzeichen` <- this_object$`kennzeichen`
      }
      if (!is.null(this_object$`privat_anteil_prozent`)) {
        self$`privat_anteil_prozent` <- this_object$`privat_anteil_prozent`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnlageSKfzHinweis in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnlageSKfzHinweis
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnlageSKfzHinweis
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bezeichnung` <- this_object$`bezeichnung`
      self$`kennzeichen` <- this_object$`kennzeichen`
      self$`privat_anteil_prozent` <- this_object$`privat_anteil_prozent`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnlageSKfzHinweis and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `bezeichnung`
      if (!is.null(input_json$`bezeichnung`)) {
        if (!(is.character(input_json$`bezeichnung`) && length(input_json$`bezeichnung`) == 1)) {
          stop(paste("Error! Invalid data for `bezeichnung`. Must be a string:", input_json$`bezeichnung`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnlageSKfzHinweis: the required field `bezeichnung` is missing."))
      }
      # check the required field `kennzeichen`
      if (!is.null(input_json$`kennzeichen`)) {
        if (!(is.character(input_json$`kennzeichen`) && length(input_json$`kennzeichen`) == 1)) {
          stop(paste("Error! Invalid data for `kennzeichen`. Must be a string:", input_json$`kennzeichen`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnlageSKfzHinweis: the required field `kennzeichen` is missing."))
      }
      # check the required field `privat_anteil_prozent`
      if (!is.null(input_json$`privat_anteil_prozent`)) {
        if (!(is.character(input_json$`privat_anteil_prozent`) && length(input_json$`privat_anteil_prozent`) == 1)) {
          stop(paste("Error! Invalid data for `privat_anteil_prozent`. Must be a string:", input_json$`privat_anteil_prozent`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnlageSKfzHinweis: the required field `privat_anteil_prozent` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnlageSKfzHinweis
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `bezeichnung` is null
      if (is.null(self$`bezeichnung`)) {
        return(FALSE)
      }

      # check if the required `kennzeichen` is null
      if (is.null(self$`kennzeichen`)) {
        return(FALSE)
      }

      # check if the required `privat_anteil_prozent` is null
      if (is.null(self$`privat_anteil_prozent`)) {
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
      # check if the required `bezeichnung` is null
      if (is.null(self$`bezeichnung`)) {
        invalid_fields["bezeichnung"] <- "Non-nullable required field `bezeichnung` cannot be null."
      }

      # check if the required `kennzeichen` is null
      if (is.null(self$`kennzeichen`)) {
        invalid_fields["kennzeichen"] <- "Non-nullable required field `kennzeichen` cannot be null."
      }

      # check if the required `privat_anteil_prozent` is null
      if (is.null(self$`privat_anteil_prozent`)) {
        invalid_fields["privat_anteil_prozent"] <- "Non-nullable required field `privat_anteil_prozent` cannot be null."
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
# AnlageSKfzHinweis$unlock()
#
## Below is an example to define the print function
# AnlageSKfzHinweis$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnlageSKfzHinweis$lock()

