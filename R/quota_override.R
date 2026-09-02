#' Create a new QuotaOverride
#'
#' @description
#' Schema of the `tenants.quotas` JSON override column. Any field that is present overrides the plan-derived value.
#'
#' @docType class
#' @title QuotaOverride
#' @description QuotaOverride Class
#' @format An \code{R6Class} generator object
#' @field features  \link{QuotaOverrideFeatures} [optional]
#' @field max_connectors  integer [optional]
#' @field max_invoices_per_month  integer [optional]
#' @field max_users  integer [optional]
#' @field metered  named list(integer) [optional]
#' @field plan Custom plan id; unknown ids resolve to enterprise limits. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QuotaOverride <- R6::R6Class(
  "QuotaOverride",
  public = list(
    `features` = NULL,
    `max_connectors` = NULL,
    `max_invoices_per_month` = NULL,
    `max_users` = NULL,
    `metered` = NULL,
    `plan` = NULL,

    #' @description
    #' Initialize a new QuotaOverride class.
    #'
    #' @param features features
    #' @param max_connectors max_connectors
    #' @param max_invoices_per_month max_invoices_per_month
    #' @param max_users max_users
    #' @param metered metered
    #' @param plan Custom plan id; unknown ids resolve to enterprise limits.
    #' @param ... Other optional arguments.
    initialize = function(`features` = NULL, `max_connectors` = NULL, `max_invoices_per_month` = NULL, `max_users` = NULL, `metered` = NULL, `plan` = NULL, ...) {
      if (!is.null(`features`)) {
        stopifnot(R6::is.R6(`features`))
        self$`features` <- `features`
      }
      if (!is.null(`max_connectors`)) {
        if (!(is.numeric(`max_connectors`) && length(`max_connectors`) == 1)) {
          stop(paste("Error! Invalid data for `max_connectors`. Must be an integer:", `max_connectors`))
        }
        self$`max_connectors` <- `max_connectors`
      }
      if (!is.null(`max_invoices_per_month`)) {
        if (!(is.numeric(`max_invoices_per_month`) && length(`max_invoices_per_month`) == 1)) {
          stop(paste("Error! Invalid data for `max_invoices_per_month`. Must be an integer:", `max_invoices_per_month`))
        }
        self$`max_invoices_per_month` <- `max_invoices_per_month`
      }
      if (!is.null(`max_users`)) {
        if (!(is.numeric(`max_users`) && length(`max_users`) == 1)) {
          stop(paste("Error! Invalid data for `max_users`. Must be an integer:", `max_users`))
        }
        self$`max_users` <- `max_users`
      }
      if (!is.null(`metered`)) {
        stopifnot(is.vector(`metered`), length(`metered`) != 0)
        sapply(`metered`, function(x) stopifnot(is.character(x)))
        self$`metered` <- `metered`
      }
      if (!is.null(`plan`)) {
        if (!(is.character(`plan`) && length(`plan`) == 1)) {
          stop(paste("Error! Invalid data for `plan`. Must be a string:", `plan`))
        }
        self$`plan` <- `plan`
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
    #' @return QuotaOverride as a base R list.
    #' @examples
    #' # convert array of QuotaOverride (x) to a data frame
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
    #' Convert QuotaOverride to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QuotaOverrideObject <- list()
      if (!is.null(self$`features`)) {
        QuotaOverrideObject[["features"]] <-
          self$extractSimpleType(self$`features`)
      }
      if (!is.null(self$`max_connectors`)) {
        QuotaOverrideObject[["max_connectors"]] <-
          self$`max_connectors`
      }
      if (!is.null(self$`max_invoices_per_month`)) {
        QuotaOverrideObject[["max_invoices_per_month"]] <-
          self$`max_invoices_per_month`
      }
      if (!is.null(self$`max_users`)) {
        QuotaOverrideObject[["max_users"]] <-
          self$`max_users`
      }
      if (!is.null(self$`metered`)) {
        QuotaOverrideObject[["metered"]] <-
          self$`metered`
      }
      if (!is.null(self$`plan`)) {
        QuotaOverrideObject[["plan"]] <-
          self$`plan`
      }
      return(QuotaOverrideObject)
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
    #' Deserialize JSON string into an instance of QuotaOverride
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuotaOverride
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`features`)) {
        `features_object` <- QuotaOverrideFeatures$new()
        `features_object`$fromJSON(jsonlite::toJSON(this_object$`features`, auto_unbox = TRUE, digits = NA))
        self$`features` <- `features_object`
      }
      if (!is.null(this_object$`max_connectors`)) {
        self$`max_connectors` <- this_object$`max_connectors`
      }
      if (!is.null(this_object$`max_invoices_per_month`)) {
        self$`max_invoices_per_month` <- this_object$`max_invoices_per_month`
      }
      if (!is.null(this_object$`max_users`)) {
        self$`max_users` <- this_object$`max_users`
      }
      if (!is.null(this_object$`metered`)) {
        self$`metered` <- ApiClient$new()$deserializeObj(this_object$`metered`, "map(integer)", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`plan`)) {
        self$`plan` <- this_object$`plan`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QuotaOverride in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QuotaOverride
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuotaOverride
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`features` <- QuotaOverrideFeatures$new()$fromJSON(jsonlite::toJSON(this_object$`features`, auto_unbox = TRUE, digits = NA))
      self$`max_connectors` <- this_object$`max_connectors`
      self$`max_invoices_per_month` <- this_object$`max_invoices_per_month`
      self$`max_users` <- this_object$`max_users`
      self$`metered` <- ApiClient$new()$deserializeObj(this_object$`metered`, "map(integer)", loadNamespace("openapi"))
      self$`plan` <- this_object$`plan`
      self
    },

    #' @description
    #' Validate JSON input with respect to QuotaOverride and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QuotaOverride
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# QuotaOverride$unlock()
#
## Below is an example to define the print function
# QuotaOverride$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QuotaOverride$lock()

