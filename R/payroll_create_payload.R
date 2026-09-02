#' Create a new PayrollCreatePayload
#'
#' @description
#' PayrollCreatePayload Class
#'
#' @docType class
#' @title PayrollCreatePayload
#' @description PayrollCreatePayload Class
#' @format An \code{R6Class} generator object
#' @field employee_ids  list(character)
#' @field extra_payments  list(\link{ExtraPayment}) [optional]
#' @field month  integer
#' @field year  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PayrollCreatePayload <- R6::R6Class(
  "PayrollCreatePayload",
  public = list(
    `employee_ids` = NULL,
    `extra_payments` = NULL,
    `month` = NULL,
    `year` = NULL,

    #' @description
    #' Initialize a new PayrollCreatePayload class.
    #'
    #' @param employee_ids employee_ids
    #' @param month month
    #' @param year year
    #' @param extra_payments extra_payments
    #' @param ... Other optional arguments.
    initialize = function(`employee_ids`, `month`, `year`, `extra_payments` = NULL, ...) {
      if (!missing(`employee_ids`)) {
        stopifnot(is.vector(`employee_ids`), length(`employee_ids`) != 0)
        sapply(`employee_ids`, function(x) stopifnot(is.character(x)))
        self$`employee_ids` <- `employee_ids`
      }
      if (!missing(`month`)) {
        if (!(is.numeric(`month`) && length(`month`) == 1)) {
          stop(paste("Error! Invalid data for `month`. Must be an integer:", `month`))
        }
        self$`month` <- `month`
      }
      if (!missing(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
      }
      if (!is.null(`extra_payments`)) {
        stopifnot(is.vector(`extra_payments`), length(`extra_payments`) != 0)
        sapply(`extra_payments`, function(x) stopifnot(R6::is.R6(x)))
        self$`extra_payments` <- `extra_payments`
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
    #' @return PayrollCreatePayload as a base R list.
    #' @examples
    #' # convert array of PayrollCreatePayload (x) to a data frame
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
    #' Convert PayrollCreatePayload to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PayrollCreatePayloadObject <- list()
      if (!is.null(self$`employee_ids`)) {
        PayrollCreatePayloadObject[["employee_ids"]] <-
          self$`employee_ids`
      }
      if (!is.null(self$`extra_payments`)) {
        PayrollCreatePayloadObject[["extra_payments"]] <-
          self$extractSimpleType(self$`extra_payments`)
      }
      if (!is.null(self$`month`)) {
        PayrollCreatePayloadObject[["month"]] <-
          self$`month`
      }
      if (!is.null(self$`year`)) {
        PayrollCreatePayloadObject[["year"]] <-
          self$`year`
      }
      return(PayrollCreatePayloadObject)
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
    #' Deserialize JSON string into an instance of PayrollCreatePayload
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollCreatePayload
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`employee_ids`)) {
        self$`employee_ids` <- ApiClient$new()$deserializeObj(this_object$`employee_ids`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`extra_payments`)) {
        self$`extra_payments` <- ApiClient$new()$deserializeObj(this_object$`extra_payments`, "array[ExtraPayment]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`month`)) {
        self$`month` <- this_object$`month`
      }
      if (!is.null(this_object$`year`)) {
        self$`year` <- this_object$`year`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PayrollCreatePayload in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PayrollCreatePayload
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollCreatePayload
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`employee_ids` <- ApiClient$new()$deserializeObj(this_object$`employee_ids`, "array[character]", loadNamespace("openapi"))
      self$`extra_payments` <- ApiClient$new()$deserializeObj(this_object$`extra_payments`, "array[ExtraPayment]", loadNamespace("openapi"))
      self$`month` <- this_object$`month`
      self$`year` <- this_object$`year`
      self
    },

    #' @description
    #' Validate JSON input with respect to PayrollCreatePayload and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `employee_ids`
      if (!is.null(input_json$`employee_ids`)) {
        stopifnot(is.vector(input_json$`employee_ids`), length(input_json$`employee_ids`) != 0)
        tmp <- sapply(input_json$`employee_ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollCreatePayload: the required field `employee_ids` is missing."))
      }
      # check the required field `month`
      if (!is.null(input_json$`month`)) {
        if (!(is.numeric(input_json$`month`) && length(input_json$`month`) == 1)) {
          stop(paste("Error! Invalid data for `month`. Must be an integer:", input_json$`month`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollCreatePayload: the required field `month` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollCreatePayload: the required field `year` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PayrollCreatePayload
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `employee_ids` is null
      if (is.null(self$`employee_ids`)) {
        return(FALSE)
      }

      # check if the required `month` is null
      if (is.null(self$`month`)) {
        return(FALSE)
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
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
      # check if the required `employee_ids` is null
      if (is.null(self$`employee_ids`)) {
        invalid_fields["employee_ids"] <- "Non-nullable required field `employee_ids` cannot be null."
      }

      # check if the required `month` is null
      if (is.null(self$`month`)) {
        invalid_fields["month"] <- "Non-nullable required field `month` cannot be null."
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
        invalid_fields["year"] <- "Non-nullable required field `year` cannot be null."
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
# PayrollCreatePayload$unlock()
#
## Below is an example to define the print function
# PayrollCreatePayload$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PayrollCreatePayload$lock()

