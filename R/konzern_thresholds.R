#' Create a new KonzernThresholds
#'
#' @description
#' KonzernThresholds Class
#'
#' @docType class
#' @title KonzernThresholds
#' @description KonzernThresholds Class
#' @format An \code{R6Class} generator object
#' @field bilanzsumme  character
#' @field mitarbeiter  integer
#' @field netto_umsatz  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
KonzernThresholds <- R6::R6Class(
  "KonzernThresholds",
  public = list(
    `bilanzsumme` = NULL,
    `mitarbeiter` = NULL,
    `netto_umsatz` = NULL,

    #' @description
    #' Initialize a new KonzernThresholds class.
    #'
    #' @param bilanzsumme bilanzsumme
    #' @param mitarbeiter mitarbeiter
    #' @param netto_umsatz netto_umsatz
    #' @param ... Other optional arguments.
    initialize = function(`bilanzsumme`, `mitarbeiter`, `netto_umsatz`, ...) {
      if (!missing(`bilanzsumme`)) {
        if (!(is.character(`bilanzsumme`) && length(`bilanzsumme`) == 1)) {
          stop(paste("Error! Invalid data for `bilanzsumme`. Must be a string:", `bilanzsumme`))
        }
        self$`bilanzsumme` <- `bilanzsumme`
      }
      if (!missing(`mitarbeiter`)) {
        if (!(is.numeric(`mitarbeiter`) && length(`mitarbeiter`) == 1)) {
          stop(paste("Error! Invalid data for `mitarbeiter`. Must be an integer:", `mitarbeiter`))
        }
        self$`mitarbeiter` <- `mitarbeiter`
      }
      if (!missing(`netto_umsatz`)) {
        if (!(is.character(`netto_umsatz`) && length(`netto_umsatz`) == 1)) {
          stop(paste("Error! Invalid data for `netto_umsatz`. Must be a string:", `netto_umsatz`))
        }
        self$`netto_umsatz` <- `netto_umsatz`
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
    #' @return KonzernThresholds as a base R list.
    #' @examples
    #' # convert array of KonzernThresholds (x) to a data frame
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
    #' Convert KonzernThresholds to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      KonzernThresholdsObject <- list()
      if (!is.null(self$`bilanzsumme`)) {
        KonzernThresholdsObject[["bilanzsumme"]] <-
          self$`bilanzsumme`
      }
      if (!is.null(self$`mitarbeiter`)) {
        KonzernThresholdsObject[["mitarbeiter"]] <-
          self$`mitarbeiter`
      }
      if (!is.null(self$`netto_umsatz`)) {
        KonzernThresholdsObject[["netto_umsatz"]] <-
          self$`netto_umsatz`
      }
      return(KonzernThresholdsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of KonzernThresholds
    #'
    #' @param input_json the JSON input
    #' @return the instance of KonzernThresholds
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bilanzsumme`)) {
        self$`bilanzsumme` <- this_object$`bilanzsumme`
      }
      if (!is.null(this_object$`mitarbeiter`)) {
        self$`mitarbeiter` <- this_object$`mitarbeiter`
      }
      if (!is.null(this_object$`netto_umsatz`)) {
        self$`netto_umsatz` <- this_object$`netto_umsatz`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return KonzernThresholds in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of KonzernThresholds
    #'
    #' @param input_json the JSON input
    #' @return the instance of KonzernThresholds
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bilanzsumme` <- this_object$`bilanzsumme`
      self$`mitarbeiter` <- this_object$`mitarbeiter`
      self$`netto_umsatz` <- this_object$`netto_umsatz`
      self
    },

    #' @description
    #' Validate JSON input with respect to KonzernThresholds and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `bilanzsumme`
      if (!is.null(input_json$`bilanzsumme`)) {
        if (!(is.character(input_json$`bilanzsumme`) && length(input_json$`bilanzsumme`) == 1)) {
          stop(paste("Error! Invalid data for `bilanzsumme`. Must be a string:", input_json$`bilanzsumme`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernThresholds: the required field `bilanzsumme` is missing."))
      }
      # check the required field `mitarbeiter`
      if (!is.null(input_json$`mitarbeiter`)) {
        if (!(is.numeric(input_json$`mitarbeiter`) && length(input_json$`mitarbeiter`) == 1)) {
          stop(paste("Error! Invalid data for `mitarbeiter`. Must be an integer:", input_json$`mitarbeiter`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernThresholds: the required field `mitarbeiter` is missing."))
      }
      # check the required field `netto_umsatz`
      if (!is.null(input_json$`netto_umsatz`)) {
        if (!(is.character(input_json$`netto_umsatz`) && length(input_json$`netto_umsatz`) == 1)) {
          stop(paste("Error! Invalid data for `netto_umsatz`. Must be a string:", input_json$`netto_umsatz`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernThresholds: the required field `netto_umsatz` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of KonzernThresholds
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `bilanzsumme` is null
      if (is.null(self$`bilanzsumme`)) {
        return(FALSE)
      }

      # check if the required `mitarbeiter` is null
      if (is.null(self$`mitarbeiter`)) {
        return(FALSE)
      }

      # check if the required `netto_umsatz` is null
      if (is.null(self$`netto_umsatz`)) {
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
      # check if the required `bilanzsumme` is null
      if (is.null(self$`bilanzsumme`)) {
        invalid_fields["bilanzsumme"] <- "Non-nullable required field `bilanzsumme` cannot be null."
      }

      # check if the required `mitarbeiter` is null
      if (is.null(self$`mitarbeiter`)) {
        invalid_fields["mitarbeiter"] <- "Non-nullable required field `mitarbeiter` cannot be null."
      }

      # check if the required `netto_umsatz` is null
      if (is.null(self$`netto_umsatz`)) {
        invalid_fields["netto_umsatz"] <- "Non-nullable required field `netto_umsatz` cannot be null."
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
# KonzernThresholds$unlock()
#
## Below is an example to define the print function
# KonzernThresholds$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# KonzernThresholds$lock()

