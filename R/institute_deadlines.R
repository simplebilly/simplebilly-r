#' Create a new InstituteDeadlines
#'
#' @description
#' InstituteDeadlines Class
#'
#' @docType class
#' @title InstituteDeadlines
#' @description InstituteDeadlines Class
#' @format An \code{R6Class} generator object
#' @field abschlusspruefungMonths HGB § 340k/§ 341k: Abschlussprüfung (5 Monate). integer [optional]
#' @field jahresabschlussBafinMonths KWG § 26: Jahresabschluss an die BaFin (3 Monate, nur KWG-Institute). integer [optional]
#' @field offenlegungMonths HGB § 325 Abs. 4: Offenlegung (4 kapitalmarktorientiert / 12 sonst). integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InstituteDeadlines <- R6::R6Class(
  "InstituteDeadlines",
  public = list(
    `abschlusspruefungMonths` = NULL,
    `jahresabschlussBafinMonths` = NULL,
    `offenlegungMonths` = NULL,

    #' @description
    #' Initialize a new InstituteDeadlines class.
    #'
    #' @param offenlegungMonths HGB § 325 Abs. 4: Offenlegung (4 kapitalmarktorientiert / 12 sonst).
    #' @param abschlusspruefungMonths HGB § 340k/§ 341k: Abschlussprüfung (5 Monate).
    #' @param jahresabschlussBafinMonths KWG § 26: Jahresabschluss an die BaFin (3 Monate, nur KWG-Institute).
    #' @param ... Other optional arguments.
    initialize = function(`offenlegungMonths`, `abschlusspruefungMonths` = NULL, `jahresabschlussBafinMonths` = NULL, ...) {
      if (!missing(`offenlegungMonths`)) {
        if (!(is.numeric(`offenlegungMonths`) && length(`offenlegungMonths`) == 1)) {
          stop(paste("Error! Invalid data for `offenlegungMonths`. Must be an integer:", `offenlegungMonths`))
        }
        self$`offenlegungMonths` <- `offenlegungMonths`
      }
      if (!is.null(`abschlusspruefungMonths`)) {
        if (!(is.numeric(`abschlusspruefungMonths`) && length(`abschlusspruefungMonths`) == 1)) {
          stop(paste("Error! Invalid data for `abschlusspruefungMonths`. Must be an integer:", `abschlusspruefungMonths`))
        }
        self$`abschlusspruefungMonths` <- `abschlusspruefungMonths`
      }
      if (!is.null(`jahresabschlussBafinMonths`)) {
        if (!(is.numeric(`jahresabschlussBafinMonths`) && length(`jahresabschlussBafinMonths`) == 1)) {
          stop(paste("Error! Invalid data for `jahresabschlussBafinMonths`. Must be an integer:", `jahresabschlussBafinMonths`))
        }
        self$`jahresabschlussBafinMonths` <- `jahresabschlussBafinMonths`
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
    #' @return InstituteDeadlines as a base R list.
    #' @examples
    #' # convert array of InstituteDeadlines (x) to a data frame
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
    #' Convert InstituteDeadlines to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      InstituteDeadlinesObject <- list()
      if (!is.null(self$`abschlusspruefungMonths`)) {
        InstituteDeadlinesObject[["abschlusspruefungMonths"]] <-
          self$`abschlusspruefungMonths`
      }
      if (!is.null(self$`jahresabschlussBafinMonths`)) {
        InstituteDeadlinesObject[["jahresabschlussBafinMonths"]] <-
          self$`jahresabschlussBafinMonths`
      }
      if (!is.null(self$`offenlegungMonths`)) {
        InstituteDeadlinesObject[["offenlegungMonths"]] <-
          self$`offenlegungMonths`
      }
      return(InstituteDeadlinesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of InstituteDeadlines
    #'
    #' @param input_json the JSON input
    #' @return the instance of InstituteDeadlines
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`abschlusspruefungMonths`)) {
        self$`abschlusspruefungMonths` <- this_object$`abschlusspruefungMonths`
      }
      if (!is.null(this_object$`jahresabschlussBafinMonths`)) {
        self$`jahresabschlussBafinMonths` <- this_object$`jahresabschlussBafinMonths`
      }
      if (!is.null(this_object$`offenlegungMonths`)) {
        self$`offenlegungMonths` <- this_object$`offenlegungMonths`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return InstituteDeadlines in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of InstituteDeadlines
    #'
    #' @param input_json the JSON input
    #' @return the instance of InstituteDeadlines
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`abschlusspruefungMonths` <- this_object$`abschlusspruefungMonths`
      self$`jahresabschlussBafinMonths` <- this_object$`jahresabschlussBafinMonths`
      self$`offenlegungMonths` <- this_object$`offenlegungMonths`
      self
    },

    #' @description
    #' Validate JSON input with respect to InstituteDeadlines and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `offenlegungMonths`
      if (!is.null(input_json$`offenlegungMonths`)) {
        if (!(is.numeric(input_json$`offenlegungMonths`) && length(input_json$`offenlegungMonths`) == 1)) {
          stop(paste("Error! Invalid data for `offenlegungMonths`. Must be an integer:", input_json$`offenlegungMonths`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InstituteDeadlines: the required field `offenlegungMonths` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of InstituteDeadlines
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `offenlegungMonths` is null
      if (is.null(self$`offenlegungMonths`)) {
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
      # check if the required `offenlegungMonths` is null
      if (is.null(self$`offenlegungMonths`)) {
        invalid_fields["offenlegungMonths"] <- "Non-nullable required field `offenlegungMonths` cannot be null."
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
# InstituteDeadlines$unlock()
#
## Below is an example to define the print function
# InstituteDeadlines$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# InstituteDeadlines$lock()

