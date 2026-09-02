#' Create a new EmissionsReport
#'
#' @description
#' EmissionsReport Class
#'
#' @docType class
#' @title EmissionsReport
#' @description EmissionsReport Class
#' @format An \code{R6Class} generator object
#' @field by_category  list(\link{CategoryTotal})
#' @field by_scope  list(\link{ScopeTotal})
#' @field by_year  list(\link{YearTotal})
#' @field data_quality  \link{DataQuality}
#' @field intensity_per_employee  numeric [optional]
#' @field intensity_per_revenue_mio tCO2e per million EUR net revenue. numeric [optional]
#' @field net_revenue Sum of paid/sent/partially-paid invoices (EUR net) in the year. numeric [optional]
#' @field spend_based_estimate_tco2e Spend-based estimate from bookkeeping payments (EXIOBASE factor). numeric [optional]
#' @field targets  list(\link{TargetProgress})
#' @field total_tco2e  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EmissionsReport <- R6::R6Class(
  "EmissionsReport",
  public = list(
    `by_category` = NULL,
    `by_scope` = NULL,
    `by_year` = NULL,
    `data_quality` = NULL,
    `intensity_per_employee` = NULL,
    `intensity_per_revenue_mio` = NULL,
    `net_revenue` = NULL,
    `spend_based_estimate_tco2e` = NULL,
    `targets` = NULL,
    `total_tco2e` = NULL,

    #' @description
    #' Initialize a new EmissionsReport class.
    #'
    #' @param by_category by_category
    #' @param by_scope by_scope
    #' @param by_year by_year
    #' @param data_quality data_quality
    #' @param targets targets
    #' @param total_tco2e total_tco2e
    #' @param intensity_per_employee intensity_per_employee
    #' @param intensity_per_revenue_mio tCO2e per million EUR net revenue.
    #' @param net_revenue Sum of paid/sent/partially-paid invoices (EUR net) in the year.
    #' @param spend_based_estimate_tco2e Spend-based estimate from bookkeeping payments (EXIOBASE factor).
    #' @param ... Other optional arguments.
    initialize = function(`by_category`, `by_scope`, `by_year`, `data_quality`, `targets`, `total_tco2e`, `intensity_per_employee` = NULL, `intensity_per_revenue_mio` = NULL, `net_revenue` = NULL, `spend_based_estimate_tco2e` = NULL, ...) {
      if (!missing(`by_category`)) {
        stopifnot(is.vector(`by_category`), length(`by_category`) != 0)
        sapply(`by_category`, function(x) stopifnot(R6::is.R6(x)))
        self$`by_category` <- `by_category`
      }
      if (!missing(`by_scope`)) {
        stopifnot(is.vector(`by_scope`), length(`by_scope`) != 0)
        sapply(`by_scope`, function(x) stopifnot(R6::is.R6(x)))
        self$`by_scope` <- `by_scope`
      }
      if (!missing(`by_year`)) {
        stopifnot(is.vector(`by_year`), length(`by_year`) != 0)
        sapply(`by_year`, function(x) stopifnot(R6::is.R6(x)))
        self$`by_year` <- `by_year`
      }
      if (!missing(`data_quality`)) {
        stopifnot(R6::is.R6(`data_quality`))
        self$`data_quality` <- `data_quality`
      }
      if (!missing(`targets`)) {
        stopifnot(is.vector(`targets`), length(`targets`) != 0)
        sapply(`targets`, function(x) stopifnot(R6::is.R6(x)))
        self$`targets` <- `targets`
      }
      if (!missing(`total_tco2e`)) {
        if (!(is.character(`total_tco2e`) && length(`total_tco2e`) == 1)) {
          stop(paste("Error! Invalid data for `total_tco2e`. Must be a string:", `total_tco2e`))
        }
        self$`total_tco2e` <- `total_tco2e`
      }
      if (!is.null(`intensity_per_employee`)) {
        if (!(is.numeric(`intensity_per_employee`) && length(`intensity_per_employee`) == 1)) {
          stop(paste("Error! Invalid data for `intensity_per_employee`. Must be a number:", `intensity_per_employee`))
        }
        self$`intensity_per_employee` <- `intensity_per_employee`
      }
      if (!is.null(`intensity_per_revenue_mio`)) {
        if (!(is.numeric(`intensity_per_revenue_mio`) && length(`intensity_per_revenue_mio`) == 1)) {
          stop(paste("Error! Invalid data for `intensity_per_revenue_mio`. Must be a number:", `intensity_per_revenue_mio`))
        }
        self$`intensity_per_revenue_mio` <- `intensity_per_revenue_mio`
      }
      if (!is.null(`net_revenue`)) {
        if (!(is.numeric(`net_revenue`) && length(`net_revenue`) == 1)) {
          stop(paste("Error! Invalid data for `net_revenue`. Must be a number:", `net_revenue`))
        }
        self$`net_revenue` <- `net_revenue`
      }
      if (!is.null(`spend_based_estimate_tco2e`)) {
        if (!(is.numeric(`spend_based_estimate_tco2e`) && length(`spend_based_estimate_tco2e`) == 1)) {
          stop(paste("Error! Invalid data for `spend_based_estimate_tco2e`. Must be a number:", `spend_based_estimate_tco2e`))
        }
        self$`spend_based_estimate_tco2e` <- `spend_based_estimate_tco2e`
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
    #' @return EmissionsReport as a base R list.
    #' @examples
    #' # convert array of EmissionsReport (x) to a data frame
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
    #' Convert EmissionsReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EmissionsReportObject <- list()
      if (!is.null(self$`by_category`)) {
        EmissionsReportObject[["by_category"]] <-
          self$extractSimpleType(self$`by_category`)
      }
      if (!is.null(self$`by_scope`)) {
        EmissionsReportObject[["by_scope"]] <-
          self$extractSimpleType(self$`by_scope`)
      }
      if (!is.null(self$`by_year`)) {
        EmissionsReportObject[["by_year"]] <-
          self$extractSimpleType(self$`by_year`)
      }
      if (!is.null(self$`data_quality`)) {
        EmissionsReportObject[["data_quality"]] <-
          self$extractSimpleType(self$`data_quality`)
      }
      if (!is.null(self$`intensity_per_employee`)) {
        EmissionsReportObject[["intensity_per_employee"]] <-
          self$`intensity_per_employee`
      }
      if (!is.null(self$`intensity_per_revenue_mio`)) {
        EmissionsReportObject[["intensity_per_revenue_mio"]] <-
          self$`intensity_per_revenue_mio`
      }
      if (!is.null(self$`net_revenue`)) {
        EmissionsReportObject[["net_revenue"]] <-
          self$`net_revenue`
      }
      if (!is.null(self$`spend_based_estimate_tco2e`)) {
        EmissionsReportObject[["spend_based_estimate_tco2e"]] <-
          self$`spend_based_estimate_tco2e`
      }
      if (!is.null(self$`targets`)) {
        EmissionsReportObject[["targets"]] <-
          self$extractSimpleType(self$`targets`)
      }
      if (!is.null(self$`total_tco2e`)) {
        EmissionsReportObject[["total_tco2e"]] <-
          self$`total_tco2e`
      }
      return(EmissionsReportObject)
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
    #' Deserialize JSON string into an instance of EmissionsReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmissionsReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`by_category`)) {
        self$`by_category` <- ApiClient$new()$deserializeObj(this_object$`by_category`, "array[CategoryTotal]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`by_scope`)) {
        self$`by_scope` <- ApiClient$new()$deserializeObj(this_object$`by_scope`, "array[ScopeTotal]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`by_year`)) {
        self$`by_year` <- ApiClient$new()$deserializeObj(this_object$`by_year`, "array[YearTotal]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`data_quality`)) {
        `data_quality_object` <- DataQuality$new()
        `data_quality_object`$fromJSON(jsonlite::toJSON(this_object$`data_quality`, auto_unbox = TRUE, digits = NA))
        self$`data_quality` <- `data_quality_object`
      }
      if (!is.null(this_object$`intensity_per_employee`)) {
        self$`intensity_per_employee` <- this_object$`intensity_per_employee`
      }
      if (!is.null(this_object$`intensity_per_revenue_mio`)) {
        self$`intensity_per_revenue_mio` <- this_object$`intensity_per_revenue_mio`
      }
      if (!is.null(this_object$`net_revenue`)) {
        self$`net_revenue` <- this_object$`net_revenue`
      }
      if (!is.null(this_object$`spend_based_estimate_tco2e`)) {
        self$`spend_based_estimate_tco2e` <- this_object$`spend_based_estimate_tco2e`
      }
      if (!is.null(this_object$`targets`)) {
        self$`targets` <- ApiClient$new()$deserializeObj(this_object$`targets`, "array[TargetProgress]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`total_tco2e`)) {
        self$`total_tco2e` <- this_object$`total_tco2e`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EmissionsReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EmissionsReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmissionsReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`by_category` <- ApiClient$new()$deserializeObj(this_object$`by_category`, "array[CategoryTotal]", loadNamespace("openapi"))
      self$`by_scope` <- ApiClient$new()$deserializeObj(this_object$`by_scope`, "array[ScopeTotal]", loadNamespace("openapi"))
      self$`by_year` <- ApiClient$new()$deserializeObj(this_object$`by_year`, "array[YearTotal]", loadNamespace("openapi"))
      self$`data_quality` <- DataQuality$new()$fromJSON(jsonlite::toJSON(this_object$`data_quality`, auto_unbox = TRUE, digits = NA))
      self$`intensity_per_employee` <- this_object$`intensity_per_employee`
      self$`intensity_per_revenue_mio` <- this_object$`intensity_per_revenue_mio`
      self$`net_revenue` <- this_object$`net_revenue`
      self$`spend_based_estimate_tco2e` <- this_object$`spend_based_estimate_tco2e`
      self$`targets` <- ApiClient$new()$deserializeObj(this_object$`targets`, "array[TargetProgress]", loadNamespace("openapi"))
      self$`total_tco2e` <- this_object$`total_tco2e`
      self
    },

    #' @description
    #' Validate JSON input with respect to EmissionsReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `by_category`
      if (!is.null(input_json$`by_category`)) {
        stopifnot(is.vector(input_json$`by_category`), length(input_json$`by_category`) != 0)
        tmp <- sapply(input_json$`by_category`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionsReport: the required field `by_category` is missing."))
      }
      # check the required field `by_scope`
      if (!is.null(input_json$`by_scope`)) {
        stopifnot(is.vector(input_json$`by_scope`), length(input_json$`by_scope`) != 0)
        tmp <- sapply(input_json$`by_scope`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionsReport: the required field `by_scope` is missing."))
      }
      # check the required field `by_year`
      if (!is.null(input_json$`by_year`)) {
        stopifnot(is.vector(input_json$`by_year`), length(input_json$`by_year`) != 0)
        tmp <- sapply(input_json$`by_year`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionsReport: the required field `by_year` is missing."))
      }
      # check the required field `data_quality`
      if (!is.null(input_json$`data_quality`)) {
        stopifnot(R6::is.R6(input_json$`data_quality`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionsReport: the required field `data_quality` is missing."))
      }
      # check the required field `targets`
      if (!is.null(input_json$`targets`)) {
        stopifnot(is.vector(input_json$`targets`), length(input_json$`targets`) != 0)
        tmp <- sapply(input_json$`targets`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionsReport: the required field `targets` is missing."))
      }
      # check the required field `total_tco2e`
      if (!is.null(input_json$`total_tco2e`)) {
        if (!(is.character(input_json$`total_tco2e`) && length(input_json$`total_tco2e`) == 1)) {
          stop(paste("Error! Invalid data for `total_tco2e`. Must be a string:", input_json$`total_tco2e`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionsReport: the required field `total_tco2e` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EmissionsReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `by_category` is null
      if (is.null(self$`by_category`)) {
        return(FALSE)
      }

      # check if the required `by_scope` is null
      if (is.null(self$`by_scope`)) {
        return(FALSE)
      }

      # check if the required `by_year` is null
      if (is.null(self$`by_year`)) {
        return(FALSE)
      }

      # check if the required `data_quality` is null
      if (is.null(self$`data_quality`)) {
        return(FALSE)
      }

      # check if the required `targets` is null
      if (is.null(self$`targets`)) {
        return(FALSE)
      }

      # check if the required `total_tco2e` is null
      if (is.null(self$`total_tco2e`)) {
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
      # check if the required `by_category` is null
      if (is.null(self$`by_category`)) {
        invalid_fields["by_category"] <- "Non-nullable required field `by_category` cannot be null."
      }

      # check if the required `by_scope` is null
      if (is.null(self$`by_scope`)) {
        invalid_fields["by_scope"] <- "Non-nullable required field `by_scope` cannot be null."
      }

      # check if the required `by_year` is null
      if (is.null(self$`by_year`)) {
        invalid_fields["by_year"] <- "Non-nullable required field `by_year` cannot be null."
      }

      # check if the required `data_quality` is null
      if (is.null(self$`data_quality`)) {
        invalid_fields["data_quality"] <- "Non-nullable required field `data_quality` cannot be null."
      }

      # check if the required `targets` is null
      if (is.null(self$`targets`)) {
        invalid_fields["targets"] <- "Non-nullable required field `targets` cannot be null."
      }

      # check if the required `total_tco2e` is null
      if (is.null(self$`total_tco2e`)) {
        invalid_fields["total_tco2e"] <- "Non-nullable required field `total_tco2e` cannot be null."
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
# EmissionsReport$unlock()
#
## Below is an example to define the print function
# EmissionsReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EmissionsReport$lock()

