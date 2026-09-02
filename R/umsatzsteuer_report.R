#' Create a new UmsatzsteuerReport
#'
#' @description
#' UmsatzsteuerReport Class
#'
#' @docType class
#' @title UmsatzsteuerReport
#' @description UmsatzsteuerReport Class
#' @format An \code{R6Class} generator object
#' @field generated_at  character
#' @field input_tax  list(\link{VatDetail})
#' @field output_tax  list(\link{VatDetail})
#' @field period  character
#' @field total_input_tax  character
#' @field total_output_tax  character
#' @field vat_payable  character
#' @field vat_refund  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UmsatzsteuerReport <- R6::R6Class(
  "UmsatzsteuerReport",
  public = list(
    `generated_at` = NULL,
    `input_tax` = NULL,
    `output_tax` = NULL,
    `period` = NULL,
    `total_input_tax` = NULL,
    `total_output_tax` = NULL,
    `vat_payable` = NULL,
    `vat_refund` = NULL,

    #' @description
    #' Initialize a new UmsatzsteuerReport class.
    #'
    #' @param generated_at generated_at
    #' @param input_tax input_tax
    #' @param output_tax output_tax
    #' @param period period
    #' @param total_input_tax total_input_tax
    #' @param total_output_tax total_output_tax
    #' @param vat_payable vat_payable
    #' @param vat_refund vat_refund
    #' @param ... Other optional arguments.
    initialize = function(`generated_at`, `input_tax`, `output_tax`, `period`, `total_input_tax`, `total_output_tax`, `vat_payable`, `vat_refund`, ...) {
      if (!missing(`generated_at`)) {
        if (!(is.character(`generated_at`) && length(`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", `generated_at`))
        }
        self$`generated_at` <- `generated_at`
      }
      if (!missing(`input_tax`)) {
        stopifnot(is.vector(`input_tax`), length(`input_tax`) != 0)
        sapply(`input_tax`, function(x) stopifnot(R6::is.R6(x)))
        self$`input_tax` <- `input_tax`
      }
      if (!missing(`output_tax`)) {
        stopifnot(is.vector(`output_tax`), length(`output_tax`) != 0)
        sapply(`output_tax`, function(x) stopifnot(R6::is.R6(x)))
        self$`output_tax` <- `output_tax`
      }
      if (!missing(`period`)) {
        if (!(is.character(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", `period`))
        }
        self$`period` <- `period`
      }
      if (!missing(`total_input_tax`)) {
        if (!(is.character(`total_input_tax`) && length(`total_input_tax`) == 1)) {
          stop(paste("Error! Invalid data for `total_input_tax`. Must be a string:", `total_input_tax`))
        }
        self$`total_input_tax` <- `total_input_tax`
      }
      if (!missing(`total_output_tax`)) {
        if (!(is.character(`total_output_tax`) && length(`total_output_tax`) == 1)) {
          stop(paste("Error! Invalid data for `total_output_tax`. Must be a string:", `total_output_tax`))
        }
        self$`total_output_tax` <- `total_output_tax`
      }
      if (!missing(`vat_payable`)) {
        if (!(is.character(`vat_payable`) && length(`vat_payable`) == 1)) {
          stop(paste("Error! Invalid data for `vat_payable`. Must be a string:", `vat_payable`))
        }
        self$`vat_payable` <- `vat_payable`
      }
      if (!missing(`vat_refund`)) {
        if (!(is.character(`vat_refund`) && length(`vat_refund`) == 1)) {
          stop(paste("Error! Invalid data for `vat_refund`. Must be a string:", `vat_refund`))
        }
        self$`vat_refund` <- `vat_refund`
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
    #' @return UmsatzsteuerReport as a base R list.
    #' @examples
    #' # convert array of UmsatzsteuerReport (x) to a data frame
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
    #' Convert UmsatzsteuerReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UmsatzsteuerReportObject <- list()
      if (!is.null(self$`generated_at`)) {
        UmsatzsteuerReportObject[["generated_at"]] <-
          self$`generated_at`
      }
      if (!is.null(self$`input_tax`)) {
        UmsatzsteuerReportObject[["input_tax"]] <-
          self$extractSimpleType(self$`input_tax`)
      }
      if (!is.null(self$`output_tax`)) {
        UmsatzsteuerReportObject[["output_tax"]] <-
          self$extractSimpleType(self$`output_tax`)
      }
      if (!is.null(self$`period`)) {
        UmsatzsteuerReportObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`total_input_tax`)) {
        UmsatzsteuerReportObject[["total_input_tax"]] <-
          self$`total_input_tax`
      }
      if (!is.null(self$`total_output_tax`)) {
        UmsatzsteuerReportObject[["total_output_tax"]] <-
          self$`total_output_tax`
      }
      if (!is.null(self$`vat_payable`)) {
        UmsatzsteuerReportObject[["vat_payable"]] <-
          self$`vat_payable`
      }
      if (!is.null(self$`vat_refund`)) {
        UmsatzsteuerReportObject[["vat_refund"]] <-
          self$`vat_refund`
      }
      return(UmsatzsteuerReportObject)
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
    #' Deserialize JSON string into an instance of UmsatzsteuerReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of UmsatzsteuerReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`generated_at`)) {
        self$`generated_at` <- this_object$`generated_at`
      }
      if (!is.null(this_object$`input_tax`)) {
        self$`input_tax` <- ApiClient$new()$deserializeObj(this_object$`input_tax`, "array[VatDetail]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`output_tax`)) {
        self$`output_tax` <- ApiClient$new()$deserializeObj(this_object$`output_tax`, "array[VatDetail]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`total_input_tax`)) {
        self$`total_input_tax` <- this_object$`total_input_tax`
      }
      if (!is.null(this_object$`total_output_tax`)) {
        self$`total_output_tax` <- this_object$`total_output_tax`
      }
      if (!is.null(this_object$`vat_payable`)) {
        self$`vat_payable` <- this_object$`vat_payable`
      }
      if (!is.null(this_object$`vat_refund`)) {
        self$`vat_refund` <- this_object$`vat_refund`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UmsatzsteuerReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UmsatzsteuerReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of UmsatzsteuerReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`generated_at` <- this_object$`generated_at`
      self$`input_tax` <- ApiClient$new()$deserializeObj(this_object$`input_tax`, "array[VatDetail]", loadNamespace("openapi"))
      self$`output_tax` <- ApiClient$new()$deserializeObj(this_object$`output_tax`, "array[VatDetail]", loadNamespace("openapi"))
      self$`period` <- this_object$`period`
      self$`total_input_tax` <- this_object$`total_input_tax`
      self$`total_output_tax` <- this_object$`total_output_tax`
      self$`vat_payable` <- this_object$`vat_payable`
      self$`vat_refund` <- this_object$`vat_refund`
      self
    },

    #' @description
    #' Validate JSON input with respect to UmsatzsteuerReport and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UmsatzsteuerReport: the required field `generated_at` is missing."))
      }
      # check the required field `input_tax`
      if (!is.null(input_json$`input_tax`)) {
        stopifnot(is.vector(input_json$`input_tax`), length(input_json$`input_tax`) != 0)
        tmp <- sapply(input_json$`input_tax`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UmsatzsteuerReport: the required field `input_tax` is missing."))
      }
      # check the required field `output_tax`
      if (!is.null(input_json$`output_tax`)) {
        stopifnot(is.vector(input_json$`output_tax`), length(input_json$`output_tax`) != 0)
        tmp <- sapply(input_json$`output_tax`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UmsatzsteuerReport: the required field `output_tax` is missing."))
      }
      # check the required field `period`
      if (!is.null(input_json$`period`)) {
        if (!(is.character(input_json$`period`) && length(input_json$`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", input_json$`period`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UmsatzsteuerReport: the required field `period` is missing."))
      }
      # check the required field `total_input_tax`
      if (!is.null(input_json$`total_input_tax`)) {
        if (!(is.character(input_json$`total_input_tax`) && length(input_json$`total_input_tax`) == 1)) {
          stop(paste("Error! Invalid data for `total_input_tax`. Must be a string:", input_json$`total_input_tax`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UmsatzsteuerReport: the required field `total_input_tax` is missing."))
      }
      # check the required field `total_output_tax`
      if (!is.null(input_json$`total_output_tax`)) {
        if (!(is.character(input_json$`total_output_tax`) && length(input_json$`total_output_tax`) == 1)) {
          stop(paste("Error! Invalid data for `total_output_tax`. Must be a string:", input_json$`total_output_tax`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UmsatzsteuerReport: the required field `total_output_tax` is missing."))
      }
      # check the required field `vat_payable`
      if (!is.null(input_json$`vat_payable`)) {
        if (!(is.character(input_json$`vat_payable`) && length(input_json$`vat_payable`) == 1)) {
          stop(paste("Error! Invalid data for `vat_payable`. Must be a string:", input_json$`vat_payable`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UmsatzsteuerReport: the required field `vat_payable` is missing."))
      }
      # check the required field `vat_refund`
      if (!is.null(input_json$`vat_refund`)) {
        if (!(is.character(input_json$`vat_refund`) && length(input_json$`vat_refund`) == 1)) {
          stop(paste("Error! Invalid data for `vat_refund`. Must be a string:", input_json$`vat_refund`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UmsatzsteuerReport: the required field `vat_refund` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UmsatzsteuerReport
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

      # check if the required `input_tax` is null
      if (is.null(self$`input_tax`)) {
        return(FALSE)
      }

      # check if the required `output_tax` is null
      if (is.null(self$`output_tax`)) {
        return(FALSE)
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        return(FALSE)
      }

      # check if the required `total_input_tax` is null
      if (is.null(self$`total_input_tax`)) {
        return(FALSE)
      }

      # check if the required `total_output_tax` is null
      if (is.null(self$`total_output_tax`)) {
        return(FALSE)
      }

      # check if the required `vat_payable` is null
      if (is.null(self$`vat_payable`)) {
        return(FALSE)
      }

      # check if the required `vat_refund` is null
      if (is.null(self$`vat_refund`)) {
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

      # check if the required `input_tax` is null
      if (is.null(self$`input_tax`)) {
        invalid_fields["input_tax"] <- "Non-nullable required field `input_tax` cannot be null."
      }

      # check if the required `output_tax` is null
      if (is.null(self$`output_tax`)) {
        invalid_fields["output_tax"] <- "Non-nullable required field `output_tax` cannot be null."
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        invalid_fields["period"] <- "Non-nullable required field `period` cannot be null."
      }

      # check if the required `total_input_tax` is null
      if (is.null(self$`total_input_tax`)) {
        invalid_fields["total_input_tax"] <- "Non-nullable required field `total_input_tax` cannot be null."
      }

      # check if the required `total_output_tax` is null
      if (is.null(self$`total_output_tax`)) {
        invalid_fields["total_output_tax"] <- "Non-nullable required field `total_output_tax` cannot be null."
      }

      # check if the required `vat_payable` is null
      if (is.null(self$`vat_payable`)) {
        invalid_fields["vat_payable"] <- "Non-nullable required field `vat_payable` cannot be null."
      }

      # check if the required `vat_refund` is null
      if (is.null(self$`vat_refund`)) {
        invalid_fields["vat_refund"] <- "Non-nullable required field `vat_refund` cannot be null."
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
# UmsatzsteuerReport$unlock()
#
## Below is an example to define the print function
# UmsatzsteuerReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UmsatzsteuerReport$lock()

