#' Create a new UpdateTenantSettings
#'
#' @description
#' Request payload for updating tenant settings.
#'
#' @docType class
#' @title UpdateTenantSettings
#' @description UpdateTenantSettings Class
#' @format An \code{R6Class} generator object
#' @field companyType  \link{CompanyType}
#' @field features  \link{PartialFeatureSettings} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateTenantSettings <- R6::R6Class(
  "UpdateTenantSettings",
  public = list(
    `companyType` = NULL,
    `features` = NULL,

    #' @description
    #' Initialize a new UpdateTenantSettings class.
    #'
    #' @param companyType companyType
    #' @param features features
    #' @param ... Other optional arguments.
    initialize = function(`companyType`, `features` = NULL, ...) {
      if (!missing(`companyType`)) {
        if (!(`companyType` %in% c())) {
          stop(paste("Error! \"", `companyType`, "\" cannot be assigned to `companyType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`companyType`))
        self$`companyType` <- `companyType`
      }
      if (!is.null(`features`)) {
        stopifnot(R6::is.R6(`features`))
        self$`features` <- `features`
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
    #' @return UpdateTenantSettings as a base R list.
    #' @examples
    #' # convert array of UpdateTenantSettings (x) to a data frame
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
    #' Convert UpdateTenantSettings to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdateTenantSettingsObject <- list()
      if (!is.null(self$`companyType`)) {
        UpdateTenantSettingsObject[["companyType"]] <-
          self$extractSimpleType(self$`companyType`)
      }
      if (!is.null(self$`features`)) {
        UpdateTenantSettingsObject[["features"]] <-
          self$extractSimpleType(self$`features`)
      }
      return(UpdateTenantSettingsObject)
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
    #' Deserialize JSON string into an instance of UpdateTenantSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateTenantSettings
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`companyType`)) {
        `companytype_object` <- CompanyType$new()
        `companytype_object`$fromJSON(jsonlite::toJSON(this_object$`companyType`, auto_unbox = TRUE, digits = NA))
        self$`companyType` <- `companytype_object`
      }
      if (!is.null(this_object$`features`)) {
        `features_object` <- PartialFeatureSettings$new()
        `features_object`$fromJSON(jsonlite::toJSON(this_object$`features`, auto_unbox = TRUE, digits = NA))
        self$`features` <- `features_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UpdateTenantSettings in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateTenantSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateTenantSettings
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`companyType` <- CompanyType$new()$fromJSON(jsonlite::toJSON(this_object$`companyType`, auto_unbox = TRUE, digits = NA))
      self$`features` <- PartialFeatureSettings$new()$fromJSON(jsonlite::toJSON(this_object$`features`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateTenantSettings and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `companyType`
      if (!is.null(input_json$`companyType`)) {
        stopifnot(R6::is.R6(input_json$`companyType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UpdateTenantSettings: the required field `companyType` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateTenantSettings
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `companyType` is null
      if (is.null(self$`companyType`)) {
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
      # check if the required `companyType` is null
      if (is.null(self$`companyType`)) {
        invalid_fields["companyType"] <- "Non-nullable required field `companyType` cannot be null."
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
# UpdateTenantSettings$unlock()
#
## Below is an example to define the print function
# UpdateTenantSettings$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateTenantSettings$lock()

