#' Create a new VatSummary
#'
#' @description
#' VatSummary Class
#'
#' @docType class
#' @title VatSummary
#' @description VatSummary Class
#' @format An \code{R6Class} generator object
#' @field input_tax_items  list(\link{VatItem})
#' @field output_tax_items  list(\link{VatItem})
#' @field total_input_tax  character
#' @field total_output_tax  character
#' @field vat_due  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VatSummary <- R6::R6Class(
  "VatSummary",
  public = list(
    `input_tax_items` = NULL,
    `output_tax_items` = NULL,
    `total_input_tax` = NULL,
    `total_output_tax` = NULL,
    `vat_due` = NULL,

    #' @description
    #' Initialize a new VatSummary class.
    #'
    #' @param input_tax_items input_tax_items
    #' @param output_tax_items output_tax_items
    #' @param total_input_tax total_input_tax
    #' @param total_output_tax total_output_tax
    #' @param vat_due vat_due
    #' @param ... Other optional arguments.
    initialize = function(`input_tax_items`, `output_tax_items`, `total_input_tax`, `total_output_tax`, `vat_due`, ...) {
      if (!missing(`input_tax_items`)) {
        stopifnot(is.vector(`input_tax_items`), length(`input_tax_items`) != 0)
        sapply(`input_tax_items`, function(x) stopifnot(R6::is.R6(x)))
        self$`input_tax_items` <- `input_tax_items`
      }
      if (!missing(`output_tax_items`)) {
        stopifnot(is.vector(`output_tax_items`), length(`output_tax_items`) != 0)
        sapply(`output_tax_items`, function(x) stopifnot(R6::is.R6(x)))
        self$`output_tax_items` <- `output_tax_items`
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
      if (!missing(`vat_due`)) {
        if (!(is.character(`vat_due`) && length(`vat_due`) == 1)) {
          stop(paste("Error! Invalid data for `vat_due`. Must be a string:", `vat_due`))
        }
        self$`vat_due` <- `vat_due`
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
    #' @return VatSummary as a base R list.
    #' @examples
    #' # convert array of VatSummary (x) to a data frame
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
    #' Convert VatSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VatSummaryObject <- list()
      if (!is.null(self$`input_tax_items`)) {
        VatSummaryObject[["input_tax_items"]] <-
          self$extractSimpleType(self$`input_tax_items`)
      }
      if (!is.null(self$`output_tax_items`)) {
        VatSummaryObject[["output_tax_items"]] <-
          self$extractSimpleType(self$`output_tax_items`)
      }
      if (!is.null(self$`total_input_tax`)) {
        VatSummaryObject[["total_input_tax"]] <-
          self$`total_input_tax`
      }
      if (!is.null(self$`total_output_tax`)) {
        VatSummaryObject[["total_output_tax"]] <-
          self$`total_output_tax`
      }
      if (!is.null(self$`vat_due`)) {
        VatSummaryObject[["vat_due"]] <-
          self$`vat_due`
      }
      return(VatSummaryObject)
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
    #' Deserialize JSON string into an instance of VatSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of VatSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`input_tax_items`)) {
        self$`input_tax_items` <- ApiClient$new()$deserializeObj(this_object$`input_tax_items`, "array[VatItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`output_tax_items`)) {
        self$`output_tax_items` <- ApiClient$new()$deserializeObj(this_object$`output_tax_items`, "array[VatItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`total_input_tax`)) {
        self$`total_input_tax` <- this_object$`total_input_tax`
      }
      if (!is.null(this_object$`total_output_tax`)) {
        self$`total_output_tax` <- this_object$`total_output_tax`
      }
      if (!is.null(this_object$`vat_due`)) {
        self$`vat_due` <- this_object$`vat_due`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VatSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VatSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of VatSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`input_tax_items` <- ApiClient$new()$deserializeObj(this_object$`input_tax_items`, "array[VatItem]", loadNamespace("openapi"))
      self$`output_tax_items` <- ApiClient$new()$deserializeObj(this_object$`output_tax_items`, "array[VatItem]", loadNamespace("openapi"))
      self$`total_input_tax` <- this_object$`total_input_tax`
      self$`total_output_tax` <- this_object$`total_output_tax`
      self$`vat_due` <- this_object$`vat_due`
      self
    },

    #' @description
    #' Validate JSON input with respect to VatSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `input_tax_items`
      if (!is.null(input_json$`input_tax_items`)) {
        stopifnot(is.vector(input_json$`input_tax_items`), length(input_json$`input_tax_items`) != 0)
        tmp <- sapply(input_json$`input_tax_items`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VatSummary: the required field `input_tax_items` is missing."))
      }
      # check the required field `output_tax_items`
      if (!is.null(input_json$`output_tax_items`)) {
        stopifnot(is.vector(input_json$`output_tax_items`), length(input_json$`output_tax_items`) != 0)
        tmp <- sapply(input_json$`output_tax_items`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VatSummary: the required field `output_tax_items` is missing."))
      }
      # check the required field `total_input_tax`
      if (!is.null(input_json$`total_input_tax`)) {
        if (!(is.character(input_json$`total_input_tax`) && length(input_json$`total_input_tax`) == 1)) {
          stop(paste("Error! Invalid data for `total_input_tax`. Must be a string:", input_json$`total_input_tax`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VatSummary: the required field `total_input_tax` is missing."))
      }
      # check the required field `total_output_tax`
      if (!is.null(input_json$`total_output_tax`)) {
        if (!(is.character(input_json$`total_output_tax`) && length(input_json$`total_output_tax`) == 1)) {
          stop(paste("Error! Invalid data for `total_output_tax`. Must be a string:", input_json$`total_output_tax`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VatSummary: the required field `total_output_tax` is missing."))
      }
      # check the required field `vat_due`
      if (!is.null(input_json$`vat_due`)) {
        if (!(is.character(input_json$`vat_due`) && length(input_json$`vat_due`) == 1)) {
          stop(paste("Error! Invalid data for `vat_due`. Must be a string:", input_json$`vat_due`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VatSummary: the required field `vat_due` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VatSummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `input_tax_items` is null
      if (is.null(self$`input_tax_items`)) {
        return(FALSE)
      }

      # check if the required `output_tax_items` is null
      if (is.null(self$`output_tax_items`)) {
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

      # check if the required `vat_due` is null
      if (is.null(self$`vat_due`)) {
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
      # check if the required `input_tax_items` is null
      if (is.null(self$`input_tax_items`)) {
        invalid_fields["input_tax_items"] <- "Non-nullable required field `input_tax_items` cannot be null."
      }

      # check if the required `output_tax_items` is null
      if (is.null(self$`output_tax_items`)) {
        invalid_fields["output_tax_items"] <- "Non-nullable required field `output_tax_items` cannot be null."
      }

      # check if the required `total_input_tax` is null
      if (is.null(self$`total_input_tax`)) {
        invalid_fields["total_input_tax"] <- "Non-nullable required field `total_input_tax` cannot be null."
      }

      # check if the required `total_output_tax` is null
      if (is.null(self$`total_output_tax`)) {
        invalid_fields["total_output_tax"] <- "Non-nullable required field `total_output_tax` cannot be null."
      }

      # check if the required `vat_due` is null
      if (is.null(self$`vat_due`)) {
        invalid_fields["vat_due"] <- "Non-nullable required field `vat_due` cannot be null."
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
# VatSummary$unlock()
#
## Below is an example to define the print function
# VatSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VatSummary$lock()

