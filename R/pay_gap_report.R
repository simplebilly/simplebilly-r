#' Create a new PayGapReport
#'
#' @description
#' PayGapReport Class
#'
#' @docType class
#' @title PayGapReport
#' @description PayGapReport Class
#' @format An \code{R6Class} generator object
#' @field by_job_title  list(\link{JobTitleGap})
#' @field diverse_count  integer
#' @field employee_count  integer
#' @field female_count  integer
#' @field male_count  integer
#' @field mean_gap_pct  numeric
#' @field median_gap_pct  numeric
#' @field quartiles  list(\link{QuartileBand})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PayGapReport <- R6::R6Class(
  "PayGapReport",
  public = list(
    `by_job_title` = NULL,
    `diverse_count` = NULL,
    `employee_count` = NULL,
    `female_count` = NULL,
    `male_count` = NULL,
    `mean_gap_pct` = NULL,
    `median_gap_pct` = NULL,
    `quartiles` = NULL,

    #' @description
    #' Initialize a new PayGapReport class.
    #'
    #' @param by_job_title by_job_title
    #' @param diverse_count diverse_count
    #' @param employee_count employee_count
    #' @param female_count female_count
    #' @param male_count male_count
    #' @param mean_gap_pct mean_gap_pct
    #' @param median_gap_pct median_gap_pct
    #' @param quartiles quartiles
    #' @param ... Other optional arguments.
    initialize = function(`by_job_title`, `diverse_count`, `employee_count`, `female_count`, `male_count`, `mean_gap_pct`, `median_gap_pct`, `quartiles`, ...) {
      if (!missing(`by_job_title`)) {
        stopifnot(is.vector(`by_job_title`), length(`by_job_title`) != 0)
        sapply(`by_job_title`, function(x) stopifnot(R6::is.R6(x)))
        self$`by_job_title` <- `by_job_title`
      }
      if (!missing(`diverse_count`)) {
        if (!(is.numeric(`diverse_count`) && length(`diverse_count`) == 1)) {
          stop(paste("Error! Invalid data for `diverse_count`. Must be an integer:", `diverse_count`))
        }
        self$`diverse_count` <- `diverse_count`
      }
      if (!missing(`employee_count`)) {
        if (!(is.numeric(`employee_count`) && length(`employee_count`) == 1)) {
          stop(paste("Error! Invalid data for `employee_count`. Must be an integer:", `employee_count`))
        }
        self$`employee_count` <- `employee_count`
      }
      if (!missing(`female_count`)) {
        if (!(is.numeric(`female_count`) && length(`female_count`) == 1)) {
          stop(paste("Error! Invalid data for `female_count`. Must be an integer:", `female_count`))
        }
        self$`female_count` <- `female_count`
      }
      if (!missing(`male_count`)) {
        if (!(is.numeric(`male_count`) && length(`male_count`) == 1)) {
          stop(paste("Error! Invalid data for `male_count`. Must be an integer:", `male_count`))
        }
        self$`male_count` <- `male_count`
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
      if (!missing(`quartiles`)) {
        stopifnot(is.vector(`quartiles`), length(`quartiles`) != 0)
        sapply(`quartiles`, function(x) stopifnot(R6::is.R6(x)))
        self$`quartiles` <- `quartiles`
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
    #' @return PayGapReport as a base R list.
    #' @examples
    #' # convert array of PayGapReport (x) to a data frame
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
    #' Convert PayGapReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PayGapReportObject <- list()
      if (!is.null(self$`by_job_title`)) {
        PayGapReportObject[["by_job_title"]] <-
          self$extractSimpleType(self$`by_job_title`)
      }
      if (!is.null(self$`diverse_count`)) {
        PayGapReportObject[["diverse_count"]] <-
          self$`diverse_count`
      }
      if (!is.null(self$`employee_count`)) {
        PayGapReportObject[["employee_count"]] <-
          self$`employee_count`
      }
      if (!is.null(self$`female_count`)) {
        PayGapReportObject[["female_count"]] <-
          self$`female_count`
      }
      if (!is.null(self$`male_count`)) {
        PayGapReportObject[["male_count"]] <-
          self$`male_count`
      }
      if (!is.null(self$`mean_gap_pct`)) {
        PayGapReportObject[["mean_gap_pct"]] <-
          self$`mean_gap_pct`
      }
      if (!is.null(self$`median_gap_pct`)) {
        PayGapReportObject[["median_gap_pct"]] <-
          self$`median_gap_pct`
      }
      if (!is.null(self$`quartiles`)) {
        PayGapReportObject[["quartiles"]] <-
          self$extractSimpleType(self$`quartiles`)
      }
      return(PayGapReportObject)
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
    #' Deserialize JSON string into an instance of PayGapReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayGapReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`by_job_title`)) {
        self$`by_job_title` <- ApiClient$new()$deserializeObj(this_object$`by_job_title`, "array[JobTitleGap]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`diverse_count`)) {
        self$`diverse_count` <- this_object$`diverse_count`
      }
      if (!is.null(this_object$`employee_count`)) {
        self$`employee_count` <- this_object$`employee_count`
      }
      if (!is.null(this_object$`female_count`)) {
        self$`female_count` <- this_object$`female_count`
      }
      if (!is.null(this_object$`male_count`)) {
        self$`male_count` <- this_object$`male_count`
      }
      if (!is.null(this_object$`mean_gap_pct`)) {
        self$`mean_gap_pct` <- this_object$`mean_gap_pct`
      }
      if (!is.null(this_object$`median_gap_pct`)) {
        self$`median_gap_pct` <- this_object$`median_gap_pct`
      }
      if (!is.null(this_object$`quartiles`)) {
        self$`quartiles` <- ApiClient$new()$deserializeObj(this_object$`quartiles`, "array[QuartileBand]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PayGapReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PayGapReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayGapReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`by_job_title` <- ApiClient$new()$deserializeObj(this_object$`by_job_title`, "array[JobTitleGap]", loadNamespace("openapi"))
      self$`diverse_count` <- this_object$`diverse_count`
      self$`employee_count` <- this_object$`employee_count`
      self$`female_count` <- this_object$`female_count`
      self$`male_count` <- this_object$`male_count`
      self$`mean_gap_pct` <- this_object$`mean_gap_pct`
      self$`median_gap_pct` <- this_object$`median_gap_pct`
      self$`quartiles` <- ApiClient$new()$deserializeObj(this_object$`quartiles`, "array[QuartileBand]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to PayGapReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `by_job_title`
      if (!is.null(input_json$`by_job_title`)) {
        stopifnot(is.vector(input_json$`by_job_title`), length(input_json$`by_job_title`) != 0)
        tmp <- sapply(input_json$`by_job_title`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayGapReport: the required field `by_job_title` is missing."))
      }
      # check the required field `diverse_count`
      if (!is.null(input_json$`diverse_count`)) {
        if (!(is.numeric(input_json$`diverse_count`) && length(input_json$`diverse_count`) == 1)) {
          stop(paste("Error! Invalid data for `diverse_count`. Must be an integer:", input_json$`diverse_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayGapReport: the required field `diverse_count` is missing."))
      }
      # check the required field `employee_count`
      if (!is.null(input_json$`employee_count`)) {
        if (!(is.numeric(input_json$`employee_count`) && length(input_json$`employee_count`) == 1)) {
          stop(paste("Error! Invalid data for `employee_count`. Must be an integer:", input_json$`employee_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayGapReport: the required field `employee_count` is missing."))
      }
      # check the required field `female_count`
      if (!is.null(input_json$`female_count`)) {
        if (!(is.numeric(input_json$`female_count`) && length(input_json$`female_count`) == 1)) {
          stop(paste("Error! Invalid data for `female_count`. Must be an integer:", input_json$`female_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayGapReport: the required field `female_count` is missing."))
      }
      # check the required field `male_count`
      if (!is.null(input_json$`male_count`)) {
        if (!(is.numeric(input_json$`male_count`) && length(input_json$`male_count`) == 1)) {
          stop(paste("Error! Invalid data for `male_count`. Must be an integer:", input_json$`male_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayGapReport: the required field `male_count` is missing."))
      }
      # check the required field `mean_gap_pct`
      if (!is.null(input_json$`mean_gap_pct`)) {
        if (!(is.numeric(input_json$`mean_gap_pct`) && length(input_json$`mean_gap_pct`) == 1)) {
          stop(paste("Error! Invalid data for `mean_gap_pct`. Must be a number:", input_json$`mean_gap_pct`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayGapReport: the required field `mean_gap_pct` is missing."))
      }
      # check the required field `median_gap_pct`
      if (!is.null(input_json$`median_gap_pct`)) {
        if (!(is.numeric(input_json$`median_gap_pct`) && length(input_json$`median_gap_pct`) == 1)) {
          stop(paste("Error! Invalid data for `median_gap_pct`. Must be a number:", input_json$`median_gap_pct`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayGapReport: the required field `median_gap_pct` is missing."))
      }
      # check the required field `quartiles`
      if (!is.null(input_json$`quartiles`)) {
        stopifnot(is.vector(input_json$`quartiles`), length(input_json$`quartiles`) != 0)
        tmp <- sapply(input_json$`quartiles`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayGapReport: the required field `quartiles` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PayGapReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `by_job_title` is null
      if (is.null(self$`by_job_title`)) {
        return(FALSE)
      }

      # check if the required `diverse_count` is null
      if (is.null(self$`diverse_count`)) {
        return(FALSE)
      }

      if (self$`diverse_count` < 0) {
        return(FALSE)
      }

      # check if the required `employee_count` is null
      if (is.null(self$`employee_count`)) {
        return(FALSE)
      }

      if (self$`employee_count` < 0) {
        return(FALSE)
      }

      # check if the required `female_count` is null
      if (is.null(self$`female_count`)) {
        return(FALSE)
      }

      if (self$`female_count` < 0) {
        return(FALSE)
      }

      # check if the required `male_count` is null
      if (is.null(self$`male_count`)) {
        return(FALSE)
      }

      if (self$`male_count` < 0) {
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

      # check if the required `quartiles` is null
      if (is.null(self$`quartiles`)) {
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
      # check if the required `by_job_title` is null
      if (is.null(self$`by_job_title`)) {
        invalid_fields["by_job_title"] <- "Non-nullable required field `by_job_title` cannot be null."
      }

      # check if the required `diverse_count` is null
      if (is.null(self$`diverse_count`)) {
        invalid_fields["diverse_count"] <- "Non-nullable required field `diverse_count` cannot be null."
      }

      if (self$`diverse_count` < 0) {
        invalid_fields["diverse_count"] <- "Invalid value for `diverse_count`, must be bigger than or equal to 0."
      }

      # check if the required `employee_count` is null
      if (is.null(self$`employee_count`)) {
        invalid_fields["employee_count"] <- "Non-nullable required field `employee_count` cannot be null."
      }

      if (self$`employee_count` < 0) {
        invalid_fields["employee_count"] <- "Invalid value for `employee_count`, must be bigger than or equal to 0."
      }

      # check if the required `female_count` is null
      if (is.null(self$`female_count`)) {
        invalid_fields["female_count"] <- "Non-nullable required field `female_count` cannot be null."
      }

      if (self$`female_count` < 0) {
        invalid_fields["female_count"] <- "Invalid value for `female_count`, must be bigger than or equal to 0."
      }

      # check if the required `male_count` is null
      if (is.null(self$`male_count`)) {
        invalid_fields["male_count"] <- "Non-nullable required field `male_count` cannot be null."
      }

      if (self$`male_count` < 0) {
        invalid_fields["male_count"] <- "Invalid value for `male_count`, must be bigger than or equal to 0."
      }

      # check if the required `mean_gap_pct` is null
      if (is.null(self$`mean_gap_pct`)) {
        invalid_fields["mean_gap_pct"] <- "Non-nullable required field `mean_gap_pct` cannot be null."
      }

      # check if the required `median_gap_pct` is null
      if (is.null(self$`median_gap_pct`)) {
        invalid_fields["median_gap_pct"] <- "Non-nullable required field `median_gap_pct` cannot be null."
      }

      # check if the required `quartiles` is null
      if (is.null(self$`quartiles`)) {
        invalid_fields["quartiles"] <- "Non-nullable required field `quartiles` cannot be null."
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
# PayGapReport$unlock()
#
## Below is an example to define the print function
# PayGapReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PayGapReport$lock()

