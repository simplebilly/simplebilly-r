#' Create a new PayrollSummaryItem
#'
#' @description
#' PayrollSummaryItem Class
#'
#' @docType class
#' @title PayrollSummaryItem
#' @description PayrollSummaryItem Class
#' @format An \code{R6Class} generator object
#' @field employee_count  integer
#' @field month  character
#' @field status  \link{PayrollRunStatus}
#' @field total_employer_cost  character
#' @field total_gross  character
#' @field total_net  character
#' @field year  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PayrollSummaryItem <- R6::R6Class(
  "PayrollSummaryItem",
  public = list(
    `employee_count` = NULL,
    `month` = NULL,
    `status` = NULL,
    `total_employer_cost` = NULL,
    `total_gross` = NULL,
    `total_net` = NULL,
    `year` = NULL,

    #' @description
    #' Initialize a new PayrollSummaryItem class.
    #'
    #' @param employee_count employee_count
    #' @param month month
    #' @param status status
    #' @param total_employer_cost total_employer_cost
    #' @param total_gross total_gross
    #' @param total_net total_net
    #' @param year year
    #' @param ... Other optional arguments.
    initialize = function(`employee_count`, `month`, `status`, `total_employer_cost`, `total_gross`, `total_net`, `year`, ...) {
      if (!missing(`employee_count`)) {
        if (!(is.numeric(`employee_count`) && length(`employee_count`) == 1)) {
          stop(paste("Error! Invalid data for `employee_count`. Must be an integer:", `employee_count`))
        }
        self$`employee_count` <- `employee_count`
      }
      if (!missing(`month`)) {
        if (!(is.character(`month`) && length(`month`) == 1)) {
          stop(paste("Error! Invalid data for `month`. Must be a string:", `month`))
        }
        self$`month` <- `month`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`total_employer_cost`)) {
        if (!(is.character(`total_employer_cost`) && length(`total_employer_cost`) == 1)) {
          stop(paste("Error! Invalid data for `total_employer_cost`. Must be a string:", `total_employer_cost`))
        }
        self$`total_employer_cost` <- `total_employer_cost`
      }
      if (!missing(`total_gross`)) {
        if (!(is.character(`total_gross`) && length(`total_gross`) == 1)) {
          stop(paste("Error! Invalid data for `total_gross`. Must be a string:", `total_gross`))
        }
        self$`total_gross` <- `total_gross`
      }
      if (!missing(`total_net`)) {
        if (!(is.character(`total_net`) && length(`total_net`) == 1)) {
          stop(paste("Error! Invalid data for `total_net`. Must be a string:", `total_net`))
        }
        self$`total_net` <- `total_net`
      }
      if (!missing(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
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
    #' @return PayrollSummaryItem as a base R list.
    #' @examples
    #' # convert array of PayrollSummaryItem (x) to a data frame
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
    #' Convert PayrollSummaryItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PayrollSummaryItemObject <- list()
      if (!is.null(self$`employee_count`)) {
        PayrollSummaryItemObject[["employee_count"]] <-
          self$`employee_count`
      }
      if (!is.null(self$`month`)) {
        PayrollSummaryItemObject[["month"]] <-
          self$`month`
      }
      if (!is.null(self$`status`)) {
        PayrollSummaryItemObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`total_employer_cost`)) {
        PayrollSummaryItemObject[["total_employer_cost"]] <-
          self$`total_employer_cost`
      }
      if (!is.null(self$`total_gross`)) {
        PayrollSummaryItemObject[["total_gross"]] <-
          self$`total_gross`
      }
      if (!is.null(self$`total_net`)) {
        PayrollSummaryItemObject[["total_net"]] <-
          self$`total_net`
      }
      if (!is.null(self$`year`)) {
        PayrollSummaryItemObject[["year"]] <-
          self$`year`
      }
      return(PayrollSummaryItemObject)
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
    #' Deserialize JSON string into an instance of PayrollSummaryItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollSummaryItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`employee_count`)) {
        self$`employee_count` <- this_object$`employee_count`
      }
      if (!is.null(this_object$`month`)) {
        self$`month` <- this_object$`month`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- PayrollRunStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`total_employer_cost`)) {
        self$`total_employer_cost` <- this_object$`total_employer_cost`
      }
      if (!is.null(this_object$`total_gross`)) {
        self$`total_gross` <- this_object$`total_gross`
      }
      if (!is.null(this_object$`total_net`)) {
        self$`total_net` <- this_object$`total_net`
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
    #' @return PayrollSummaryItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PayrollSummaryItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollSummaryItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`employee_count` <- this_object$`employee_count`
      self$`month` <- this_object$`month`
      self$`status` <- PayrollRunStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`total_employer_cost` <- this_object$`total_employer_cost`
      self$`total_gross` <- this_object$`total_gross`
      self$`total_net` <- this_object$`total_net`
      self$`year` <- this_object$`year`
      self
    },

    #' @description
    #' Validate JSON input with respect to PayrollSummaryItem and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PayrollSummaryItem: the required field `employee_count` is missing."))
      }
      # check the required field `month`
      if (!is.null(input_json$`month`)) {
        if (!(is.character(input_json$`month`) && length(input_json$`month`) == 1)) {
          stop(paste("Error! Invalid data for `month`. Must be a string:", input_json$`month`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollSummaryItem: the required field `month` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollSummaryItem: the required field `status` is missing."))
      }
      # check the required field `total_employer_cost`
      if (!is.null(input_json$`total_employer_cost`)) {
        if (!(is.character(input_json$`total_employer_cost`) && length(input_json$`total_employer_cost`) == 1)) {
          stop(paste("Error! Invalid data for `total_employer_cost`. Must be a string:", input_json$`total_employer_cost`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollSummaryItem: the required field `total_employer_cost` is missing."))
      }
      # check the required field `total_gross`
      if (!is.null(input_json$`total_gross`)) {
        if (!(is.character(input_json$`total_gross`) && length(input_json$`total_gross`) == 1)) {
          stop(paste("Error! Invalid data for `total_gross`. Must be a string:", input_json$`total_gross`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollSummaryItem: the required field `total_gross` is missing."))
      }
      # check the required field `total_net`
      if (!is.null(input_json$`total_net`)) {
        if (!(is.character(input_json$`total_net`) && length(input_json$`total_net`) == 1)) {
          stop(paste("Error! Invalid data for `total_net`. Must be a string:", input_json$`total_net`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollSummaryItem: the required field `total_net` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollSummaryItem: the required field `year` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PayrollSummaryItem
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

      # check if the required `month` is null
      if (is.null(self$`month`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `total_employer_cost` is null
      if (is.null(self$`total_employer_cost`)) {
        return(FALSE)
      }

      # check if the required `total_gross` is null
      if (is.null(self$`total_gross`)) {
        return(FALSE)
      }

      # check if the required `total_net` is null
      if (is.null(self$`total_net`)) {
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
      # check if the required `employee_count` is null
      if (is.null(self$`employee_count`)) {
        invalid_fields["employee_count"] <- "Non-nullable required field `employee_count` cannot be null."
      }

      # check if the required `month` is null
      if (is.null(self$`month`)) {
        invalid_fields["month"] <- "Non-nullable required field `month` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `total_employer_cost` is null
      if (is.null(self$`total_employer_cost`)) {
        invalid_fields["total_employer_cost"] <- "Non-nullable required field `total_employer_cost` cannot be null."
      }

      # check if the required `total_gross` is null
      if (is.null(self$`total_gross`)) {
        invalid_fields["total_gross"] <- "Non-nullable required field `total_gross` cannot be null."
      }

      # check if the required `total_net` is null
      if (is.null(self$`total_net`)) {
        invalid_fields["total_net"] <- "Non-nullable required field `total_net` cannot be null."
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
# PayrollSummaryItem$unlock()
#
## Below is an example to define the print function
# PayrollSummaryItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PayrollSummaryItem$lock()

