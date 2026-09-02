#' Create a new SuitabilityResult
#'
#' @description
#' SuitabilityResult Class
#'
#' @docType class
#' @title SuitabilityResult
#' @description SuitabilityResult Class
#' @format An \code{R6Class} generator object
#' @field methods  list(\link{MethodSuitability})
#' @field recommended_box  \link{BoxFit} [optional]
#' @field requires_insurance  character
#' @field total_value  character
#' @field total_weight_kg  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SuitabilityResult <- R6::R6Class(
  "SuitabilityResult",
  public = list(
    `methods` = NULL,
    `recommended_box` = NULL,
    `requires_insurance` = NULL,
    `total_value` = NULL,
    `total_weight_kg` = NULL,

    #' @description
    #' Initialize a new SuitabilityResult class.
    #'
    #' @param methods methods
    #' @param requires_insurance requires_insurance
    #' @param total_value total_value
    #' @param total_weight_kg total_weight_kg
    #' @param recommended_box recommended_box
    #' @param ... Other optional arguments.
    initialize = function(`methods`, `requires_insurance`, `total_value`, `total_weight_kg`, `recommended_box` = NULL, ...) {
      if (!missing(`methods`)) {
        stopifnot(is.vector(`methods`), length(`methods`) != 0)
        sapply(`methods`, function(x) stopifnot(R6::is.R6(x)))
        self$`methods` <- `methods`
      }
      if (!missing(`requires_insurance`)) {
        if (!(is.logical(`requires_insurance`) && length(`requires_insurance`) == 1)) {
          stop(paste("Error! Invalid data for `requires_insurance`. Must be a boolean:", `requires_insurance`))
        }
        self$`requires_insurance` <- `requires_insurance`
      }
      if (!missing(`total_value`)) {
        if (!(is.character(`total_value`) && length(`total_value`) == 1)) {
          stop(paste("Error! Invalid data for `total_value`. Must be a string:", `total_value`))
        }
        self$`total_value` <- `total_value`
      }
      if (!missing(`total_weight_kg`)) {
        if (!(is.numeric(`total_weight_kg`) && length(`total_weight_kg`) == 1)) {
          stop(paste("Error! Invalid data for `total_weight_kg`. Must be a number:", `total_weight_kg`))
        }
        self$`total_weight_kg` <- `total_weight_kg`
      }
      if (!is.null(`recommended_box`)) {
        stopifnot(R6::is.R6(`recommended_box`))
        self$`recommended_box` <- `recommended_box`
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
    #' @return SuitabilityResult as a base R list.
    #' @examples
    #' # convert array of SuitabilityResult (x) to a data frame
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
    #' Convert SuitabilityResult to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SuitabilityResultObject <- list()
      if (!is.null(self$`methods`)) {
        SuitabilityResultObject[["methods"]] <-
          self$extractSimpleType(self$`methods`)
      }
      if (!is.null(self$`recommended_box`)) {
        SuitabilityResultObject[["recommended_box"]] <-
          self$extractSimpleType(self$`recommended_box`)
      }
      if (!is.null(self$`requires_insurance`)) {
        SuitabilityResultObject[["requires_insurance"]] <-
          self$`requires_insurance`
      }
      if (!is.null(self$`total_value`)) {
        SuitabilityResultObject[["total_value"]] <-
          self$`total_value`
      }
      if (!is.null(self$`total_weight_kg`)) {
        SuitabilityResultObject[["total_weight_kg"]] <-
          self$`total_weight_kg`
      }
      return(SuitabilityResultObject)
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
    #' Deserialize JSON string into an instance of SuitabilityResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of SuitabilityResult
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`methods`)) {
        self$`methods` <- ApiClient$new()$deserializeObj(this_object$`methods`, "array[MethodSuitability]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`recommended_box`)) {
        `recommended_box_object` <- BoxFit$new()
        `recommended_box_object`$fromJSON(jsonlite::toJSON(this_object$`recommended_box`, auto_unbox = TRUE, digits = NA))
        self$`recommended_box` <- `recommended_box_object`
      }
      if (!is.null(this_object$`requires_insurance`)) {
        self$`requires_insurance` <- this_object$`requires_insurance`
      }
      if (!is.null(this_object$`total_value`)) {
        self$`total_value` <- this_object$`total_value`
      }
      if (!is.null(this_object$`total_weight_kg`)) {
        self$`total_weight_kg` <- this_object$`total_weight_kg`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SuitabilityResult in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SuitabilityResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of SuitabilityResult
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`methods` <- ApiClient$new()$deserializeObj(this_object$`methods`, "array[MethodSuitability]", loadNamespace("openapi"))
      self$`recommended_box` <- BoxFit$new()$fromJSON(jsonlite::toJSON(this_object$`recommended_box`, auto_unbox = TRUE, digits = NA))
      self$`requires_insurance` <- this_object$`requires_insurance`
      self$`total_value` <- this_object$`total_value`
      self$`total_weight_kg` <- this_object$`total_weight_kg`
      self
    },

    #' @description
    #' Validate JSON input with respect to SuitabilityResult and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `methods`
      if (!is.null(input_json$`methods`)) {
        stopifnot(is.vector(input_json$`methods`), length(input_json$`methods`) != 0)
        tmp <- sapply(input_json$`methods`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SuitabilityResult: the required field `methods` is missing."))
      }
      # check the required field `requires_insurance`
      if (!is.null(input_json$`requires_insurance`)) {
        if (!(is.logical(input_json$`requires_insurance`) && length(input_json$`requires_insurance`) == 1)) {
          stop(paste("Error! Invalid data for `requires_insurance`. Must be a boolean:", input_json$`requires_insurance`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SuitabilityResult: the required field `requires_insurance` is missing."))
      }
      # check the required field `total_value`
      if (!is.null(input_json$`total_value`)) {
        if (!(is.character(input_json$`total_value`) && length(input_json$`total_value`) == 1)) {
          stop(paste("Error! Invalid data for `total_value`. Must be a string:", input_json$`total_value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SuitabilityResult: the required field `total_value` is missing."))
      }
      # check the required field `total_weight_kg`
      if (!is.null(input_json$`total_weight_kg`)) {
        if (!(is.numeric(input_json$`total_weight_kg`) && length(input_json$`total_weight_kg`) == 1)) {
          stop(paste("Error! Invalid data for `total_weight_kg`. Must be a number:", input_json$`total_weight_kg`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SuitabilityResult: the required field `total_weight_kg` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SuitabilityResult
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `methods` is null
      if (is.null(self$`methods`)) {
        return(FALSE)
      }

      # check if the required `requires_insurance` is null
      if (is.null(self$`requires_insurance`)) {
        return(FALSE)
      }

      # check if the required `total_value` is null
      if (is.null(self$`total_value`)) {
        return(FALSE)
      }

      # check if the required `total_weight_kg` is null
      if (is.null(self$`total_weight_kg`)) {
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
      # check if the required `methods` is null
      if (is.null(self$`methods`)) {
        invalid_fields["methods"] <- "Non-nullable required field `methods` cannot be null."
      }

      # check if the required `requires_insurance` is null
      if (is.null(self$`requires_insurance`)) {
        invalid_fields["requires_insurance"] <- "Non-nullable required field `requires_insurance` cannot be null."
      }

      # check if the required `total_value` is null
      if (is.null(self$`total_value`)) {
        invalid_fields["total_value"] <- "Non-nullable required field `total_value` cannot be null."
      }

      # check if the required `total_weight_kg` is null
      if (is.null(self$`total_weight_kg`)) {
        invalid_fields["total_weight_kg"] <- "Non-nullable required field `total_weight_kg` cannot be null."
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
# SuitabilityResult$unlock()
#
## Below is an example to define the print function
# SuitabilityResult$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SuitabilityResult$lock()

