#' Create a new KostenVorschau
#'
#' @description
#' KostenVorschau Class
#'
#' @docType class
#' @title KostenVorschau
#' @description KostenVorschau Class
#' @format An \code{R6Class} generator object
#' @field eintraege  list(\link{KostenEintrag})
#' @field gesamt  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
KostenVorschau <- R6::R6Class(
  "KostenVorschau",
  public = list(
    `eintraege` = NULL,
    `gesamt` = NULL,

    #' @description
    #' Initialize a new KostenVorschau class.
    #'
    #' @param eintraege eintraege
    #' @param gesamt gesamt
    #' @param ... Other optional arguments.
    initialize = function(`eintraege`, `gesamt`, ...) {
      if (!missing(`eintraege`)) {
        stopifnot(is.vector(`eintraege`), length(`eintraege`) != 0)
        sapply(`eintraege`, function(x) stopifnot(R6::is.R6(x)))
        self$`eintraege` <- `eintraege`
      }
      if (!missing(`gesamt`)) {
        if (!(is.character(`gesamt`) && length(`gesamt`) == 1)) {
          stop(paste("Error! Invalid data for `gesamt`. Must be a string:", `gesamt`))
        }
        self$`gesamt` <- `gesamt`
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
    #' @return KostenVorschau as a base R list.
    #' @examples
    #' # convert array of KostenVorschau (x) to a data frame
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
    #' Convert KostenVorschau to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      KostenVorschauObject <- list()
      if (!is.null(self$`eintraege`)) {
        KostenVorschauObject[["eintraege"]] <-
          self$extractSimpleType(self$`eintraege`)
      }
      if (!is.null(self$`gesamt`)) {
        KostenVorschauObject[["gesamt"]] <-
          self$`gesamt`
      }
      return(KostenVorschauObject)
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
    #' Deserialize JSON string into an instance of KostenVorschau
    #'
    #' @param input_json the JSON input
    #' @return the instance of KostenVorschau
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`eintraege`)) {
        self$`eintraege` <- ApiClient$new()$deserializeObj(this_object$`eintraege`, "array[KostenEintrag]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`gesamt`)) {
        self$`gesamt` <- this_object$`gesamt`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return KostenVorschau in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of KostenVorschau
    #'
    #' @param input_json the JSON input
    #' @return the instance of KostenVorschau
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`eintraege` <- ApiClient$new()$deserializeObj(this_object$`eintraege`, "array[KostenEintrag]", loadNamespace("openapi"))
      self$`gesamt` <- this_object$`gesamt`
      self
    },

    #' @description
    #' Validate JSON input with respect to KostenVorschau and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `eintraege`
      if (!is.null(input_json$`eintraege`)) {
        stopifnot(is.vector(input_json$`eintraege`), length(input_json$`eintraege`) != 0)
        tmp <- sapply(input_json$`eintraege`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KostenVorschau: the required field `eintraege` is missing."))
      }
      # check the required field `gesamt`
      if (!is.null(input_json$`gesamt`)) {
        if (!(is.character(input_json$`gesamt`) && length(input_json$`gesamt`) == 1)) {
          stop(paste("Error! Invalid data for `gesamt`. Must be a string:", input_json$`gesamt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KostenVorschau: the required field `gesamt` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of KostenVorschau
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `eintraege` is null
      if (is.null(self$`eintraege`)) {
        return(FALSE)
      }

      # check if the required `gesamt` is null
      if (is.null(self$`gesamt`)) {
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
      # check if the required `eintraege` is null
      if (is.null(self$`eintraege`)) {
        invalid_fields["eintraege"] <- "Non-nullable required field `eintraege` cannot be null."
      }

      # check if the required `gesamt` is null
      if (is.null(self$`gesamt`)) {
        invalid_fields["gesamt"] <- "Non-nullable required field `gesamt` cannot be null."
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
# KostenVorschau$unlock()
#
## Below is an example to define the print function
# KostenVorschau$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# KostenVorschau$lock()

