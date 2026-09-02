#' Create a new QuotaOverrideFeatures
#'
#' @description
#' QuotaOverrideFeatures Class
#'
#' @docType class
#' @title QuotaOverrideFeatures
#' @description QuotaOverrideFeatures Class
#' @format An \code{R6Class} generator object
#' @field erp  character [optional]
#' @field fancy_reports  character [optional]
#' @field tax_automations  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QuotaOverrideFeatures <- R6::R6Class(
  "QuotaOverrideFeatures",
  public = list(
    `erp` = NULL,
    `fancy_reports` = NULL,
    `tax_automations` = NULL,

    #' @description
    #' Initialize a new QuotaOverrideFeatures class.
    #'
    #' @param erp erp
    #' @param fancy_reports fancy_reports
    #' @param tax_automations tax_automations
    #' @param ... Other optional arguments.
    initialize = function(`erp` = NULL, `fancy_reports` = NULL, `tax_automations` = NULL, ...) {
      if (!is.null(`erp`)) {
        if (!(is.logical(`erp`) && length(`erp`) == 1)) {
          stop(paste("Error! Invalid data for `erp`. Must be a boolean:", `erp`))
        }
        self$`erp` <- `erp`
      }
      if (!is.null(`fancy_reports`)) {
        if (!(is.logical(`fancy_reports`) && length(`fancy_reports`) == 1)) {
          stop(paste("Error! Invalid data for `fancy_reports`. Must be a boolean:", `fancy_reports`))
        }
        self$`fancy_reports` <- `fancy_reports`
      }
      if (!is.null(`tax_automations`)) {
        if (!(is.logical(`tax_automations`) && length(`tax_automations`) == 1)) {
          stop(paste("Error! Invalid data for `tax_automations`. Must be a boolean:", `tax_automations`))
        }
        self$`tax_automations` <- `tax_automations`
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
    #' @return QuotaOverrideFeatures as a base R list.
    #' @examples
    #' # convert array of QuotaOverrideFeatures (x) to a data frame
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
    #' Convert QuotaOverrideFeatures to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QuotaOverrideFeaturesObject <- list()
      if (!is.null(self$`erp`)) {
        QuotaOverrideFeaturesObject[["erp"]] <-
          self$`erp`
      }
      if (!is.null(self$`fancy_reports`)) {
        QuotaOverrideFeaturesObject[["fancy_reports"]] <-
          self$`fancy_reports`
      }
      if (!is.null(self$`tax_automations`)) {
        QuotaOverrideFeaturesObject[["tax_automations"]] <-
          self$`tax_automations`
      }
      return(QuotaOverrideFeaturesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QuotaOverrideFeatures
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuotaOverrideFeatures
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`erp`)) {
        self$`erp` <- this_object$`erp`
      }
      if (!is.null(this_object$`fancy_reports`)) {
        self$`fancy_reports` <- this_object$`fancy_reports`
      }
      if (!is.null(this_object$`tax_automations`)) {
        self$`tax_automations` <- this_object$`tax_automations`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QuotaOverrideFeatures in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QuotaOverrideFeatures
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuotaOverrideFeatures
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`erp` <- this_object$`erp`
      self$`fancy_reports` <- this_object$`fancy_reports`
      self$`tax_automations` <- this_object$`tax_automations`
      self
    },

    #' @description
    #' Validate JSON input with respect to QuotaOverrideFeatures and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QuotaOverrideFeatures
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
# QuotaOverrideFeatures$unlock()
#
## Below is an example to define the print function
# QuotaOverrideFeatures$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QuotaOverrideFeatures$lock()

