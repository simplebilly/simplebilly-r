#' Create a new Verfahrensdokumentation
#'
#' @description
#' Verfahrensdokumentation Class
#'
#' @docType class
#' @title Verfahrensdokumentation
#' @description Verfahrensdokumentation Class
#' @format An \code{R6Class} generator object
#' @field entries  list(\link{ComplianceEntry})
#' @field generated_at  character
#' @field title  character
#' @field version  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Verfahrensdokumentation <- R6::R6Class(
  "Verfahrensdokumentation",
  public = list(
    `entries` = NULL,
    `generated_at` = NULL,
    `title` = NULL,
    `version` = NULL,

    #' @description
    #' Initialize a new Verfahrensdokumentation class.
    #'
    #' @param entries entries
    #' @param generated_at generated_at
    #' @param title title
    #' @param version version
    #' @param ... Other optional arguments.
    initialize = function(`entries`, `generated_at`, `title`, `version`, ...) {
      if (!missing(`entries`)) {
        stopifnot(is.vector(`entries`), length(`entries`) != 0)
        sapply(`entries`, function(x) stopifnot(R6::is.R6(x)))
        self$`entries` <- `entries`
      }
      if (!missing(`generated_at`)) {
        if (!(is.character(`generated_at`) && length(`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", `generated_at`))
        }
        self$`generated_at` <- `generated_at`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!missing(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
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
    #' @return Verfahrensdokumentation as a base R list.
    #' @examples
    #' # convert array of Verfahrensdokumentation (x) to a data frame
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
    #' Convert Verfahrensdokumentation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VerfahrensdokumentationObject <- list()
      if (!is.null(self$`entries`)) {
        VerfahrensdokumentationObject[["entries"]] <-
          self$extractSimpleType(self$`entries`)
      }
      if (!is.null(self$`generated_at`)) {
        VerfahrensdokumentationObject[["generated_at"]] <-
          self$`generated_at`
      }
      if (!is.null(self$`title`)) {
        VerfahrensdokumentationObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`version`)) {
        VerfahrensdokumentationObject[["version"]] <-
          self$`version`
      }
      return(VerfahrensdokumentationObject)
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
    #' Deserialize JSON string into an instance of Verfahrensdokumentation
    #'
    #' @param input_json the JSON input
    #' @return the instance of Verfahrensdokumentation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`entries`)) {
        self$`entries` <- ApiClient$new()$deserializeObj(this_object$`entries`, "array[ComplianceEntry]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`generated_at`)) {
        self$`generated_at` <- this_object$`generated_at`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Verfahrensdokumentation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Verfahrensdokumentation
    #'
    #' @param input_json the JSON input
    #' @return the instance of Verfahrensdokumentation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entries` <- ApiClient$new()$deserializeObj(this_object$`entries`, "array[ComplianceEntry]", loadNamespace("openapi"))
      self$`generated_at` <- this_object$`generated_at`
      self$`title` <- this_object$`title`
      self$`version` <- this_object$`version`
      self
    },

    #' @description
    #' Validate JSON input with respect to Verfahrensdokumentation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `entries`
      if (!is.null(input_json$`entries`)) {
        stopifnot(is.vector(input_json$`entries`), length(input_json$`entries`) != 0)
        tmp <- sapply(input_json$`entries`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Verfahrensdokumentation: the required field `entries` is missing."))
      }
      # check the required field `generated_at`
      if (!is.null(input_json$`generated_at`)) {
        if (!(is.character(input_json$`generated_at`) && length(input_json$`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", input_json$`generated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Verfahrensdokumentation: the required field `generated_at` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Verfahrensdokumentation: the required field `title` is missing."))
      }
      # check the required field `version`
      if (!is.null(input_json$`version`)) {
        if (!(is.character(input_json$`version`) && length(input_json$`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", input_json$`version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Verfahrensdokumentation: the required field `version` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Verfahrensdokumentation
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `entries` is null
      if (is.null(self$`entries`)) {
        return(FALSE)
      }

      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        return(FALSE)
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
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
      # check if the required `entries` is null
      if (is.null(self$`entries`)) {
        invalid_fields["entries"] <- "Non-nullable required field `entries` cannot be null."
      }

      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        invalid_fields["generated_at"] <- "Non-nullable required field `generated_at` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
        invalid_fields["version"] <- "Non-nullable required field `version` cannot be null."
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
# Verfahrensdokumentation$unlock()
#
## Below is an example to define the print function
# Verfahrensdokumentation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Verfahrensdokumentation$lock()

