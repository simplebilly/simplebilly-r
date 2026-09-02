#' Create a new PayrollRunApi
#'
#' @description
#' PayrollRunApi Class
#'
#' @docType class
#' @title PayrollRunApi
#' @description PayrollRunApi Class
#' @format An \code{R6Class} generator object
#' @field approved_at  character [optional]
#' @field approved_by  character [optional]
#' @field created_at  character
#' @field entries  list(\link{PayrollEntryApi})
#' @field month  integer
#' @field payment_date  character [optional]
#' @field period_label  character
#' @field run_id  character
#' @field status  \link{PayrollRunStatus}
#' @field tenant_id  character
#' @field total_employee_count  integer
#' @field total_employer_cost  character
#' @field total_gross  character
#' @field total_net  character
#' @field total_social_security  character
#' @field total_taxes  character
#' @field updated_at  character [optional]
#' @field year  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PayrollRunApi <- R6::R6Class(
  "PayrollRunApi",
  public = list(
    `approved_at` = NULL,
    `approved_by` = NULL,
    `created_at` = NULL,
    `entries` = NULL,
    `month` = NULL,
    `payment_date` = NULL,
    `period_label` = NULL,
    `run_id` = NULL,
    `status` = NULL,
    `tenant_id` = NULL,
    `total_employee_count` = NULL,
    `total_employer_cost` = NULL,
    `total_gross` = NULL,
    `total_net` = NULL,
    `total_social_security` = NULL,
    `total_taxes` = NULL,
    `updated_at` = NULL,
    `year` = NULL,

    #' @description
    #' Initialize a new PayrollRunApi class.
    #'
    #' @param created_at created_at
    #' @param entries entries
    #' @param month month
    #' @param period_label period_label
    #' @param run_id run_id
    #' @param status status
    #' @param tenant_id tenant_id
    #' @param total_employee_count total_employee_count
    #' @param total_employer_cost total_employer_cost
    #' @param total_gross total_gross
    #' @param total_net total_net
    #' @param total_social_security total_social_security
    #' @param total_taxes total_taxes
    #' @param year year
    #' @param approved_at approved_at
    #' @param approved_by approved_by
    #' @param payment_date payment_date
    #' @param updated_at updated_at
    #' @param ... Other optional arguments.
    initialize = function(`created_at`, `entries`, `month`, `period_label`, `run_id`, `status`, `tenant_id`, `total_employee_count`, `total_employer_cost`, `total_gross`, `total_net`, `total_social_security`, `total_taxes`, `year`, `approved_at` = NULL, `approved_by` = NULL, `payment_date` = NULL, `updated_at` = NULL, ...) {
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`entries`)) {
        stopifnot(is.vector(`entries`), length(`entries`) != 0)
        sapply(`entries`, function(x) stopifnot(R6::is.R6(x)))
        self$`entries` <- `entries`
      }
      if (!missing(`month`)) {
        if (!(is.numeric(`month`) && length(`month`) == 1)) {
          stop(paste("Error! Invalid data for `month`. Must be an integer:", `month`))
        }
        self$`month` <- `month`
      }
      if (!missing(`period_label`)) {
        if (!(is.character(`period_label`) && length(`period_label`) == 1)) {
          stop(paste("Error! Invalid data for `period_label`. Must be a string:", `period_label`))
        }
        self$`period_label` <- `period_label`
      }
      if (!missing(`run_id`)) {
        if (!(is.character(`run_id`) && length(`run_id`) == 1)) {
          stop(paste("Error! Invalid data for `run_id`. Must be a string:", `run_id`))
        }
        self$`run_id` <- `run_id`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`tenant_id`)) {
        if (!(is.character(`tenant_id`) && length(`tenant_id`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_id`. Must be a string:", `tenant_id`))
        }
        self$`tenant_id` <- `tenant_id`
      }
      if (!missing(`total_employee_count`)) {
        if (!(is.numeric(`total_employee_count`) && length(`total_employee_count`) == 1)) {
          stop(paste("Error! Invalid data for `total_employee_count`. Must be an integer:", `total_employee_count`))
        }
        self$`total_employee_count` <- `total_employee_count`
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
      if (!missing(`total_social_security`)) {
        if (!(is.character(`total_social_security`) && length(`total_social_security`) == 1)) {
          stop(paste("Error! Invalid data for `total_social_security`. Must be a string:", `total_social_security`))
        }
        self$`total_social_security` <- `total_social_security`
      }
      if (!missing(`total_taxes`)) {
        if (!(is.character(`total_taxes`) && length(`total_taxes`) == 1)) {
          stop(paste("Error! Invalid data for `total_taxes`. Must be a string:", `total_taxes`))
        }
        self$`total_taxes` <- `total_taxes`
      }
      if (!missing(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
      }
      if (!is.null(`approved_at`)) {
        if (!is.character(`approved_at`)) {
          stop(paste("Error! Invalid data for `approved_at`. Must be a string:", `approved_at`))
        }
        self$`approved_at` <- `approved_at`
      }
      if (!is.null(`approved_by`)) {
        if (!(is.character(`approved_by`) && length(`approved_by`) == 1)) {
          stop(paste("Error! Invalid data for `approved_by`. Must be a string:", `approved_by`))
        }
        self$`approved_by` <- `approved_by`
      }
      if (!is.null(`payment_date`)) {
        if (!is.character(`payment_date`)) {
          stop(paste("Error! Invalid data for `payment_date`. Must be a string:", `payment_date`))
        }
        self$`payment_date` <- `payment_date`
      }
      if (!is.null(`updated_at`)) {
        if (!is.character(`updated_at`)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
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
    #' @return PayrollRunApi as a base R list.
    #' @examples
    #' # convert array of PayrollRunApi (x) to a data frame
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
    #' Convert PayrollRunApi to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PayrollRunApiObject <- list()
      if (!is.null(self$`approved_at`)) {
        PayrollRunApiObject[["approved_at"]] <-
          self$`approved_at`
      }
      if (!is.null(self$`approved_by`)) {
        PayrollRunApiObject[["approved_by"]] <-
          self$`approved_by`
      }
      if (!is.null(self$`created_at`)) {
        PayrollRunApiObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`entries`)) {
        PayrollRunApiObject[["entries"]] <-
          self$extractSimpleType(self$`entries`)
      }
      if (!is.null(self$`month`)) {
        PayrollRunApiObject[["month"]] <-
          self$`month`
      }
      if (!is.null(self$`payment_date`)) {
        PayrollRunApiObject[["payment_date"]] <-
          self$`payment_date`
      }
      if (!is.null(self$`period_label`)) {
        PayrollRunApiObject[["period_label"]] <-
          self$`period_label`
      }
      if (!is.null(self$`run_id`)) {
        PayrollRunApiObject[["run_id"]] <-
          self$`run_id`
      }
      if (!is.null(self$`status`)) {
        PayrollRunApiObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`tenant_id`)) {
        PayrollRunApiObject[["tenant_id"]] <-
          self$`tenant_id`
      }
      if (!is.null(self$`total_employee_count`)) {
        PayrollRunApiObject[["total_employee_count"]] <-
          self$`total_employee_count`
      }
      if (!is.null(self$`total_employer_cost`)) {
        PayrollRunApiObject[["total_employer_cost"]] <-
          self$`total_employer_cost`
      }
      if (!is.null(self$`total_gross`)) {
        PayrollRunApiObject[["total_gross"]] <-
          self$`total_gross`
      }
      if (!is.null(self$`total_net`)) {
        PayrollRunApiObject[["total_net"]] <-
          self$`total_net`
      }
      if (!is.null(self$`total_social_security`)) {
        PayrollRunApiObject[["total_social_security"]] <-
          self$`total_social_security`
      }
      if (!is.null(self$`total_taxes`)) {
        PayrollRunApiObject[["total_taxes"]] <-
          self$`total_taxes`
      }
      if (!is.null(self$`updated_at`)) {
        PayrollRunApiObject[["updated_at"]] <-
          self$`updated_at`
      }
      if (!is.null(self$`year`)) {
        PayrollRunApiObject[["year"]] <-
          self$`year`
      }
      return(PayrollRunApiObject)
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
    #' Deserialize JSON string into an instance of PayrollRunApi
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollRunApi
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`approved_at`)) {
        self$`approved_at` <- this_object$`approved_at`
      }
      if (!is.null(this_object$`approved_by`)) {
        self$`approved_by` <- this_object$`approved_by`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`entries`)) {
        self$`entries` <- ApiClient$new()$deserializeObj(this_object$`entries`, "array[PayrollEntryApi]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`month`)) {
        self$`month` <- this_object$`month`
      }
      if (!is.null(this_object$`payment_date`)) {
        self$`payment_date` <- this_object$`payment_date`
      }
      if (!is.null(this_object$`period_label`)) {
        self$`period_label` <- this_object$`period_label`
      }
      if (!is.null(this_object$`run_id`)) {
        self$`run_id` <- this_object$`run_id`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- PayrollRunStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`tenant_id`)) {
        self$`tenant_id` <- this_object$`tenant_id`
      }
      if (!is.null(this_object$`total_employee_count`)) {
        self$`total_employee_count` <- this_object$`total_employee_count`
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
      if (!is.null(this_object$`total_social_security`)) {
        self$`total_social_security` <- this_object$`total_social_security`
      }
      if (!is.null(this_object$`total_taxes`)) {
        self$`total_taxes` <- this_object$`total_taxes`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
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
    #' @return PayrollRunApi in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PayrollRunApi
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollRunApi
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`approved_at` <- this_object$`approved_at`
      self$`approved_by` <- this_object$`approved_by`
      self$`created_at` <- this_object$`created_at`
      self$`entries` <- ApiClient$new()$deserializeObj(this_object$`entries`, "array[PayrollEntryApi]", loadNamespace("openapi"))
      self$`month` <- this_object$`month`
      self$`payment_date` <- this_object$`payment_date`
      self$`period_label` <- this_object$`period_label`
      self$`run_id` <- this_object$`run_id`
      self$`status` <- PayrollRunStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`tenant_id` <- this_object$`tenant_id`
      self$`total_employee_count` <- this_object$`total_employee_count`
      self$`total_employer_cost` <- this_object$`total_employer_cost`
      self$`total_gross` <- this_object$`total_gross`
      self$`total_net` <- this_object$`total_net`
      self$`total_social_security` <- this_object$`total_social_security`
      self$`total_taxes` <- this_object$`total_taxes`
      self$`updated_at` <- this_object$`updated_at`
      self$`year` <- this_object$`year`
      self
    },

    #' @description
    #' Validate JSON input with respect to PayrollRunApi and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `created_at` is missing."))
      }
      # check the required field `entries`
      if (!is.null(input_json$`entries`)) {
        stopifnot(is.vector(input_json$`entries`), length(input_json$`entries`) != 0)
        tmp <- sapply(input_json$`entries`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `entries` is missing."))
      }
      # check the required field `month`
      if (!is.null(input_json$`month`)) {
        if (!(is.numeric(input_json$`month`) && length(input_json$`month`) == 1)) {
          stop(paste("Error! Invalid data for `month`. Must be an integer:", input_json$`month`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `month` is missing."))
      }
      # check the required field `period_label`
      if (!is.null(input_json$`period_label`)) {
        if (!(is.character(input_json$`period_label`) && length(input_json$`period_label`) == 1)) {
          stop(paste("Error! Invalid data for `period_label`. Must be a string:", input_json$`period_label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `period_label` is missing."))
      }
      # check the required field `run_id`
      if (!is.null(input_json$`run_id`)) {
        if (!(is.character(input_json$`run_id`) && length(input_json$`run_id`) == 1)) {
          stop(paste("Error! Invalid data for `run_id`. Must be a string:", input_json$`run_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `run_id` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `status` is missing."))
      }
      # check the required field `tenant_id`
      if (!is.null(input_json$`tenant_id`)) {
        if (!(is.character(input_json$`tenant_id`) && length(input_json$`tenant_id`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_id`. Must be a string:", input_json$`tenant_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `tenant_id` is missing."))
      }
      # check the required field `total_employee_count`
      if (!is.null(input_json$`total_employee_count`)) {
        if (!(is.numeric(input_json$`total_employee_count`) && length(input_json$`total_employee_count`) == 1)) {
          stop(paste("Error! Invalid data for `total_employee_count`. Must be an integer:", input_json$`total_employee_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `total_employee_count` is missing."))
      }
      # check the required field `total_employer_cost`
      if (!is.null(input_json$`total_employer_cost`)) {
        if (!(is.character(input_json$`total_employer_cost`) && length(input_json$`total_employer_cost`) == 1)) {
          stop(paste("Error! Invalid data for `total_employer_cost`. Must be a string:", input_json$`total_employer_cost`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `total_employer_cost` is missing."))
      }
      # check the required field `total_gross`
      if (!is.null(input_json$`total_gross`)) {
        if (!(is.character(input_json$`total_gross`) && length(input_json$`total_gross`) == 1)) {
          stop(paste("Error! Invalid data for `total_gross`. Must be a string:", input_json$`total_gross`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `total_gross` is missing."))
      }
      # check the required field `total_net`
      if (!is.null(input_json$`total_net`)) {
        if (!(is.character(input_json$`total_net`) && length(input_json$`total_net`) == 1)) {
          stop(paste("Error! Invalid data for `total_net`. Must be a string:", input_json$`total_net`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `total_net` is missing."))
      }
      # check the required field `total_social_security`
      if (!is.null(input_json$`total_social_security`)) {
        if (!(is.character(input_json$`total_social_security`) && length(input_json$`total_social_security`) == 1)) {
          stop(paste("Error! Invalid data for `total_social_security`. Must be a string:", input_json$`total_social_security`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `total_social_security` is missing."))
      }
      # check the required field `total_taxes`
      if (!is.null(input_json$`total_taxes`)) {
        if (!(is.character(input_json$`total_taxes`) && length(input_json$`total_taxes`) == 1)) {
          stop(paste("Error! Invalid data for `total_taxes`. Must be a string:", input_json$`total_taxes`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `total_taxes` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollRunApi: the required field `year` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PayrollRunApi
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `entries` is null
      if (is.null(self$`entries`)) {
        return(FALSE)
      }

      # check if the required `month` is null
      if (is.null(self$`month`)) {
        return(FALSE)
      }

      # check if the required `period_label` is null
      if (is.null(self$`period_label`)) {
        return(FALSE)
      }

      # check if the required `run_id` is null
      if (is.null(self$`run_id`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `tenant_id` is null
      if (is.null(self$`tenant_id`)) {
        return(FALSE)
      }

      # check if the required `total_employee_count` is null
      if (is.null(self$`total_employee_count`)) {
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

      # check if the required `total_social_security` is null
      if (is.null(self$`total_social_security`)) {
        return(FALSE)
      }

      # check if the required `total_taxes` is null
      if (is.null(self$`total_taxes`)) {
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
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `entries` is null
      if (is.null(self$`entries`)) {
        invalid_fields["entries"] <- "Non-nullable required field `entries` cannot be null."
      }

      # check if the required `month` is null
      if (is.null(self$`month`)) {
        invalid_fields["month"] <- "Non-nullable required field `month` cannot be null."
      }

      # check if the required `period_label` is null
      if (is.null(self$`period_label`)) {
        invalid_fields["period_label"] <- "Non-nullable required field `period_label` cannot be null."
      }

      # check if the required `run_id` is null
      if (is.null(self$`run_id`)) {
        invalid_fields["run_id"] <- "Non-nullable required field `run_id` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `tenant_id` is null
      if (is.null(self$`tenant_id`)) {
        invalid_fields["tenant_id"] <- "Non-nullable required field `tenant_id` cannot be null."
      }

      # check if the required `total_employee_count` is null
      if (is.null(self$`total_employee_count`)) {
        invalid_fields["total_employee_count"] <- "Non-nullable required field `total_employee_count` cannot be null."
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

      # check if the required `total_social_security` is null
      if (is.null(self$`total_social_security`)) {
        invalid_fields["total_social_security"] <- "Non-nullable required field `total_social_security` cannot be null."
      }

      # check if the required `total_taxes` is null
      if (is.null(self$`total_taxes`)) {
        invalid_fields["total_taxes"] <- "Non-nullable required field `total_taxes` cannot be null."
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
# PayrollRunApi$unlock()
#
## Below is an example to define the print function
# PayrollRunApi$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PayrollRunApi$lock()

