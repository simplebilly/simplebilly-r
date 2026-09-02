#' Create a new BilanzReport
#'
#' @description
#' BilanzReport Class
#'
#' @docType class
#' @title BilanzReport
#' @description BilanzReport Class
#' @format An \code{R6Class} generator object
#' @field aktiva  list(\link{BilanzItem})
#' @field balanced  character
#' @field generated_at  character
#' @field passiva  list(\link{BilanzItem})
#' @field period  character
#' @field total_aktiva  character
#' @field total_passiva  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BilanzReport <- R6::R6Class(
  "BilanzReport",
  public = list(
    `aktiva` = NULL,
    `balanced` = NULL,
    `generated_at` = NULL,
    `passiva` = NULL,
    `period` = NULL,
    `total_aktiva` = NULL,
    `total_passiva` = NULL,

    #' @description
    #' Initialize a new BilanzReport class.
    #'
    #' @param aktiva aktiva
    #' @param balanced balanced
    #' @param generated_at generated_at
    #' @param passiva passiva
    #' @param period period
    #' @param total_aktiva total_aktiva
    #' @param total_passiva total_passiva
    #' @param ... Other optional arguments.
    initialize = function(`aktiva`, `balanced`, `generated_at`, `passiva`, `period`, `total_aktiva`, `total_passiva`, ...) {
      if (!missing(`aktiva`)) {
        stopifnot(is.vector(`aktiva`), length(`aktiva`) != 0)
        sapply(`aktiva`, function(x) stopifnot(R6::is.R6(x)))
        self$`aktiva` <- `aktiva`
      }
      if (!missing(`balanced`)) {
        if (!(is.logical(`balanced`) && length(`balanced`) == 1)) {
          stop(paste("Error! Invalid data for `balanced`. Must be a boolean:", `balanced`))
        }
        self$`balanced` <- `balanced`
      }
      if (!missing(`generated_at`)) {
        if (!(is.character(`generated_at`) && length(`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", `generated_at`))
        }
        self$`generated_at` <- `generated_at`
      }
      if (!missing(`passiva`)) {
        stopifnot(is.vector(`passiva`), length(`passiva`) != 0)
        sapply(`passiva`, function(x) stopifnot(R6::is.R6(x)))
        self$`passiva` <- `passiva`
      }
      if (!missing(`period`)) {
        if (!(is.character(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", `period`))
        }
        self$`period` <- `period`
      }
      if (!missing(`total_aktiva`)) {
        if (!(is.character(`total_aktiva`) && length(`total_aktiva`) == 1)) {
          stop(paste("Error! Invalid data for `total_aktiva`. Must be a string:", `total_aktiva`))
        }
        self$`total_aktiva` <- `total_aktiva`
      }
      if (!missing(`total_passiva`)) {
        if (!(is.character(`total_passiva`) && length(`total_passiva`) == 1)) {
          stop(paste("Error! Invalid data for `total_passiva`. Must be a string:", `total_passiva`))
        }
        self$`total_passiva` <- `total_passiva`
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
    #' @return BilanzReport as a base R list.
    #' @examples
    #' # convert array of BilanzReport (x) to a data frame
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
    #' Convert BilanzReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BilanzReportObject <- list()
      if (!is.null(self$`aktiva`)) {
        BilanzReportObject[["aktiva"]] <-
          self$extractSimpleType(self$`aktiva`)
      }
      if (!is.null(self$`balanced`)) {
        BilanzReportObject[["balanced"]] <-
          self$`balanced`
      }
      if (!is.null(self$`generated_at`)) {
        BilanzReportObject[["generated_at"]] <-
          self$`generated_at`
      }
      if (!is.null(self$`passiva`)) {
        BilanzReportObject[["passiva"]] <-
          self$extractSimpleType(self$`passiva`)
      }
      if (!is.null(self$`period`)) {
        BilanzReportObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`total_aktiva`)) {
        BilanzReportObject[["total_aktiva"]] <-
          self$`total_aktiva`
      }
      if (!is.null(self$`total_passiva`)) {
        BilanzReportObject[["total_passiva"]] <-
          self$`total_passiva`
      }
      return(BilanzReportObject)
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
    #' Deserialize JSON string into an instance of BilanzReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of BilanzReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`aktiva`)) {
        self$`aktiva` <- ApiClient$new()$deserializeObj(this_object$`aktiva`, "array[BilanzItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`balanced`)) {
        self$`balanced` <- this_object$`balanced`
      }
      if (!is.null(this_object$`generated_at`)) {
        self$`generated_at` <- this_object$`generated_at`
      }
      if (!is.null(this_object$`passiva`)) {
        self$`passiva` <- ApiClient$new()$deserializeObj(this_object$`passiva`, "array[BilanzItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`total_aktiva`)) {
        self$`total_aktiva` <- this_object$`total_aktiva`
      }
      if (!is.null(this_object$`total_passiva`)) {
        self$`total_passiva` <- this_object$`total_passiva`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BilanzReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BilanzReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of BilanzReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`aktiva` <- ApiClient$new()$deserializeObj(this_object$`aktiva`, "array[BilanzItem]", loadNamespace("openapi"))
      self$`balanced` <- this_object$`balanced`
      self$`generated_at` <- this_object$`generated_at`
      self$`passiva` <- ApiClient$new()$deserializeObj(this_object$`passiva`, "array[BilanzItem]", loadNamespace("openapi"))
      self$`period` <- this_object$`period`
      self$`total_aktiva` <- this_object$`total_aktiva`
      self$`total_passiva` <- this_object$`total_passiva`
      self
    },

    #' @description
    #' Validate JSON input with respect to BilanzReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `aktiva`
      if (!is.null(input_json$`aktiva`)) {
        stopifnot(is.vector(input_json$`aktiva`), length(input_json$`aktiva`) != 0)
        tmp <- sapply(input_json$`aktiva`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BilanzReport: the required field `aktiva` is missing."))
      }
      # check the required field `balanced`
      if (!is.null(input_json$`balanced`)) {
        if (!(is.logical(input_json$`balanced`) && length(input_json$`balanced`) == 1)) {
          stop(paste("Error! Invalid data for `balanced`. Must be a boolean:", input_json$`balanced`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BilanzReport: the required field `balanced` is missing."))
      }
      # check the required field `generated_at`
      if (!is.null(input_json$`generated_at`)) {
        if (!(is.character(input_json$`generated_at`) && length(input_json$`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", input_json$`generated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BilanzReport: the required field `generated_at` is missing."))
      }
      # check the required field `passiva`
      if (!is.null(input_json$`passiva`)) {
        stopifnot(is.vector(input_json$`passiva`), length(input_json$`passiva`) != 0)
        tmp <- sapply(input_json$`passiva`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BilanzReport: the required field `passiva` is missing."))
      }
      # check the required field `period`
      if (!is.null(input_json$`period`)) {
        if (!(is.character(input_json$`period`) && length(input_json$`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", input_json$`period`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BilanzReport: the required field `period` is missing."))
      }
      # check the required field `total_aktiva`
      if (!is.null(input_json$`total_aktiva`)) {
        if (!(is.character(input_json$`total_aktiva`) && length(input_json$`total_aktiva`) == 1)) {
          stop(paste("Error! Invalid data for `total_aktiva`. Must be a string:", input_json$`total_aktiva`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BilanzReport: the required field `total_aktiva` is missing."))
      }
      # check the required field `total_passiva`
      if (!is.null(input_json$`total_passiva`)) {
        if (!(is.character(input_json$`total_passiva`) && length(input_json$`total_passiva`) == 1)) {
          stop(paste("Error! Invalid data for `total_passiva`. Must be a string:", input_json$`total_passiva`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BilanzReport: the required field `total_passiva` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BilanzReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `aktiva` is null
      if (is.null(self$`aktiva`)) {
        return(FALSE)
      }

      # check if the required `balanced` is null
      if (is.null(self$`balanced`)) {
        return(FALSE)
      }

      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        return(FALSE)
      }

      # check if the required `passiva` is null
      if (is.null(self$`passiva`)) {
        return(FALSE)
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        return(FALSE)
      }

      # check if the required `total_aktiva` is null
      if (is.null(self$`total_aktiva`)) {
        return(FALSE)
      }

      # check if the required `total_passiva` is null
      if (is.null(self$`total_passiva`)) {
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
      # check if the required `aktiva` is null
      if (is.null(self$`aktiva`)) {
        invalid_fields["aktiva"] <- "Non-nullable required field `aktiva` cannot be null."
      }

      # check if the required `balanced` is null
      if (is.null(self$`balanced`)) {
        invalid_fields["balanced"] <- "Non-nullable required field `balanced` cannot be null."
      }

      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        invalid_fields["generated_at"] <- "Non-nullable required field `generated_at` cannot be null."
      }

      # check if the required `passiva` is null
      if (is.null(self$`passiva`)) {
        invalid_fields["passiva"] <- "Non-nullable required field `passiva` cannot be null."
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        invalid_fields["period"] <- "Non-nullable required field `period` cannot be null."
      }

      # check if the required `total_aktiva` is null
      if (is.null(self$`total_aktiva`)) {
        invalid_fields["total_aktiva"] <- "Non-nullable required field `total_aktiva` cannot be null."
      }

      # check if the required `total_passiva` is null
      if (is.null(self$`total_passiva`)) {
        invalid_fields["total_passiva"] <- "Non-nullable required field `total_passiva` cannot be null."
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
# BilanzReport$unlock()
#
## Below is an example to define the print function
# BilanzReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BilanzReport$lock()

