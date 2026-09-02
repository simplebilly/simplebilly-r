#' Create a new PayrollEntryApi
#'
#' @description
#' PayrollEntryApi Class
#'
#' @docType class
#' @title PayrollEntryApi
#' @description PayrollEntryApi Class
#' @format An \code{R6Class} generator object
#' @field av_employee  character
#' @field av_employer  character
#' @field church_tax_amount  character
#' @field employee  \link{Employee} [optional]
#' @field employee_id  character
#' @field entry_id  character
#' @field extra_payment_reason  character [optional]
#' @field extra_payments  character
#' @field gross_salary  character
#' @field kv_employee  character
#' @field kv_employer  character
#' @field lohnsteuer  character
#' @field net_salary  character
#' @field notes  character [optional]
#' @field pv_employee  character
#' @field pv_employer  character
#' @field run_id  character
#' @field rv_employee  character
#' @field rv_employer  character
#' @field sick_days  integer
#' @field soli  character
#' @field status  \link{PayrollRunStatus}
#' @field total_deductions  character
#' @field total_employer_cost  character
#' @field vacation_days_used  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PayrollEntryApi <- R6::R6Class(
  "PayrollEntryApi",
  public = list(
    `av_employee` = NULL,
    `av_employer` = NULL,
    `church_tax_amount` = NULL,
    `employee` = NULL,
    `employee_id` = NULL,
    `entry_id` = NULL,
    `extra_payment_reason` = NULL,
    `extra_payments` = NULL,
    `gross_salary` = NULL,
    `kv_employee` = NULL,
    `kv_employer` = NULL,
    `lohnsteuer` = NULL,
    `net_salary` = NULL,
    `notes` = NULL,
    `pv_employee` = NULL,
    `pv_employer` = NULL,
    `run_id` = NULL,
    `rv_employee` = NULL,
    `rv_employer` = NULL,
    `sick_days` = NULL,
    `soli` = NULL,
    `status` = NULL,
    `total_deductions` = NULL,
    `total_employer_cost` = NULL,
    `vacation_days_used` = NULL,

    #' @description
    #' Initialize a new PayrollEntryApi class.
    #'
    #' @param av_employee av_employee
    #' @param av_employer av_employer
    #' @param church_tax_amount church_tax_amount
    #' @param employee_id employee_id
    #' @param entry_id entry_id
    #' @param extra_payments extra_payments
    #' @param gross_salary gross_salary
    #' @param kv_employee kv_employee
    #' @param kv_employer kv_employer
    #' @param lohnsteuer lohnsteuer
    #' @param net_salary net_salary
    #' @param pv_employee pv_employee
    #' @param pv_employer pv_employer
    #' @param run_id run_id
    #' @param rv_employee rv_employee
    #' @param rv_employer rv_employer
    #' @param sick_days sick_days
    #' @param soli soli
    #' @param status status
    #' @param total_deductions total_deductions
    #' @param total_employer_cost total_employer_cost
    #' @param vacation_days_used vacation_days_used
    #' @param employee employee
    #' @param extra_payment_reason extra_payment_reason
    #' @param notes notes
    #' @param ... Other optional arguments.
    initialize = function(`av_employee`, `av_employer`, `church_tax_amount`, `employee_id`, `entry_id`, `extra_payments`, `gross_salary`, `kv_employee`, `kv_employer`, `lohnsteuer`, `net_salary`, `pv_employee`, `pv_employer`, `run_id`, `rv_employee`, `rv_employer`, `sick_days`, `soli`, `status`, `total_deductions`, `total_employer_cost`, `vacation_days_used`, `employee` = NULL, `extra_payment_reason` = NULL, `notes` = NULL, ...) {
      if (!missing(`av_employee`)) {
        if (!(is.character(`av_employee`) && length(`av_employee`) == 1)) {
          stop(paste("Error! Invalid data for `av_employee`. Must be a string:", `av_employee`))
        }
        self$`av_employee` <- `av_employee`
      }
      if (!missing(`av_employer`)) {
        if (!(is.character(`av_employer`) && length(`av_employer`) == 1)) {
          stop(paste("Error! Invalid data for `av_employer`. Must be a string:", `av_employer`))
        }
        self$`av_employer` <- `av_employer`
      }
      if (!missing(`church_tax_amount`)) {
        if (!(is.character(`church_tax_amount`) && length(`church_tax_amount`) == 1)) {
          stop(paste("Error! Invalid data for `church_tax_amount`. Must be a string:", `church_tax_amount`))
        }
        self$`church_tax_amount` <- `church_tax_amount`
      }
      if (!missing(`employee_id`)) {
        if (!(is.character(`employee_id`) && length(`employee_id`) == 1)) {
          stop(paste("Error! Invalid data for `employee_id`. Must be a string:", `employee_id`))
        }
        self$`employee_id` <- `employee_id`
      }
      if (!missing(`entry_id`)) {
        if (!(is.character(`entry_id`) && length(`entry_id`) == 1)) {
          stop(paste("Error! Invalid data for `entry_id`. Must be a string:", `entry_id`))
        }
        self$`entry_id` <- `entry_id`
      }
      if (!missing(`extra_payments`)) {
        if (!(is.character(`extra_payments`) && length(`extra_payments`) == 1)) {
          stop(paste("Error! Invalid data for `extra_payments`. Must be a string:", `extra_payments`))
        }
        self$`extra_payments` <- `extra_payments`
      }
      if (!missing(`gross_salary`)) {
        if (!(is.character(`gross_salary`) && length(`gross_salary`) == 1)) {
          stop(paste("Error! Invalid data for `gross_salary`. Must be a string:", `gross_salary`))
        }
        self$`gross_salary` <- `gross_salary`
      }
      if (!missing(`kv_employee`)) {
        if (!(is.character(`kv_employee`) && length(`kv_employee`) == 1)) {
          stop(paste("Error! Invalid data for `kv_employee`. Must be a string:", `kv_employee`))
        }
        self$`kv_employee` <- `kv_employee`
      }
      if (!missing(`kv_employer`)) {
        if (!(is.character(`kv_employer`) && length(`kv_employer`) == 1)) {
          stop(paste("Error! Invalid data for `kv_employer`. Must be a string:", `kv_employer`))
        }
        self$`kv_employer` <- `kv_employer`
      }
      if (!missing(`lohnsteuer`)) {
        if (!(is.character(`lohnsteuer`) && length(`lohnsteuer`) == 1)) {
          stop(paste("Error! Invalid data for `lohnsteuer`. Must be a string:", `lohnsteuer`))
        }
        self$`lohnsteuer` <- `lohnsteuer`
      }
      if (!missing(`net_salary`)) {
        if (!(is.character(`net_salary`) && length(`net_salary`) == 1)) {
          stop(paste("Error! Invalid data for `net_salary`. Must be a string:", `net_salary`))
        }
        self$`net_salary` <- `net_salary`
      }
      if (!missing(`pv_employee`)) {
        if (!(is.character(`pv_employee`) && length(`pv_employee`) == 1)) {
          stop(paste("Error! Invalid data for `pv_employee`. Must be a string:", `pv_employee`))
        }
        self$`pv_employee` <- `pv_employee`
      }
      if (!missing(`pv_employer`)) {
        if (!(is.character(`pv_employer`) && length(`pv_employer`) == 1)) {
          stop(paste("Error! Invalid data for `pv_employer`. Must be a string:", `pv_employer`))
        }
        self$`pv_employer` <- `pv_employer`
      }
      if (!missing(`run_id`)) {
        if (!(is.character(`run_id`) && length(`run_id`) == 1)) {
          stop(paste("Error! Invalid data for `run_id`. Must be a string:", `run_id`))
        }
        self$`run_id` <- `run_id`
      }
      if (!missing(`rv_employee`)) {
        if (!(is.character(`rv_employee`) && length(`rv_employee`) == 1)) {
          stop(paste("Error! Invalid data for `rv_employee`. Must be a string:", `rv_employee`))
        }
        self$`rv_employee` <- `rv_employee`
      }
      if (!missing(`rv_employer`)) {
        if (!(is.character(`rv_employer`) && length(`rv_employer`) == 1)) {
          stop(paste("Error! Invalid data for `rv_employer`. Must be a string:", `rv_employer`))
        }
        self$`rv_employer` <- `rv_employer`
      }
      if (!missing(`sick_days`)) {
        if (!(is.numeric(`sick_days`) && length(`sick_days`) == 1)) {
          stop(paste("Error! Invalid data for `sick_days`. Must be an integer:", `sick_days`))
        }
        self$`sick_days` <- `sick_days`
      }
      if (!missing(`soli`)) {
        if (!(is.character(`soli`) && length(`soli`) == 1)) {
          stop(paste("Error! Invalid data for `soli`. Must be a string:", `soli`))
        }
        self$`soli` <- `soli`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`total_deductions`)) {
        if (!(is.character(`total_deductions`) && length(`total_deductions`) == 1)) {
          stop(paste("Error! Invalid data for `total_deductions`. Must be a string:", `total_deductions`))
        }
        self$`total_deductions` <- `total_deductions`
      }
      if (!missing(`total_employer_cost`)) {
        if (!(is.character(`total_employer_cost`) && length(`total_employer_cost`) == 1)) {
          stop(paste("Error! Invalid data for `total_employer_cost`. Must be a string:", `total_employer_cost`))
        }
        self$`total_employer_cost` <- `total_employer_cost`
      }
      if (!missing(`vacation_days_used`)) {
        if (!(is.numeric(`vacation_days_used`) && length(`vacation_days_used`) == 1)) {
          stop(paste("Error! Invalid data for `vacation_days_used`. Must be an integer:", `vacation_days_used`))
        }
        self$`vacation_days_used` <- `vacation_days_used`
      }
      if (!is.null(`employee`)) {
        stopifnot(R6::is.R6(`employee`))
        self$`employee` <- `employee`
      }
      if (!is.null(`extra_payment_reason`)) {
        if (!(is.character(`extra_payment_reason`) && length(`extra_payment_reason`) == 1)) {
          stop(paste("Error! Invalid data for `extra_payment_reason`. Must be a string:", `extra_payment_reason`))
        }
        self$`extra_payment_reason` <- `extra_payment_reason`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
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
    #' @return PayrollEntryApi as a base R list.
    #' @examples
    #' # convert array of PayrollEntryApi (x) to a data frame
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
    #' Convert PayrollEntryApi to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PayrollEntryApiObject <- list()
      if (!is.null(self$`av_employee`)) {
        PayrollEntryApiObject[["av_employee"]] <-
          self$`av_employee`
      }
      if (!is.null(self$`av_employer`)) {
        PayrollEntryApiObject[["av_employer"]] <-
          self$`av_employer`
      }
      if (!is.null(self$`church_tax_amount`)) {
        PayrollEntryApiObject[["church_tax_amount"]] <-
          self$`church_tax_amount`
      }
      if (!is.null(self$`employee`)) {
        PayrollEntryApiObject[["employee"]] <-
          self$extractSimpleType(self$`employee`)
      }
      if (!is.null(self$`employee_id`)) {
        PayrollEntryApiObject[["employee_id"]] <-
          self$`employee_id`
      }
      if (!is.null(self$`entry_id`)) {
        PayrollEntryApiObject[["entry_id"]] <-
          self$`entry_id`
      }
      if (!is.null(self$`extra_payment_reason`)) {
        PayrollEntryApiObject[["extra_payment_reason"]] <-
          self$`extra_payment_reason`
      }
      if (!is.null(self$`extra_payments`)) {
        PayrollEntryApiObject[["extra_payments"]] <-
          self$`extra_payments`
      }
      if (!is.null(self$`gross_salary`)) {
        PayrollEntryApiObject[["gross_salary"]] <-
          self$`gross_salary`
      }
      if (!is.null(self$`kv_employee`)) {
        PayrollEntryApiObject[["kv_employee"]] <-
          self$`kv_employee`
      }
      if (!is.null(self$`kv_employer`)) {
        PayrollEntryApiObject[["kv_employer"]] <-
          self$`kv_employer`
      }
      if (!is.null(self$`lohnsteuer`)) {
        PayrollEntryApiObject[["lohnsteuer"]] <-
          self$`lohnsteuer`
      }
      if (!is.null(self$`net_salary`)) {
        PayrollEntryApiObject[["net_salary"]] <-
          self$`net_salary`
      }
      if (!is.null(self$`notes`)) {
        PayrollEntryApiObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`pv_employee`)) {
        PayrollEntryApiObject[["pv_employee"]] <-
          self$`pv_employee`
      }
      if (!is.null(self$`pv_employer`)) {
        PayrollEntryApiObject[["pv_employer"]] <-
          self$`pv_employer`
      }
      if (!is.null(self$`run_id`)) {
        PayrollEntryApiObject[["run_id"]] <-
          self$`run_id`
      }
      if (!is.null(self$`rv_employee`)) {
        PayrollEntryApiObject[["rv_employee"]] <-
          self$`rv_employee`
      }
      if (!is.null(self$`rv_employer`)) {
        PayrollEntryApiObject[["rv_employer"]] <-
          self$`rv_employer`
      }
      if (!is.null(self$`sick_days`)) {
        PayrollEntryApiObject[["sick_days"]] <-
          self$`sick_days`
      }
      if (!is.null(self$`soli`)) {
        PayrollEntryApiObject[["soli"]] <-
          self$`soli`
      }
      if (!is.null(self$`status`)) {
        PayrollEntryApiObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`total_deductions`)) {
        PayrollEntryApiObject[["total_deductions"]] <-
          self$`total_deductions`
      }
      if (!is.null(self$`total_employer_cost`)) {
        PayrollEntryApiObject[["total_employer_cost"]] <-
          self$`total_employer_cost`
      }
      if (!is.null(self$`vacation_days_used`)) {
        PayrollEntryApiObject[["vacation_days_used"]] <-
          self$`vacation_days_used`
      }
      return(PayrollEntryApiObject)
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
    #' Deserialize JSON string into an instance of PayrollEntryApi
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollEntryApi
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`av_employee`)) {
        self$`av_employee` <- this_object$`av_employee`
      }
      if (!is.null(this_object$`av_employer`)) {
        self$`av_employer` <- this_object$`av_employer`
      }
      if (!is.null(this_object$`church_tax_amount`)) {
        self$`church_tax_amount` <- this_object$`church_tax_amount`
      }
      if (!is.null(this_object$`employee`)) {
        `employee_object` <- Employee$new()
        `employee_object`$fromJSON(jsonlite::toJSON(this_object$`employee`, auto_unbox = TRUE, digits = NA))
        self$`employee` <- `employee_object`
      }
      if (!is.null(this_object$`employee_id`)) {
        self$`employee_id` <- this_object$`employee_id`
      }
      if (!is.null(this_object$`entry_id`)) {
        self$`entry_id` <- this_object$`entry_id`
      }
      if (!is.null(this_object$`extra_payment_reason`)) {
        self$`extra_payment_reason` <- this_object$`extra_payment_reason`
      }
      if (!is.null(this_object$`extra_payments`)) {
        self$`extra_payments` <- this_object$`extra_payments`
      }
      if (!is.null(this_object$`gross_salary`)) {
        self$`gross_salary` <- this_object$`gross_salary`
      }
      if (!is.null(this_object$`kv_employee`)) {
        self$`kv_employee` <- this_object$`kv_employee`
      }
      if (!is.null(this_object$`kv_employer`)) {
        self$`kv_employer` <- this_object$`kv_employer`
      }
      if (!is.null(this_object$`lohnsteuer`)) {
        self$`lohnsteuer` <- this_object$`lohnsteuer`
      }
      if (!is.null(this_object$`net_salary`)) {
        self$`net_salary` <- this_object$`net_salary`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`pv_employee`)) {
        self$`pv_employee` <- this_object$`pv_employee`
      }
      if (!is.null(this_object$`pv_employer`)) {
        self$`pv_employer` <- this_object$`pv_employer`
      }
      if (!is.null(this_object$`run_id`)) {
        self$`run_id` <- this_object$`run_id`
      }
      if (!is.null(this_object$`rv_employee`)) {
        self$`rv_employee` <- this_object$`rv_employee`
      }
      if (!is.null(this_object$`rv_employer`)) {
        self$`rv_employer` <- this_object$`rv_employer`
      }
      if (!is.null(this_object$`sick_days`)) {
        self$`sick_days` <- this_object$`sick_days`
      }
      if (!is.null(this_object$`soli`)) {
        self$`soli` <- this_object$`soli`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- PayrollRunStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`total_deductions`)) {
        self$`total_deductions` <- this_object$`total_deductions`
      }
      if (!is.null(this_object$`total_employer_cost`)) {
        self$`total_employer_cost` <- this_object$`total_employer_cost`
      }
      if (!is.null(this_object$`vacation_days_used`)) {
        self$`vacation_days_used` <- this_object$`vacation_days_used`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PayrollEntryApi in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PayrollEntryApi
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollEntryApi
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`av_employee` <- this_object$`av_employee`
      self$`av_employer` <- this_object$`av_employer`
      self$`church_tax_amount` <- this_object$`church_tax_amount`
      self$`employee` <- Employee$new()$fromJSON(jsonlite::toJSON(this_object$`employee`, auto_unbox = TRUE, digits = NA))
      self$`employee_id` <- this_object$`employee_id`
      self$`entry_id` <- this_object$`entry_id`
      self$`extra_payment_reason` <- this_object$`extra_payment_reason`
      self$`extra_payments` <- this_object$`extra_payments`
      self$`gross_salary` <- this_object$`gross_salary`
      self$`kv_employee` <- this_object$`kv_employee`
      self$`kv_employer` <- this_object$`kv_employer`
      self$`lohnsteuer` <- this_object$`lohnsteuer`
      self$`net_salary` <- this_object$`net_salary`
      self$`notes` <- this_object$`notes`
      self$`pv_employee` <- this_object$`pv_employee`
      self$`pv_employer` <- this_object$`pv_employer`
      self$`run_id` <- this_object$`run_id`
      self$`rv_employee` <- this_object$`rv_employee`
      self$`rv_employer` <- this_object$`rv_employer`
      self$`sick_days` <- this_object$`sick_days`
      self$`soli` <- this_object$`soli`
      self$`status` <- PayrollRunStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`total_deductions` <- this_object$`total_deductions`
      self$`total_employer_cost` <- this_object$`total_employer_cost`
      self$`vacation_days_used` <- this_object$`vacation_days_used`
      self
    },

    #' @description
    #' Validate JSON input with respect to PayrollEntryApi and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `av_employee`
      if (!is.null(input_json$`av_employee`)) {
        if (!(is.character(input_json$`av_employee`) && length(input_json$`av_employee`) == 1)) {
          stop(paste("Error! Invalid data for `av_employee`. Must be a string:", input_json$`av_employee`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `av_employee` is missing."))
      }
      # check the required field `av_employer`
      if (!is.null(input_json$`av_employer`)) {
        if (!(is.character(input_json$`av_employer`) && length(input_json$`av_employer`) == 1)) {
          stop(paste("Error! Invalid data for `av_employer`. Must be a string:", input_json$`av_employer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `av_employer` is missing."))
      }
      # check the required field `church_tax_amount`
      if (!is.null(input_json$`church_tax_amount`)) {
        if (!(is.character(input_json$`church_tax_amount`) && length(input_json$`church_tax_amount`) == 1)) {
          stop(paste("Error! Invalid data for `church_tax_amount`. Must be a string:", input_json$`church_tax_amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `church_tax_amount` is missing."))
      }
      # check the required field `employee_id`
      if (!is.null(input_json$`employee_id`)) {
        if (!(is.character(input_json$`employee_id`) && length(input_json$`employee_id`) == 1)) {
          stop(paste("Error! Invalid data for `employee_id`. Must be a string:", input_json$`employee_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `employee_id` is missing."))
      }
      # check the required field `entry_id`
      if (!is.null(input_json$`entry_id`)) {
        if (!(is.character(input_json$`entry_id`) && length(input_json$`entry_id`) == 1)) {
          stop(paste("Error! Invalid data for `entry_id`. Must be a string:", input_json$`entry_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `entry_id` is missing."))
      }
      # check the required field `extra_payments`
      if (!is.null(input_json$`extra_payments`)) {
        if (!(is.character(input_json$`extra_payments`) && length(input_json$`extra_payments`) == 1)) {
          stop(paste("Error! Invalid data for `extra_payments`. Must be a string:", input_json$`extra_payments`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `extra_payments` is missing."))
      }
      # check the required field `gross_salary`
      if (!is.null(input_json$`gross_salary`)) {
        if (!(is.character(input_json$`gross_salary`) && length(input_json$`gross_salary`) == 1)) {
          stop(paste("Error! Invalid data for `gross_salary`. Must be a string:", input_json$`gross_salary`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `gross_salary` is missing."))
      }
      # check the required field `kv_employee`
      if (!is.null(input_json$`kv_employee`)) {
        if (!(is.character(input_json$`kv_employee`) && length(input_json$`kv_employee`) == 1)) {
          stop(paste("Error! Invalid data for `kv_employee`. Must be a string:", input_json$`kv_employee`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `kv_employee` is missing."))
      }
      # check the required field `kv_employer`
      if (!is.null(input_json$`kv_employer`)) {
        if (!(is.character(input_json$`kv_employer`) && length(input_json$`kv_employer`) == 1)) {
          stop(paste("Error! Invalid data for `kv_employer`. Must be a string:", input_json$`kv_employer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `kv_employer` is missing."))
      }
      # check the required field `lohnsteuer`
      if (!is.null(input_json$`lohnsteuer`)) {
        if (!(is.character(input_json$`lohnsteuer`) && length(input_json$`lohnsteuer`) == 1)) {
          stop(paste("Error! Invalid data for `lohnsteuer`. Must be a string:", input_json$`lohnsteuer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `lohnsteuer` is missing."))
      }
      # check the required field `net_salary`
      if (!is.null(input_json$`net_salary`)) {
        if (!(is.character(input_json$`net_salary`) && length(input_json$`net_salary`) == 1)) {
          stop(paste("Error! Invalid data for `net_salary`. Must be a string:", input_json$`net_salary`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `net_salary` is missing."))
      }
      # check the required field `pv_employee`
      if (!is.null(input_json$`pv_employee`)) {
        if (!(is.character(input_json$`pv_employee`) && length(input_json$`pv_employee`) == 1)) {
          stop(paste("Error! Invalid data for `pv_employee`. Must be a string:", input_json$`pv_employee`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `pv_employee` is missing."))
      }
      # check the required field `pv_employer`
      if (!is.null(input_json$`pv_employer`)) {
        if (!(is.character(input_json$`pv_employer`) && length(input_json$`pv_employer`) == 1)) {
          stop(paste("Error! Invalid data for `pv_employer`. Must be a string:", input_json$`pv_employer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `pv_employer` is missing."))
      }
      # check the required field `run_id`
      if (!is.null(input_json$`run_id`)) {
        if (!(is.character(input_json$`run_id`) && length(input_json$`run_id`) == 1)) {
          stop(paste("Error! Invalid data for `run_id`. Must be a string:", input_json$`run_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `run_id` is missing."))
      }
      # check the required field `rv_employee`
      if (!is.null(input_json$`rv_employee`)) {
        if (!(is.character(input_json$`rv_employee`) && length(input_json$`rv_employee`) == 1)) {
          stop(paste("Error! Invalid data for `rv_employee`. Must be a string:", input_json$`rv_employee`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `rv_employee` is missing."))
      }
      # check the required field `rv_employer`
      if (!is.null(input_json$`rv_employer`)) {
        if (!(is.character(input_json$`rv_employer`) && length(input_json$`rv_employer`) == 1)) {
          stop(paste("Error! Invalid data for `rv_employer`. Must be a string:", input_json$`rv_employer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `rv_employer` is missing."))
      }
      # check the required field `sick_days`
      if (!is.null(input_json$`sick_days`)) {
        if (!(is.numeric(input_json$`sick_days`) && length(input_json$`sick_days`) == 1)) {
          stop(paste("Error! Invalid data for `sick_days`. Must be an integer:", input_json$`sick_days`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `sick_days` is missing."))
      }
      # check the required field `soli`
      if (!is.null(input_json$`soli`)) {
        if (!(is.character(input_json$`soli`) && length(input_json$`soli`) == 1)) {
          stop(paste("Error! Invalid data for `soli`. Must be a string:", input_json$`soli`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `soli` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `status` is missing."))
      }
      # check the required field `total_deductions`
      if (!is.null(input_json$`total_deductions`)) {
        if (!(is.character(input_json$`total_deductions`) && length(input_json$`total_deductions`) == 1)) {
          stop(paste("Error! Invalid data for `total_deductions`. Must be a string:", input_json$`total_deductions`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `total_deductions` is missing."))
      }
      # check the required field `total_employer_cost`
      if (!is.null(input_json$`total_employer_cost`)) {
        if (!(is.character(input_json$`total_employer_cost`) && length(input_json$`total_employer_cost`) == 1)) {
          stop(paste("Error! Invalid data for `total_employer_cost`. Must be a string:", input_json$`total_employer_cost`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `total_employer_cost` is missing."))
      }
      # check the required field `vacation_days_used`
      if (!is.null(input_json$`vacation_days_used`)) {
        if (!(is.numeric(input_json$`vacation_days_used`) && length(input_json$`vacation_days_used`) == 1)) {
          stop(paste("Error! Invalid data for `vacation_days_used`. Must be an integer:", input_json$`vacation_days_used`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollEntryApi: the required field `vacation_days_used` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PayrollEntryApi
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `av_employee` is null
      if (is.null(self$`av_employee`)) {
        return(FALSE)
      }

      # check if the required `av_employer` is null
      if (is.null(self$`av_employer`)) {
        return(FALSE)
      }

      # check if the required `church_tax_amount` is null
      if (is.null(self$`church_tax_amount`)) {
        return(FALSE)
      }

      # check if the required `employee_id` is null
      if (is.null(self$`employee_id`)) {
        return(FALSE)
      }

      # check if the required `entry_id` is null
      if (is.null(self$`entry_id`)) {
        return(FALSE)
      }

      # check if the required `extra_payments` is null
      if (is.null(self$`extra_payments`)) {
        return(FALSE)
      }

      # check if the required `gross_salary` is null
      if (is.null(self$`gross_salary`)) {
        return(FALSE)
      }

      # check if the required `kv_employee` is null
      if (is.null(self$`kv_employee`)) {
        return(FALSE)
      }

      # check if the required `kv_employer` is null
      if (is.null(self$`kv_employer`)) {
        return(FALSE)
      }

      # check if the required `lohnsteuer` is null
      if (is.null(self$`lohnsteuer`)) {
        return(FALSE)
      }

      # check if the required `net_salary` is null
      if (is.null(self$`net_salary`)) {
        return(FALSE)
      }

      # check if the required `pv_employee` is null
      if (is.null(self$`pv_employee`)) {
        return(FALSE)
      }

      # check if the required `pv_employer` is null
      if (is.null(self$`pv_employer`)) {
        return(FALSE)
      }

      # check if the required `run_id` is null
      if (is.null(self$`run_id`)) {
        return(FALSE)
      }

      # check if the required `rv_employee` is null
      if (is.null(self$`rv_employee`)) {
        return(FALSE)
      }

      # check if the required `rv_employer` is null
      if (is.null(self$`rv_employer`)) {
        return(FALSE)
      }

      # check if the required `sick_days` is null
      if (is.null(self$`sick_days`)) {
        return(FALSE)
      }

      # check if the required `soli` is null
      if (is.null(self$`soli`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `total_deductions` is null
      if (is.null(self$`total_deductions`)) {
        return(FALSE)
      }

      # check if the required `total_employer_cost` is null
      if (is.null(self$`total_employer_cost`)) {
        return(FALSE)
      }

      # check if the required `vacation_days_used` is null
      if (is.null(self$`vacation_days_used`)) {
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
      # check if the required `av_employee` is null
      if (is.null(self$`av_employee`)) {
        invalid_fields["av_employee"] <- "Non-nullable required field `av_employee` cannot be null."
      }

      # check if the required `av_employer` is null
      if (is.null(self$`av_employer`)) {
        invalid_fields["av_employer"] <- "Non-nullable required field `av_employer` cannot be null."
      }

      # check if the required `church_tax_amount` is null
      if (is.null(self$`church_tax_amount`)) {
        invalid_fields["church_tax_amount"] <- "Non-nullable required field `church_tax_amount` cannot be null."
      }

      # check if the required `employee_id` is null
      if (is.null(self$`employee_id`)) {
        invalid_fields["employee_id"] <- "Non-nullable required field `employee_id` cannot be null."
      }

      # check if the required `entry_id` is null
      if (is.null(self$`entry_id`)) {
        invalid_fields["entry_id"] <- "Non-nullable required field `entry_id` cannot be null."
      }

      # check if the required `extra_payments` is null
      if (is.null(self$`extra_payments`)) {
        invalid_fields["extra_payments"] <- "Non-nullable required field `extra_payments` cannot be null."
      }

      # check if the required `gross_salary` is null
      if (is.null(self$`gross_salary`)) {
        invalid_fields["gross_salary"] <- "Non-nullable required field `gross_salary` cannot be null."
      }

      # check if the required `kv_employee` is null
      if (is.null(self$`kv_employee`)) {
        invalid_fields["kv_employee"] <- "Non-nullable required field `kv_employee` cannot be null."
      }

      # check if the required `kv_employer` is null
      if (is.null(self$`kv_employer`)) {
        invalid_fields["kv_employer"] <- "Non-nullable required field `kv_employer` cannot be null."
      }

      # check if the required `lohnsteuer` is null
      if (is.null(self$`lohnsteuer`)) {
        invalid_fields["lohnsteuer"] <- "Non-nullable required field `lohnsteuer` cannot be null."
      }

      # check if the required `net_salary` is null
      if (is.null(self$`net_salary`)) {
        invalid_fields["net_salary"] <- "Non-nullable required field `net_salary` cannot be null."
      }

      # check if the required `pv_employee` is null
      if (is.null(self$`pv_employee`)) {
        invalid_fields["pv_employee"] <- "Non-nullable required field `pv_employee` cannot be null."
      }

      # check if the required `pv_employer` is null
      if (is.null(self$`pv_employer`)) {
        invalid_fields["pv_employer"] <- "Non-nullable required field `pv_employer` cannot be null."
      }

      # check if the required `run_id` is null
      if (is.null(self$`run_id`)) {
        invalid_fields["run_id"] <- "Non-nullable required field `run_id` cannot be null."
      }

      # check if the required `rv_employee` is null
      if (is.null(self$`rv_employee`)) {
        invalid_fields["rv_employee"] <- "Non-nullable required field `rv_employee` cannot be null."
      }

      # check if the required `rv_employer` is null
      if (is.null(self$`rv_employer`)) {
        invalid_fields["rv_employer"] <- "Non-nullable required field `rv_employer` cannot be null."
      }

      # check if the required `sick_days` is null
      if (is.null(self$`sick_days`)) {
        invalid_fields["sick_days"] <- "Non-nullable required field `sick_days` cannot be null."
      }

      # check if the required `soli` is null
      if (is.null(self$`soli`)) {
        invalid_fields["soli"] <- "Non-nullable required field `soli` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `total_deductions` is null
      if (is.null(self$`total_deductions`)) {
        invalid_fields["total_deductions"] <- "Non-nullable required field `total_deductions` cannot be null."
      }

      # check if the required `total_employer_cost` is null
      if (is.null(self$`total_employer_cost`)) {
        invalid_fields["total_employer_cost"] <- "Non-nullable required field `total_employer_cost` cannot be null."
      }

      # check if the required `vacation_days_used` is null
      if (is.null(self$`vacation_days_used`)) {
        invalid_fields["vacation_days_used"] <- "Non-nullable required field `vacation_days_used` cannot be null."
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
# PayrollEntryApi$unlock()
#
## Below is an example to define the print function
# PayrollEntryApi$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PayrollEntryApi$lock()

