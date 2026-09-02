#' Create a new FristenErgebnis
#'
#' @description
#' FristenErgebnis Class
#'
#' @docType class
#' @title FristenErgebnis
#' @description FristenErgebnis Class
#' @format An \code{R6Class} generator object
#' @field anzahl  integer
#' @field fristen  list(\link{FristEintrag})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FristenErgebnis <- R6::R6Class(
  "FristenErgebnis",
  public = list(
    `anzahl` = NULL,
    `fristen` = NULL,

    #' @description
    #' Initialize a new FristenErgebnis class.
    #'
    #' @param anzahl anzahl
    #' @param fristen fristen
    #' @param ... Other optional arguments.
    initialize = function(`anzahl`, `fristen`, ...) {
      if (!missing(`anzahl`)) {
        if (!(is.numeric(`anzahl`) && length(`anzahl`) == 1)) {
          stop(paste("Error! Invalid data for `anzahl`. Must be an integer:", `anzahl`))
        }
        self$`anzahl` <- `anzahl`
      }
      if (!missing(`fristen`)) {
        stopifnot(is.vector(`fristen`), length(`fristen`) != 0)
        sapply(`fristen`, function(x) stopifnot(R6::is.R6(x)))
        self$`fristen` <- `fristen`
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
    #' @return FristenErgebnis as a base R list.
    #' @examples
    #' # convert array of FristenErgebnis (x) to a data frame
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
    #' Convert FristenErgebnis to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FristenErgebnisObject <- list()
      if (!is.null(self$`anzahl`)) {
        FristenErgebnisObject[["anzahl"]] <-
          self$`anzahl`
      }
      if (!is.null(self$`fristen`)) {
        FristenErgebnisObject[["fristen"]] <-
          self$extractSimpleType(self$`fristen`)
      }
      return(FristenErgebnisObject)
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
    #' Deserialize JSON string into an instance of FristenErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of FristenErgebnis
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`anzahl`)) {
        self$`anzahl` <- this_object$`anzahl`
      }
      if (!is.null(this_object$`fristen`)) {
        self$`fristen` <- ApiClient$new()$deserializeObj(this_object$`fristen`, "array[FristEintrag]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FristenErgebnis in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FristenErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of FristenErgebnis
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`anzahl` <- this_object$`anzahl`
      self$`fristen` <- ApiClient$new()$deserializeObj(this_object$`fristen`, "array[FristEintrag]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to FristenErgebnis and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `anzahl`
      if (!is.null(input_json$`anzahl`)) {
        if (!(is.numeric(input_json$`anzahl`) && length(input_json$`anzahl`) == 1)) {
          stop(paste("Error! Invalid data for `anzahl`. Must be an integer:", input_json$`anzahl`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FristenErgebnis: the required field `anzahl` is missing."))
      }
      # check the required field `fristen`
      if (!is.null(input_json$`fristen`)) {
        stopifnot(is.vector(input_json$`fristen`), length(input_json$`fristen`) != 0)
        tmp <- sapply(input_json$`fristen`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FristenErgebnis: the required field `fristen` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FristenErgebnis
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `anzahl` is null
      if (is.null(self$`anzahl`)) {
        return(FALSE)
      }

      if (self$`anzahl` < 0) {
        return(FALSE)
      }

      # check if the required `fristen` is null
      if (is.null(self$`fristen`)) {
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
      # check if the required `anzahl` is null
      if (is.null(self$`anzahl`)) {
        invalid_fields["anzahl"] <- "Non-nullable required field `anzahl` cannot be null."
      }

      if (self$`anzahl` < 0) {
        invalid_fields["anzahl"] <- "Invalid value for `anzahl`, must be bigger than or equal to 0."
      }

      # check if the required `fristen` is null
      if (is.null(self$`fristen`)) {
        invalid_fields["fristen"] <- "Non-nullable required field `fristen` cannot be null."
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
# FristenErgebnis$unlock()
#
## Below is an example to define the print function
# FristenErgebnis$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FristenErgebnis$lock()

