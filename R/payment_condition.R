#' Create a new PaymentCondition
#'
#' @description
#' PaymentCondition Class
#'
#' @docType class
#' @title PaymentCondition
#' @description PaymentCondition Class
#' @format An \code{R6Class} generator object
#' @field discount_days  integer
#' @field discount_percentage  numeric
#' @field id  character
#' @field name  character
#' @field payment_term_days  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PaymentCondition <- R6::R6Class(
  "PaymentCondition",
  public = list(
    `discount_days` = NULL,
    `discount_percentage` = NULL,
    `id` = NULL,
    `name` = NULL,
    `payment_term_days` = NULL,

    #' @description
    #' Initialize a new PaymentCondition class.
    #'
    #' @param discount_days discount_days
    #' @param discount_percentage discount_percentage
    #' @param id id
    #' @param name name
    #' @param payment_term_days payment_term_days
    #' @param ... Other optional arguments.
    initialize = function(`discount_days`, `discount_percentage`, `id`, `name`, `payment_term_days`, ...) {
      if (!missing(`discount_days`)) {
        if (!(is.numeric(`discount_days`) && length(`discount_days`) == 1)) {
          stop(paste("Error! Invalid data for `discount_days`. Must be an integer:", `discount_days`))
        }
        self$`discount_days` <- `discount_days`
      }
      if (!missing(`discount_percentage`)) {
        if (!(is.numeric(`discount_percentage`) && length(`discount_percentage`) == 1)) {
          stop(paste("Error! Invalid data for `discount_percentage`. Must be a number:", `discount_percentage`))
        }
        self$`discount_percentage` <- `discount_percentage`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`payment_term_days`)) {
        if (!(is.numeric(`payment_term_days`) && length(`payment_term_days`) == 1)) {
          stop(paste("Error! Invalid data for `payment_term_days`. Must be an integer:", `payment_term_days`))
        }
        self$`payment_term_days` <- `payment_term_days`
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
    #' @return PaymentCondition as a base R list.
    #' @examples
    #' # convert array of PaymentCondition (x) to a data frame
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
    #' Convert PaymentCondition to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PaymentConditionObject <- list()
      if (!is.null(self$`discount_days`)) {
        PaymentConditionObject[["discount_days"]] <-
          self$`discount_days`
      }
      if (!is.null(self$`discount_percentage`)) {
        PaymentConditionObject[["discount_percentage"]] <-
          self$`discount_percentage`
      }
      if (!is.null(self$`id`)) {
        PaymentConditionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        PaymentConditionObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`payment_term_days`)) {
        PaymentConditionObject[["payment_term_days"]] <-
          self$`payment_term_days`
      }
      return(PaymentConditionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PaymentCondition
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentCondition
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`discount_days`)) {
        self$`discount_days` <- this_object$`discount_days`
      }
      if (!is.null(this_object$`discount_percentage`)) {
        self$`discount_percentage` <- this_object$`discount_percentage`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`payment_term_days`)) {
        self$`payment_term_days` <- this_object$`payment_term_days`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PaymentCondition in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PaymentCondition
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentCondition
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`discount_days` <- this_object$`discount_days`
      self$`discount_percentage` <- this_object$`discount_percentage`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`payment_term_days` <- this_object$`payment_term_days`
      self
    },

    #' @description
    #' Validate JSON input with respect to PaymentCondition and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `discount_days`
      if (!is.null(input_json$`discount_days`)) {
        if (!(is.numeric(input_json$`discount_days`) && length(input_json$`discount_days`) == 1)) {
          stop(paste("Error! Invalid data for `discount_days`. Must be an integer:", input_json$`discount_days`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PaymentCondition: the required field `discount_days` is missing."))
      }
      # check the required field `discount_percentage`
      if (!is.null(input_json$`discount_percentage`)) {
        if (!(is.numeric(input_json$`discount_percentage`) && length(input_json$`discount_percentage`) == 1)) {
          stop(paste("Error! Invalid data for `discount_percentage`. Must be a number:", input_json$`discount_percentage`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PaymentCondition: the required field `discount_percentage` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PaymentCondition: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PaymentCondition: the required field `name` is missing."))
      }
      # check the required field `payment_term_days`
      if (!is.null(input_json$`payment_term_days`)) {
        if (!(is.numeric(input_json$`payment_term_days`) && length(input_json$`payment_term_days`) == 1)) {
          stop(paste("Error! Invalid data for `payment_term_days`. Must be an integer:", input_json$`payment_term_days`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PaymentCondition: the required field `payment_term_days` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PaymentCondition
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `discount_days` is null
      if (is.null(self$`discount_days`)) {
        return(FALSE)
      }

      # check if the required `discount_percentage` is null
      if (is.null(self$`discount_percentage`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `payment_term_days` is null
      if (is.null(self$`payment_term_days`)) {
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
      # check if the required `discount_days` is null
      if (is.null(self$`discount_days`)) {
        invalid_fields["discount_days"] <- "Non-nullable required field `discount_days` cannot be null."
      }

      # check if the required `discount_percentage` is null
      if (is.null(self$`discount_percentage`)) {
        invalid_fields["discount_percentage"] <- "Non-nullable required field `discount_percentage` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `payment_term_days` is null
      if (is.null(self$`payment_term_days`)) {
        invalid_fields["payment_term_days"] <- "Non-nullable required field `payment_term_days` cannot be null."
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
# PaymentCondition$unlock()
#
## Below is an example to define the print function
# PaymentCondition$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PaymentCondition$lock()

