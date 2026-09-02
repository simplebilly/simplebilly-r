#' Create a new JobTitleGap
#'
#' @description
#' JobTitleGap Class
#'
#' @docType class
#' @title JobTitleGap
#' @description JobTitleGap Class
#' @format An \code{R6Class} generator object
#' @field employee_count  integer
#' @field female_mean_hourly  character
#' @field job_title  character
#' @field male_mean_hourly  character
#' @field mean_gap_pct  numeric
#' @field median_gap_pct  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobTitleGap <- R6::R6Class(
  "JobTitleGap",
  public = list(
    `employee_count` = NULL,
    `female_mean_hourly` = NULL,
    `job_title` = NULL,
    `male_mean_hourly` = NULL,
    `mean_gap_pct` = NULL,
    `median_gap_pct` = NULL,

    #' @description
    #' Initialize a new JobTitleGap class.
    #'
    #' @param employee_count employee_count
    #' @param female_mean_hourly female_mean_hourly
    #' @param job_title job_title
    #' @param male_mean_hourly male_mean_hourly
    #' @param mean_gap_pct mean_gap_pct
    #' @param median_gap_pct median_gap_pct
    #' @param ... Other optional arguments.
    initialize = function(`employee_count`, `female_mean_hourly`, `job_title`, `male_mean_hourly`, `mean_gap_pct`, `median_gap_pct`, ...) {
      if (!missing(`employee_count`)) {
        if (!(is.numeric(`employee_count`) && length(`employee_count`) == 1)) {
          stop(paste("Error! Invalid data for `employee_count`. Must be an integer:", `employee_count`))
        }
        self$`employee_count` <- `employee_count`
      }
      if (!missing(`female_mean_hourly`)) {
        if (!(is.character(`female_mean_hourly`) && length(`female_mean_hourly`) == 1)) {
          stop(paste("Error! Invalid data for `female_mean_hourly`. Must be a string:", `female_mean_hourly`))
        }
        self$`female_mean_hourly` <- `female_mean_hourly`
      }
      if (!missing(`job_title`)) {
        if (!(is.character(`job_title`) && length(`job_title`) == 1)) {
          stop(paste("Error! Invalid data for `job_title`. Must be a string:", `job_title`))
        }
        self$`job_title` <- `job_title`
      }
      if (!missing(`male_mean_hourly`)) {
        if (!(is.character(`male_mean_hourly`) && length(`male_mean_hourly`) == 1)) {
          stop(paste("Error! Invalid data for `male_mean_hourly`. Must be a string:", `male_mean_hourly`))
        }
        self$`male_mean_hourly` <- `male_mean_hourly`
      }
      if (!missing(`mean_gap_pct`)) {
        if (!(is.numeric(`mean_gap_pct`) && length(`mean_gap_pct`) == 1)) {
          stop(paste("Error! Invalid data for `mean_gap_pct`. Must be a number:", `mean_gap_pct`))
        }
        self$`mean_gap_pct` <- `mean_gap_pct`
      }
      if (!missing(`median_gap_pct`)) {
        if (!(is.numeric(`median_gap_pct`) && length(`median_gap_pct`) == 1)) {
          stop(paste("Error! Invalid data for `median_gap_pct`. Must be a number:", `median_gap_pct`))
        }
        self$`median_gap_pct` <- `median_gap_pct`
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
    #' @return JobTitleGap as a base R list.
    #' @examples
    #' # convert array of JobTitleGap (x) to a data frame
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
    #' Convert JobTitleGap to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      JobTitleGapObject <- list()
      if (!is.null(self$`employee_count`)) {
        JobTitleGapObject[["employee_count"]] <-
          self$`employee_count`
      }
      if (!is.null(self$`female_mean_hourly`)) {
        JobTitleGapObject[["female_mean_hourly"]] <-
          self$`female_mean_hourly`
      }
      if (!is.null(self$`job_title`)) {
        JobTitleGapObject[["job_title"]] <-
          self$`job_title`
      }
      if (!is.null(self$`male_mean_hourly`)) {
        JobTitleGapObject[["male_mean_hourly"]] <-
          self$`male_mean_hourly`
      }
      if (!is.null(self$`mean_gap_pct`)) {
        JobTitleGapObject[["mean_gap_pct"]] <-
          self$`mean_gap_pct`
      }
      if (!is.null(self$`median_gap_pct`)) {
        JobTitleGapObject[["median_gap_pct"]] <-
          self$`median_gap_pct`
      }
      return(JobTitleGapObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of JobTitleGap
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobTitleGap
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`employee_count`)) {
        self$`employee_count` <- this_object$`employee_count`
      }
      if (!is.null(this_object$`female_mean_hourly`)) {
        self$`female_mean_hourly` <- this_object$`female_mean_hourly`
      }
      if (!is.null(this_object$`job_title`)) {
        self$`job_title` <- this_object$`job_title`
      }
      if (!is.null(this_object$`male_mean_hourly`)) {
        self$`male_mean_hourly` <- this_object$`male_mean_hourly`
      }
      if (!is.null(this_object$`mean_gap_pct`)) {
        self$`mean_gap_pct` <- this_object$`mean_gap_pct`
      }
      if (!is.null(this_object$`median_gap_pct`)) {
        self$`median_gap_pct` <- this_object$`median_gap_pct`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JobTitleGap in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of JobTitleGap
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobTitleGap
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`employee_count` <- this_object$`employee_count`
      self$`female_mean_hourly` <- this_object$`female_mean_hourly`
      self$`job_title` <- this_object$`job_title`
      self$`male_mean_hourly` <- this_object$`male_mean_hourly`
      self$`mean_gap_pct` <- this_object$`mean_gap_pct`
      self$`median_gap_pct` <- this_object$`median_gap_pct`
      self
    },

    #' @description
    #' Validate JSON input with respect to JobTitleGap and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `employee_count`
      if (!is.null(input_json$`employee_count`)) {
        if (!(is.numeric(input_json$`employee_count`) && length(input_json$`employee_count`) == 1)) {
          stop(paste("Error! Invalid data for `employee_count`. Must be an integer:", input_json$`employee_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JobTitleGap: the required field `employee_count` is missing."))
      }
      # check the required field `female_mean_hourly`
      if (!is.null(input_json$`female_mean_hourly`)) {
        if (!(is.character(input_json$`female_mean_hourly`) && length(input_json$`female_mean_hourly`) == 1)) {
          stop(paste("Error! Invalid data for `female_mean_hourly`. Must be a string:", input_json$`female_mean_hourly`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JobTitleGap: the required field `female_mean_hourly` is missing."))
      }
      # check the required field `job_title`
      if (!is.null(input_json$`job_title`)) {
        if (!(is.character(input_json$`job_title`) && length(input_json$`job_title`) == 1)) {
          stop(paste("Error! Invalid data for `job_title`. Must be a string:", input_json$`job_title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JobTitleGap: the required field `job_title` is missing."))
      }
      # check the required field `male_mean_hourly`
      if (!is.null(input_json$`male_mean_hourly`)) {
        if (!(is.character(input_json$`male_mean_hourly`) && length(input_json$`male_mean_hourly`) == 1)) {
          stop(paste("Error! Invalid data for `male_mean_hourly`. Must be a string:", input_json$`male_mean_hourly`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JobTitleGap: the required field `male_mean_hourly` is missing."))
      }
      # check the required field `mean_gap_pct`
      if (!is.null(input_json$`mean_gap_pct`)) {
        if (!(is.numeric(input_json$`mean_gap_pct`) && length(input_json$`mean_gap_pct`) == 1)) {
          stop(paste("Error! Invalid data for `mean_gap_pct`. Must be a number:", input_json$`mean_gap_pct`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JobTitleGap: the required field `mean_gap_pct` is missing."))
      }
      # check the required field `median_gap_pct`
      if (!is.null(input_json$`median_gap_pct`)) {
        if (!(is.numeric(input_json$`median_gap_pct`) && length(input_json$`median_gap_pct`) == 1)) {
          stop(paste("Error! Invalid data for `median_gap_pct`. Must be a number:", input_json$`median_gap_pct`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JobTitleGap: the required field `median_gap_pct` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of JobTitleGap
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `employee_count` is null
      if (is.null(self$`employee_count`)) {
        return(FALSE)
      }

      if (self$`employee_count` < 0) {
        return(FALSE)
      }

      # check if the required `female_mean_hourly` is null
      if (is.null(self$`female_mean_hourly`)) {
        return(FALSE)
      }

      # check if the required `job_title` is null
      if (is.null(self$`job_title`)) {
        return(FALSE)
      }

      # check if the required `male_mean_hourly` is null
      if (is.null(self$`male_mean_hourly`)) {
        return(FALSE)
      }

      # check if the required `mean_gap_pct` is null
      if (is.null(self$`mean_gap_pct`)) {
        return(FALSE)
      }

      # check if the required `median_gap_pct` is null
      if (is.null(self$`median_gap_pct`)) {
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
      # check if the required `employee_count` is null
      if (is.null(self$`employee_count`)) {
        invalid_fields["employee_count"] <- "Non-nullable required field `employee_count` cannot be null."
      }

      if (self$`employee_count` < 0) {
        invalid_fields["employee_count"] <- "Invalid value for `employee_count`, must be bigger than or equal to 0."
      }

      # check if the required `female_mean_hourly` is null
      if (is.null(self$`female_mean_hourly`)) {
        invalid_fields["female_mean_hourly"] <- "Non-nullable required field `female_mean_hourly` cannot be null."
      }

      # check if the required `job_title` is null
      if (is.null(self$`job_title`)) {
        invalid_fields["job_title"] <- "Non-nullable required field `job_title` cannot be null."
      }

      # check if the required `male_mean_hourly` is null
      if (is.null(self$`male_mean_hourly`)) {
        invalid_fields["male_mean_hourly"] <- "Non-nullable required field `male_mean_hourly` cannot be null."
      }

      # check if the required `mean_gap_pct` is null
      if (is.null(self$`mean_gap_pct`)) {
        invalid_fields["mean_gap_pct"] <- "Non-nullable required field `mean_gap_pct` cannot be null."
      }

      # check if the required `median_gap_pct` is null
      if (is.null(self$`median_gap_pct`)) {
        invalid_fields["median_gap_pct"] <- "Non-nullable required field `median_gap_pct` cannot be null."
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
# JobTitleGap$unlock()
#
## Below is an example to define the print function
# JobTitleGap$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# JobTitleGap$lock()

