#' Create a new KontoReport
#'
#' @description
#' KontoReport Class
#'
#' @docType class
#' @title KontoReport
#' @description KontoReport Class
#' @format An \code{R6Class} generator object
#' @field generated_at  character
#' @field konten  list(\link{KontoItem})
#' @field period  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
KontoReport <- R6::R6Class(
  "KontoReport",
  public = list(
    `generated_at` = NULL,
    `konten` = NULL,
    `period` = NULL,

    #' @description
    #' Initialize a new KontoReport class.
    #'
    #' @param generated_at generated_at
    #' @param konten konten
    #' @param period period
    #' @param ... Other optional arguments.
    initialize = function(`generated_at`, `konten`, `period`, ...) {
      if (!missing(`generated_at`)) {
        if (!(is.character(`generated_at`) && length(`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", `generated_at`))
        }
        self$`generated_at` <- `generated_at`
      }
      if (!missing(`konten`)) {
        stopifnot(is.vector(`konten`), length(`konten`) != 0)
        sapply(`konten`, function(x) stopifnot(R6::is.R6(x)))
        self$`konten` <- `konten`
      }
      if (!missing(`period`)) {
        if (!(is.character(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", `period`))
        }
        self$`period` <- `period`
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
    #' @return KontoReport as a base R list.
    #' @examples
    #' # convert array of KontoReport (x) to a data frame
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
    #' Convert KontoReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      KontoReportObject <- list()
      if (!is.null(self$`generated_at`)) {
        KontoReportObject[["generated_at"]] <-
          self$`generated_at`
      }
      if (!is.null(self$`konten`)) {
        KontoReportObject[["konten"]] <-
          self$extractSimpleType(self$`konten`)
      }
      if (!is.null(self$`period`)) {
        KontoReportObject[["period"]] <-
          self$`period`
      }
      return(KontoReportObject)
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
    #' Deserialize JSON string into an instance of KontoReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of KontoReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`generated_at`)) {
        self$`generated_at` <- this_object$`generated_at`
      }
      if (!is.null(this_object$`konten`)) {
        self$`konten` <- ApiClient$new()$deserializeObj(this_object$`konten`, "array[KontoItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return KontoReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of KontoReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of KontoReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`generated_at` <- this_object$`generated_at`
      self$`konten` <- ApiClient$new()$deserializeObj(this_object$`konten`, "array[KontoItem]", loadNamespace("openapi"))
      self$`period` <- this_object$`period`
      self
    },

    #' @description
    #' Validate JSON input with respect to KontoReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `generated_at`
      if (!is.null(input_json$`generated_at`)) {
        if (!(is.character(input_json$`generated_at`) && length(input_json$`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", input_json$`generated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KontoReport: the required field `generated_at` is missing."))
      }
      # check the required field `konten`
      if (!is.null(input_json$`konten`)) {
        stopifnot(is.vector(input_json$`konten`), length(input_json$`konten`) != 0)
        tmp <- sapply(input_json$`konten`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KontoReport: the required field `konten` is missing."))
      }
      # check the required field `period`
      if (!is.null(input_json$`period`)) {
        if (!(is.character(input_json$`period`) && length(input_json$`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", input_json$`period`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KontoReport: the required field `period` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of KontoReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        return(FALSE)
      }

      # check if the required `konten` is null
      if (is.null(self$`konten`)) {
        return(FALSE)
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
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
      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        invalid_fields["generated_at"] <- "Non-nullable required field `generated_at` cannot be null."
      }

      # check if the required `konten` is null
      if (is.null(self$`konten`)) {
        invalid_fields["konten"] <- "Non-nullable required field `konten` cannot be null."
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        invalid_fields["period"] <- "Non-nullable required field `period` cannot be null."
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
# KontoReport$unlock()
#
## Below is an example to define the print function
# KontoReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# KontoReport$lock()

