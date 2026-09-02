#' Create a new CouponValidation
#'
#' @description
#' CouponValidation Class
#'
#' @docType class
#' @title CouponValidation
#' @description CouponValidation Class
#' @format An \code{R6Class} generator object
#' @field code  character
#' @field discount_type  character
#' @field discount_value  character
#' @field discounted_amount  character
#' @field max_discount_amount  character [optional]
#' @field reason  character [optional]
#' @field valid  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CouponValidation <- R6::R6Class(
  "CouponValidation",
  public = list(
    `code` = NULL,
    `discount_type` = NULL,
    `discount_value` = NULL,
    `discounted_amount` = NULL,
    `max_discount_amount` = NULL,
    `reason` = NULL,
    `valid` = NULL,

    #' @description
    #' Initialize a new CouponValidation class.
    #'
    #' @param code code
    #' @param discount_type discount_type
    #' @param discount_value discount_value
    #' @param discounted_amount discounted_amount
    #' @param valid valid
    #' @param max_discount_amount max_discount_amount
    #' @param reason reason
    #' @param ... Other optional arguments.
    initialize = function(`code`, `discount_type`, `discount_value`, `discounted_amount`, `valid`, `max_discount_amount` = NULL, `reason` = NULL, ...) {
      if (!missing(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!missing(`discount_type`)) {
        if (!(is.character(`discount_type`) && length(`discount_type`) == 1)) {
          stop(paste("Error! Invalid data for `discount_type`. Must be a string:", `discount_type`))
        }
        self$`discount_type` <- `discount_type`
      }
      if (!missing(`discount_value`)) {
        if (!(is.character(`discount_value`) && length(`discount_value`) == 1)) {
          stop(paste("Error! Invalid data for `discount_value`. Must be a string:", `discount_value`))
        }
        self$`discount_value` <- `discount_value`
      }
      if (!missing(`discounted_amount`)) {
        if (!(is.character(`discounted_amount`) && length(`discounted_amount`) == 1)) {
          stop(paste("Error! Invalid data for `discounted_amount`. Must be a string:", `discounted_amount`))
        }
        self$`discounted_amount` <- `discounted_amount`
      }
      if (!missing(`valid`)) {
        if (!(is.logical(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", `valid`))
        }
        self$`valid` <- `valid`
      }
      if (!is.null(`max_discount_amount`)) {
        if (!(is.character(`max_discount_amount`) && length(`max_discount_amount`) == 1)) {
          stop(paste("Error! Invalid data for `max_discount_amount`. Must be a string:", `max_discount_amount`))
        }
        self$`max_discount_amount` <- `max_discount_amount`
      }
      if (!is.null(`reason`)) {
        if (!(is.character(`reason`) && length(`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", `reason`))
        }
        self$`reason` <- `reason`
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
    #' @return CouponValidation as a base R list.
    #' @examples
    #' # convert array of CouponValidation (x) to a data frame
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
    #' Convert CouponValidation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CouponValidationObject <- list()
      if (!is.null(self$`code`)) {
        CouponValidationObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`discount_type`)) {
        CouponValidationObject[["discount_type"]] <-
          self$`discount_type`
      }
      if (!is.null(self$`discount_value`)) {
        CouponValidationObject[["discount_value"]] <-
          self$`discount_value`
      }
      if (!is.null(self$`discounted_amount`)) {
        CouponValidationObject[["discounted_amount"]] <-
          self$`discounted_amount`
      }
      if (!is.null(self$`max_discount_amount`)) {
        CouponValidationObject[["max_discount_amount"]] <-
          self$`max_discount_amount`
      }
      if (!is.null(self$`reason`)) {
        CouponValidationObject[["reason"]] <-
          self$`reason`
      }
      if (!is.null(self$`valid`)) {
        CouponValidationObject[["valid"]] <-
          self$`valid`
      }
      return(CouponValidationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CouponValidation
    #'
    #' @param input_json the JSON input
    #' @return the instance of CouponValidation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`discount_type`)) {
        self$`discount_type` <- this_object$`discount_type`
      }
      if (!is.null(this_object$`discount_value`)) {
        self$`discount_value` <- this_object$`discount_value`
      }
      if (!is.null(this_object$`discounted_amount`)) {
        self$`discounted_amount` <- this_object$`discounted_amount`
      }
      if (!is.null(this_object$`max_discount_amount`)) {
        self$`max_discount_amount` <- this_object$`max_discount_amount`
      }
      if (!is.null(this_object$`reason`)) {
        self$`reason` <- this_object$`reason`
      }
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CouponValidation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CouponValidation
    #'
    #' @param input_json the JSON input
    #' @return the instance of CouponValidation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`code` <- this_object$`code`
      self$`discount_type` <- this_object$`discount_type`
      self$`discount_value` <- this_object$`discount_value`
      self$`discounted_amount` <- this_object$`discounted_amount`
      self$`max_discount_amount` <- this_object$`max_discount_amount`
      self$`reason` <- this_object$`reason`
      self$`valid` <- this_object$`valid`
      self
    },

    #' @description
    #' Validate JSON input with respect to CouponValidation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `code`
      if (!is.null(input_json$`code`)) {
        if (!(is.character(input_json$`code`) && length(input_json$`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", input_json$`code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CouponValidation: the required field `code` is missing."))
      }
      # check the required field `discount_type`
      if (!is.null(input_json$`discount_type`)) {
        if (!(is.character(input_json$`discount_type`) && length(input_json$`discount_type`) == 1)) {
          stop(paste("Error! Invalid data for `discount_type`. Must be a string:", input_json$`discount_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CouponValidation: the required field `discount_type` is missing."))
      }
      # check the required field `discount_value`
      if (!is.null(input_json$`discount_value`)) {
        if (!(is.character(input_json$`discount_value`) && length(input_json$`discount_value`) == 1)) {
          stop(paste("Error! Invalid data for `discount_value`. Must be a string:", input_json$`discount_value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CouponValidation: the required field `discount_value` is missing."))
      }
      # check the required field `discounted_amount`
      if (!is.null(input_json$`discounted_amount`)) {
        if (!(is.character(input_json$`discounted_amount`) && length(input_json$`discounted_amount`) == 1)) {
          stop(paste("Error! Invalid data for `discounted_amount`. Must be a string:", input_json$`discounted_amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CouponValidation: the required field `discounted_amount` is missing."))
      }
      # check the required field `valid`
      if (!is.null(input_json$`valid`)) {
        if (!(is.logical(input_json$`valid`) && length(input_json$`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be a boolean:", input_json$`valid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CouponValidation: the required field `valid` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CouponValidation
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `code` is null
      if (is.null(self$`code`)) {
        return(FALSE)
      }

      # check if the required `discount_type` is null
      if (is.null(self$`discount_type`)) {
        return(FALSE)
      }

      # check if the required `discount_value` is null
      if (is.null(self$`discount_value`)) {
        return(FALSE)
      }

      # check if the required `discounted_amount` is null
      if (is.null(self$`discounted_amount`)) {
        return(FALSE)
      }

      # check if the required `valid` is null
      if (is.null(self$`valid`)) {
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
      # check if the required `code` is null
      if (is.null(self$`code`)) {
        invalid_fields["code"] <- "Non-nullable required field `code` cannot be null."
      }

      # check if the required `discount_type` is null
      if (is.null(self$`discount_type`)) {
        invalid_fields["discount_type"] <- "Non-nullable required field `discount_type` cannot be null."
      }

      # check if the required `discount_value` is null
      if (is.null(self$`discount_value`)) {
        invalid_fields["discount_value"] <- "Non-nullable required field `discount_value` cannot be null."
      }

      # check if the required `discounted_amount` is null
      if (is.null(self$`discounted_amount`)) {
        invalid_fields["discounted_amount"] <- "Non-nullable required field `discounted_amount` cannot be null."
      }

      # check if the required `valid` is null
      if (is.null(self$`valid`)) {
        invalid_fields["valid"] <- "Non-nullable required field `valid` cannot be null."
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
# CouponValidation$unlock()
#
## Below is an example to define the print function
# CouponValidation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CouponValidation$lock()

