#' Create a new EuerDetailErgebnis
#'
#' @description
#' EuerDetailErgebnis Class
#'
#' @docType class
#' @title EuerDetailErgebnis
#' @description EuerDetailErgebnis Class
#' @format An \code{R6Class} generator object
#' @field jahr  integer
#' @field zeilen  list(\link{EuerZeileDetail})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EuerDetailErgebnis <- R6::R6Class(
  "EuerDetailErgebnis",
  public = list(
    `jahr` = NULL,
    `zeilen` = NULL,

    #' @description
    #' Initialize a new EuerDetailErgebnis class.
    #'
    #' @param jahr jahr
    #' @param zeilen zeilen
    #' @param ... Other optional arguments.
    initialize = function(`jahr`, `zeilen`, ...) {
      if (!missing(`jahr`)) {
        if (!(is.numeric(`jahr`) && length(`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", `jahr`))
        }
        self$`jahr` <- `jahr`
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
    #' @return EuerDetailErgebnis as a base R list.
    #' @examples
    #' # convert array of EuerDetailErgebnis (x) to a data frame
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
    #' Convert EuerDetailErgebnis to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EuerDetailErgebnisObject <- list()
      if (!is.null(self$`jahr`)) {
        EuerDetailErgebnisObject[["jahr"]] <-
          self$`jahr`
      }
      if (!is.null(self$`zeilen`)) {
        EuerDetailErgebnisObject[["zeilen"]] <-
          self$extractSimpleType(self$`zeilen`)
      }
      return(EuerDetailErgebnisObject)
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
    #' Deserialize JSON string into an instance of EuerDetailErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of EuerDetailErgebnis
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`jahr`)) {
        self$`jahr` <- this_object$`jahr`
      }
      if (!is.null(this_object$`zeilen`)) {
        self$`zeilen` <- ApiClient$new()$deserializeObj(this_object$`zeilen`, "array[EuerZeileDetail]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EuerDetailErgebnis in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EuerDetailErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of EuerDetailErgebnis
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`jahr` <- this_object$`jahr`
      self$`zeilen` <- ApiClient$new()$deserializeObj(this_object$`zeilen`, "array[EuerZeileDetail]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to EuerDetailErgebnis and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `jahr`
      if (!is.null(input_json$`jahr`)) {
        if (!(is.numeric(input_json$`jahr`) && length(input_json$`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", input_json$`jahr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerDetailErgebnis: the required field `jahr` is missing."))
      }
      # check the required field `zeilen`
      if (!is.null(input_json$`zeilen`)) {
        stopifnot(is.vector(input_json$`zeilen`), length(input_json$`zeilen`) != 0)
        tmp <- sapply(input_json$`zeilen`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EuerDetailErgebnis: the required field `zeilen` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EuerDetailErgebnis
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
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
      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        invalid_fields["jahr"] <- "Non-nullable required field `jahr` cannot be null."
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
# EuerDetailErgebnis$unlock()
#
## Below is an example to define the print function
# EuerDetailErgebnis$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EuerDetailErgebnis$lock()

