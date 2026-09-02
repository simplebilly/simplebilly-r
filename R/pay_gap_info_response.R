#' Create a new PayGapInfoResponse
#'
#' @description
#' PayGapInfoResponse Class
#'
#' @docType class
#' @title PayGapInfoResponse
#' @description PayGapInfoResponse Class
#' @format An \code{R6Class} generator object
#' @field employee_id  character
#' @field first_name  character
#' @field gender  character [optional]
#' @field group_median_hourly  numeric [optional]
#' @field group_median_monthly  numeric [optional]
#' @field group_size  integer
#' @field job_title  character
#' @field last_name  character
#' @field overall_median_hourly  numeric [optional]
#' @field own_hourly_gross  numeric [optional]
#' @field own_monthly_gross  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PayGapInfoResponse <- R6::R6Class(
  "PayGapInfoResponse",
  public = list(
    `employee_id` = NULL,
    `first_name` = NULL,
    `gender` = NULL,
    `group_median_hourly` = NULL,
    `group_median_monthly` = NULL,
    `group_size` = NULL,
    `job_title` = NULL,
    `last_name` = NULL,
    `overall_median_hourly` = NULL,
    `own_hourly_gross` = NULL,
    `own_monthly_gross` = NULL,

    #' @description
    #' Initialize a new PayGapInfoResponse class.
    #'
    #' @param employee_id employee_id
    #' @param first_name first_name
    #' @param group_size group_size
    #' @param job_title job_title
    #' @param last_name last_name
    #' @param gender gender
    #' @param group_median_hourly group_median_hourly
    #' @param group_median_monthly group_median_monthly
    #' @param overall_median_hourly overall_median_hourly
    #' @param own_hourly_gross own_hourly_gross
    #' @param own_monthly_gross own_monthly_gross
    #' @param ... Other optional arguments.
    initialize = function(`employee_id`, `first_name`, `group_size`, `job_title`, `last_name`, `gender` = NULL, `group_median_hourly` = NULL, `group_median_monthly` = NULL, `overall_median_hourly` = NULL, `own_hourly_gross` = NULL, `own_monthly_gross` = NULL, ...) {
      if (!missing(`employee_id`)) {
        if (!(is.character(`employee_id`) && length(`employee_id`) == 1)) {
          stop(paste("Error! Invalid data for `employee_id`. Must be a string:", `employee_id`))
        }
        self$`employee_id` <- `employee_id`
      }
      if (!missing(`first_name`)) {
        if (!(is.character(`first_name`) && length(`first_name`) == 1)) {
          stop(paste("Error! Invalid data for `first_name`. Must be a string:", `first_name`))
        }
        self$`first_name` <- `first_name`
      }
      if (!missing(`group_size`)) {
        if (!(is.numeric(`group_size`) && length(`group_size`) == 1)) {
          stop(paste("Error! Invalid data for `group_size`. Must be an integer:", `group_size`))
        }
        self$`group_size` <- `group_size`
      }
      if (!missing(`job_title`)) {
        if (!(is.character(`job_title`) && length(`job_title`) == 1)) {
          stop(paste("Error! Invalid data for `job_title`. Must be a string:", `job_title`))
        }
        self$`job_title` <- `job_title`
      }
      if (!missing(`last_name`)) {
        if (!(is.character(`last_name`) && length(`last_name`) == 1)) {
          stop(paste("Error! Invalid data for `last_name`. Must be a string:", `last_name`))
        }
        self$`last_name` <- `last_name`
      }
      if (!is.null(`gender`)) {
        if (!(is.character(`gender`) && length(`gender`) == 1)) {
          stop(paste("Error! Invalid data for `gender`. Must be a string:", `gender`))
        }
        self$`gender` <- `gender`
      }
      if (!is.null(`group_median_hourly`)) {
        if (!(is.numeric(`group_median_hourly`) && length(`group_median_hourly`) == 1)) {
          stop(paste("Error! Invalid data for `group_median_hourly`. Must be a number:", `group_median_hourly`))
        }
        self$`group_median_hourly` <- `group_median_hourly`
      }
      if (!is.null(`group_median_monthly`)) {
        if (!(is.numeric(`group_median_monthly`) && length(`group_median_monthly`) == 1)) {
          stop(paste("Error! Invalid data for `group_median_monthly`. Must be a number:", `group_median_monthly`))
        }
        self$`group_median_monthly` <- `group_median_monthly`
      }
      if (!is.null(`overall_median_hourly`)) {
        if (!(is.numeric(`overall_median_hourly`) && length(`overall_median_hourly`) == 1)) {
          stop(paste("Error! Invalid data for `overall_median_hourly`. Must be a number:", `overall_median_hourly`))
        }
        self$`overall_median_hourly` <- `overall_median_hourly`
      }
      if (!is.null(`own_hourly_gross`)) {
        if (!(is.numeric(`own_hourly_gross`) && length(`own_hourly_gross`) == 1)) {
          stop(paste("Error! Invalid data for `own_hourly_gross`. Must be a number:", `own_hourly_gross`))
        }
        self$`own_hourly_gross` <- `own_hourly_gross`
      }
      if (!is.null(`own_monthly_gross`)) {
        if (!(is.numeric(`own_monthly_gross`) && length(`own_monthly_gross`) == 1)) {
          stop(paste("Error! Invalid data for `own_monthly_gross`. Must be a number:", `own_monthly_gross`))
        }
        self$`own_monthly_gross` <- `own_monthly_gross`
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
    #' @return PayGapInfoResponse as a base R list.
    #' @examples
    #' # convert array of PayGapInfoResponse (x) to a data frame
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
    #' Convert PayGapInfoResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PayGapInfoResponseObject <- list()
      if (!is.null(self$`employee_id`)) {
        PayGapInfoResponseObject[["employee_id"]] <-
          self$`employee_id`
      }
      if (!is.null(self$`first_name`)) {
        PayGapInfoResponseObject[["first_name"]] <-
          self$`first_name`
      }
      if (!is.null(self$`gender`)) {
        PayGapInfoResponseObject[["gender"]] <-
          self$`gender`
      }
      if (!is.null(self$`group_median_hourly`)) {
        PayGapInfoResponseObject[["group_median_hourly"]] <-
          self$`group_median_hourly`
      }
      if (!is.null(self$`group_median_monthly`)) {
        PayGapInfoResponseObject[["group_median_monthly"]] <-
          self$`group_median_monthly`
      }
      if (!is.null(self$`group_size`)) {
        PayGapInfoResponseObject[["group_size"]] <-
          self$`group_size`
      }
      if (!is.null(self$`job_title`)) {
        PayGapInfoResponseObject[["job_title"]] <-
          self$`job_title`
      }
      if (!is.null(self$`last_name`)) {
        PayGapInfoResponseObject[["last_name"]] <-
          self$`last_name`
      }
      if (!is.null(self$`overall_median_hourly`)) {
        PayGapInfoResponseObject[["overall_median_hourly"]] <-
          self$`overall_median_hourly`
      }
      if (!is.null(self$`own_hourly_gross`)) {
        PayGapInfoResponseObject[["own_hourly_gross"]] <-
          self$`own_hourly_gross`
      }
      if (!is.null(self$`own_monthly_gross`)) {
        PayGapInfoResponseObject[["own_monthly_gross"]] <-
          self$`own_monthly_gross`
      }
      return(PayGapInfoResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PayGapInfoResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayGapInfoResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`employee_id`)) {
        self$`employee_id` <- this_object$`employee_id`
      }
      if (!is.null(this_object$`first_name`)) {
        self$`first_name` <- this_object$`first_name`
      }
      if (!is.null(this_object$`gender`)) {
        self$`gender` <- this_object$`gender`
      }
      if (!is.null(this_object$`group_median_hourly`)) {
        self$`group_median_hourly` <- this_object$`group_median_hourly`
      }
      if (!is.null(this_object$`group_median_monthly`)) {
        self$`group_median_monthly` <- this_object$`group_median_monthly`
      }
      if (!is.null(this_object$`group_size`)) {
        self$`group_size` <- this_object$`group_size`
      }
      if (!is.null(this_object$`job_title`)) {
        self$`job_title` <- this_object$`job_title`
      }
      if (!is.null(this_object$`last_name`)) {
        self$`last_name` <- this_object$`last_name`
      }
      if (!is.null(this_object$`overall_median_hourly`)) {
        self$`overall_median_hourly` <- this_object$`overall_median_hourly`
      }
      if (!is.null(this_object$`own_hourly_gross`)) {
        self$`own_hourly_gross` <- this_object$`own_hourly_gross`
      }
      if (!is.null(this_object$`own_monthly_gross`)) {
        self$`own_monthly_gross` <- this_object$`own_monthly_gross`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PayGapInfoResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PayGapInfoResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayGapInfoResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`employee_id` <- this_object$`employee_id`
      self$`first_name` <- this_object$`first_name`
      self$`gender` <- this_object$`gender`
      self$`group_median_hourly` <- this_object$`group_median_hourly`
      self$`group_median_monthly` <- this_object$`group_median_monthly`
      self$`group_size` <- this_object$`group_size`
      self$`job_title` <- this_object$`job_title`
      self$`last_name` <- this_object$`last_name`
      self$`overall_median_hourly` <- this_object$`overall_median_hourly`
      self$`own_hourly_gross` <- this_object$`own_hourly_gross`
      self$`own_monthly_gross` <- this_object$`own_monthly_gross`
      self
    },

    #' @description
    #' Validate JSON input with respect to PayGapInfoResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `employee_id`
      if (!is.null(input_json$`employee_id`)) {
        if (!(is.character(input_json$`employee_id`) && length(input_json$`employee_id`) == 1)) {
          stop(paste("Error! Invalid data for `employee_id`. Must be a string:", input_json$`employee_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayGapInfoResponse: the required field `employee_id` is missing."))
      }
      # check the required field `first_name`
      if (!is.null(input_json$`first_name`)) {
        if (!(is.character(input_json$`first_name`) && length(input_json$`first_name`) == 1)) {
          stop(paste("Error! Invalid data for `first_name`. Must be a string:", input_json$`first_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayGapInfoResponse: the required field `first_name` is missing."))
      }
      # check the required field `group_size`
      if (!is.null(input_json$`group_size`)) {
        if (!(is.numeric(input_json$`group_size`) && length(input_json$`group_size`) == 1)) {
          stop(paste("Error! Invalid data for `group_size`. Must be an integer:", input_json$`group_size`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayGapInfoResponse: the required field `group_size` is missing."))
      }
      # check the required field `job_title`
      if (!is.null(input_json$`job_title`)) {
        if (!(is.character(input_json$`job_title`) && length(input_json$`job_title`) == 1)) {
          stop(paste("Error! Invalid data for `job_title`. Must be a string:", input_json$`job_title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayGapInfoResponse: the required field `job_title` is missing."))
      }
      # check the required field `last_name`
      if (!is.null(input_json$`last_name`)) {
        if (!(is.character(input_json$`last_name`) && length(input_json$`last_name`) == 1)) {
          stop(paste("Error! Invalid data for `last_name`. Must be a string:", input_json$`last_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayGapInfoResponse: the required field `last_name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PayGapInfoResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `employee_id` is null
      if (is.null(self$`employee_id`)) {
        return(FALSE)
      }

      # check if the required `first_name` is null
      if (is.null(self$`first_name`)) {
        return(FALSE)
      }

      # check if the required `group_size` is null
      if (is.null(self$`group_size`)) {
        return(FALSE)
      }

      if (self$`group_size` < 0) {
        return(FALSE)
      }

      # check if the required `job_title` is null
      if (is.null(self$`job_title`)) {
        return(FALSE)
      }

      # check if the required `last_name` is null
      if (is.null(self$`last_name`)) {
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
      # check if the required `employee_id` is null
      if (is.null(self$`employee_id`)) {
        invalid_fields["employee_id"] <- "Non-nullable required field `employee_id` cannot be null."
      }

      # check if the required `first_name` is null
      if (is.null(self$`first_name`)) {
        invalid_fields["first_name"] <- "Non-nullable required field `first_name` cannot be null."
      }

      # check if the required `group_size` is null
      if (is.null(self$`group_size`)) {
        invalid_fields["group_size"] <- "Non-nullable required field `group_size` cannot be null."
      }

      if (self$`group_size` < 0) {
        invalid_fields["group_size"] <- "Invalid value for `group_size`, must be bigger than or equal to 0."
      }

      # check if the required `job_title` is null
      if (is.null(self$`job_title`)) {
        invalid_fields["job_title"] <- "Non-nullable required field `job_title` cannot be null."
      }

      # check if the required `last_name` is null
      if (is.null(self$`last_name`)) {
        invalid_fields["last_name"] <- "Non-nullable required field `last_name` cannot be null."
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
# PayGapInfoResponse$unlock()
#
## Below is an example to define the print function
# PayGapInfoResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PayGapInfoResponse$lock()

