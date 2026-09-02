#' Create a new YearlyPayrollSummary
#'
#' @description
#' YearlyPayrollSummary Class
#'
#' @docType class
#' @title YearlyPayrollSummary
#' @description YearlyPayrollSummary Class
#' @format An \code{R6Class} generator object
#' @field avg_employee_count  integer
#' @field months  list(\link{PayrollSummaryItem})
#' @field year  integer
#' @field yearly_employer_cost  character
#' @field yearly_gross  character
#' @field yearly_net  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
YearlyPayrollSummary <- R6::R6Class(
  "YearlyPayrollSummary",
  public = list(
    `avg_employee_count` = NULL,
    `months` = NULL,
    `year` = NULL,
    `yearly_employer_cost` = NULL,
    `yearly_gross` = NULL,
    `yearly_net` = NULL,

    #' @description
    #' Initialize a new YearlyPayrollSummary class.
    #'
    #' @param avg_employee_count avg_employee_count
    #' @param months months
    #' @param year year
    #' @param yearly_employer_cost yearly_employer_cost
    #' @param yearly_gross yearly_gross
    #' @param yearly_net yearly_net
    #' @param ... Other optional arguments.
    initialize = function(`avg_employee_count`, `months`, `year`, `yearly_employer_cost`, `yearly_gross`, `yearly_net`, ...) {
      if (!missing(`avg_employee_count`)) {
        if (!(is.numeric(`avg_employee_count`) && length(`avg_employee_count`) == 1)) {
          stop(paste("Error! Invalid data for `avg_employee_count`. Must be an integer:", `avg_employee_count`))
        }
        self$`avg_employee_count` <- `avg_employee_count`
      }
      if (!missing(`months`)) {
        stopifnot(is.vector(`months`), length(`months`) != 0)
        sapply(`months`, function(x) stopifnot(R6::is.R6(x)))
        self$`months` <- `months`
      }
      if (!missing(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
      }
      if (!missing(`yearly_employer_cost`)) {
        if (!(is.character(`yearly_employer_cost`) && length(`yearly_employer_cost`) == 1)) {
          stop(paste("Error! Invalid data for `yearly_employer_cost`. Must be a string:", `yearly_employer_cost`))
        }
        self$`yearly_employer_cost` <- `yearly_employer_cost`
      }
      if (!missing(`yearly_gross`)) {
        if (!(is.character(`yearly_gross`) && length(`yearly_gross`) == 1)) {
          stop(paste("Error! Invalid data for `yearly_gross`. Must be a string:", `yearly_gross`))
        }
        self$`yearly_gross` <- `yearly_gross`
      }
      if (!missing(`yearly_net`)) {
        if (!(is.character(`yearly_net`) && length(`yearly_net`) == 1)) {
          stop(paste("Error! Invalid data for `yearly_net`. Must be a string:", `yearly_net`))
        }
        self$`yearly_net` <- `yearly_net`
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
    #' @return YearlyPayrollSummary as a base R list.
    #' @examples
    #' # convert array of YearlyPayrollSummary (x) to a data frame
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
    #' Convert YearlyPayrollSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      YearlyPayrollSummaryObject <- list()
      if (!is.null(self$`avg_employee_count`)) {
        YearlyPayrollSummaryObject[["avg_employee_count"]] <-
          self$`avg_employee_count`
      }
      if (!is.null(self$`months`)) {
        YearlyPayrollSummaryObject[["months"]] <-
          self$extractSimpleType(self$`months`)
      }
      if (!is.null(self$`year`)) {
        YearlyPayrollSummaryObject[["year"]] <-
          self$`year`
      }
      if (!is.null(self$`yearly_employer_cost`)) {
        YearlyPayrollSummaryObject[["yearly_employer_cost"]] <-
          self$`yearly_employer_cost`
      }
      if (!is.null(self$`yearly_gross`)) {
        YearlyPayrollSummaryObject[["yearly_gross"]] <-
          self$`yearly_gross`
      }
      if (!is.null(self$`yearly_net`)) {
        YearlyPayrollSummaryObject[["yearly_net"]] <-
          self$`yearly_net`
      }
      return(YearlyPayrollSummaryObject)
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
    #' Deserialize JSON string into an instance of YearlyPayrollSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of YearlyPayrollSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`avg_employee_count`)) {
        self$`avg_employee_count` <- this_object$`avg_employee_count`
      }
      if (!is.null(this_object$`months`)) {
        self$`months` <- ApiClient$new()$deserializeObj(this_object$`months`, "array[PayrollSummaryItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`year`)) {
        self$`year` <- this_object$`year`
      }
      if (!is.null(this_object$`yearly_employer_cost`)) {
        self$`yearly_employer_cost` <- this_object$`yearly_employer_cost`
      }
      if (!is.null(this_object$`yearly_gross`)) {
        self$`yearly_gross` <- this_object$`yearly_gross`
      }
      if (!is.null(this_object$`yearly_net`)) {
        self$`yearly_net` <- this_object$`yearly_net`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return YearlyPayrollSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of YearlyPayrollSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of YearlyPayrollSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`avg_employee_count` <- this_object$`avg_employee_count`
      self$`months` <- ApiClient$new()$deserializeObj(this_object$`months`, "array[PayrollSummaryItem]", loadNamespace("openapi"))
      self$`year` <- this_object$`year`
      self$`yearly_employer_cost` <- this_object$`yearly_employer_cost`
      self$`yearly_gross` <- this_object$`yearly_gross`
      self$`yearly_net` <- this_object$`yearly_net`
      self
    },

    #' @description
    #' Validate JSON input with respect to YearlyPayrollSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `avg_employee_count`
      if (!is.null(input_json$`avg_employee_count`)) {
        if (!(is.numeric(input_json$`avg_employee_count`) && length(input_json$`avg_employee_count`) == 1)) {
          stop(paste("Error! Invalid data for `avg_employee_count`. Must be an integer:", input_json$`avg_employee_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for YearlyPayrollSummary: the required field `avg_employee_count` is missing."))
      }
      # check the required field `months`
      if (!is.null(input_json$`months`)) {
        stopifnot(is.vector(input_json$`months`), length(input_json$`months`) != 0)
        tmp <- sapply(input_json$`months`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for YearlyPayrollSummary: the required field `months` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for YearlyPayrollSummary: the required field `year` is missing."))
      }
      # check the required field `yearly_employer_cost`
      if (!is.null(input_json$`yearly_employer_cost`)) {
        if (!(is.character(input_json$`yearly_employer_cost`) && length(input_json$`yearly_employer_cost`) == 1)) {
          stop(paste("Error! Invalid data for `yearly_employer_cost`. Must be a string:", input_json$`yearly_employer_cost`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for YearlyPayrollSummary: the required field `yearly_employer_cost` is missing."))
      }
      # check the required field `yearly_gross`
      if (!is.null(input_json$`yearly_gross`)) {
        if (!(is.character(input_json$`yearly_gross`) && length(input_json$`yearly_gross`) == 1)) {
          stop(paste("Error! Invalid data for `yearly_gross`. Must be a string:", input_json$`yearly_gross`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for YearlyPayrollSummary: the required field `yearly_gross` is missing."))
      }
      # check the required field `yearly_net`
      if (!is.null(input_json$`yearly_net`)) {
        if (!(is.character(input_json$`yearly_net`) && length(input_json$`yearly_net`) == 1)) {
          stop(paste("Error! Invalid data for `yearly_net`. Must be a string:", input_json$`yearly_net`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for YearlyPayrollSummary: the required field `yearly_net` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of YearlyPayrollSummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `avg_employee_count` is null
      if (is.null(self$`avg_employee_count`)) {
        return(FALSE)
      }

      # check if the required `months` is null
      if (is.null(self$`months`)) {
        return(FALSE)
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
        return(FALSE)
      }

      # check if the required `yearly_employer_cost` is null
      if (is.null(self$`yearly_employer_cost`)) {
        return(FALSE)
      }

      # check if the required `yearly_gross` is null
      if (is.null(self$`yearly_gross`)) {
        return(FALSE)
      }

      # check if the required `yearly_net` is null
      if (is.null(self$`yearly_net`)) {
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
      # check if the required `avg_employee_count` is null
      if (is.null(self$`avg_employee_count`)) {
        invalid_fields["avg_employee_count"] <- "Non-nullable required field `avg_employee_count` cannot be null."
      }

      # check if the required `months` is null
      if (is.null(self$`months`)) {
        invalid_fields["months"] <- "Non-nullable required field `months` cannot be null."
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
        invalid_fields["year"] <- "Non-nullable required field `year` cannot be null."
      }

      # check if the required `yearly_employer_cost` is null
      if (is.null(self$`yearly_employer_cost`)) {
        invalid_fields["yearly_employer_cost"] <- "Non-nullable required field `yearly_employer_cost` cannot be null."
      }

      # check if the required `yearly_gross` is null
      if (is.null(self$`yearly_gross`)) {
        invalid_fields["yearly_gross"] <- "Non-nullable required field `yearly_gross` cannot be null."
      }

      # check if the required `yearly_net` is null
      if (is.null(self$`yearly_net`)) {
        invalid_fields["yearly_net"] <- "Non-nullable required field `yearly_net` cannot be null."
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
# YearlyPayrollSummary$unlock()
#
## Below is an example to define the print function
# YearlyPayrollSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# YearlyPayrollSummary$lock()

