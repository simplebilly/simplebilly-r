#' Create a new TenantSettings
#'
#' @description
#' TenantSettings Class
#'
#' @docType class
#' @title TenantSettings
#' @description TenantSettings Class
#' @format An \code{R6Class} generator object
#' @field companyType  \link{CompanyType}
#' @field dpaAcceptedAt  character [optional]
#' @field dpaAcceptedBy  character [optional]
#' @field dpaVersion  character [optional]
#' @field features Active feature toggles for the tenant. \link{AnyType}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TenantSettings <- R6::R6Class(
  "TenantSettings",
  public = list(
    `companyType` = NULL,
    `dpaAcceptedAt` = NULL,
    `dpaAcceptedBy` = NULL,
    `dpaVersion` = NULL,
    `features` = NULL,

    #' @description
    #' Initialize a new TenantSettings class.
    #'
    #' @param companyType companyType
    #' @param features Active feature toggles for the tenant.
    #' @param dpaAcceptedAt dpaAcceptedAt
    #' @param dpaAcceptedBy dpaAcceptedBy
    #' @param dpaVersion dpaVersion
    #' @param ... Other optional arguments.
    initialize = function(`companyType`, `features`, `dpaAcceptedAt` = NULL, `dpaAcceptedBy` = NULL, `dpaVersion` = NULL, ...) {
      if (!missing(`companyType`)) {
        if (!(`companyType` %in% c())) {
          stop(paste("Error! \"", `companyType`, "\" cannot be assigned to `companyType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`companyType`))
        self$`companyType` <- `companyType`
      }
      if (!missing(`features`)) {
        stopifnot(R6::is.R6(`features`))
        self$`features` <- `features`
      }
      if (!is.null(`dpaAcceptedAt`)) {
        if (!is.character(`dpaAcceptedAt`)) {
          stop(paste("Error! Invalid data for `dpaAcceptedAt`. Must be a string:", `dpaAcceptedAt`))
        }
        self$`dpaAcceptedAt` <- `dpaAcceptedAt`
      }
      if (!is.null(`dpaAcceptedBy`)) {
        if (!(is.character(`dpaAcceptedBy`) && length(`dpaAcceptedBy`) == 1)) {
          stop(paste("Error! Invalid data for `dpaAcceptedBy`. Must be a string:", `dpaAcceptedBy`))
        }
        self$`dpaAcceptedBy` <- `dpaAcceptedBy`
      }
      if (!is.null(`dpaVersion`)) {
        if (!(is.character(`dpaVersion`) && length(`dpaVersion`) == 1)) {
          stop(paste("Error! Invalid data for `dpaVersion`. Must be a string:", `dpaVersion`))
        }
        self$`dpaVersion` <- `dpaVersion`
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
    #' @return TenantSettings as a base R list.
    #' @examples
    #' # convert array of TenantSettings (x) to a data frame
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
    #' Convert TenantSettings to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TenantSettingsObject <- list()
      if (!is.null(self$`companyType`)) {
        TenantSettingsObject[["companyType"]] <-
          self$extractSimpleType(self$`companyType`)
      }
      if (!is.null(self$`dpaAcceptedAt`)) {
        TenantSettingsObject[["dpaAcceptedAt"]] <-
          self$`dpaAcceptedAt`
      }
      if (!is.null(self$`dpaAcceptedBy`)) {
        TenantSettingsObject[["dpaAcceptedBy"]] <-
          self$`dpaAcceptedBy`
      }
      if (!is.null(self$`dpaVersion`)) {
        TenantSettingsObject[["dpaVersion"]] <-
          self$`dpaVersion`
      }
      if (!is.null(self$`features`)) {
        TenantSettingsObject[["features"]] <-
          self$extractSimpleType(self$`features`)
      }
      return(TenantSettingsObject)
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
    #' Deserialize JSON string into an instance of TenantSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of TenantSettings
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`companyType`)) {
        `companytype_object` <- CompanyType$new()
        `companytype_object`$fromJSON(jsonlite::toJSON(this_object$`companyType`, auto_unbox = TRUE, digits = NA))
        self$`companyType` <- `companytype_object`
      }
      if (!is.null(this_object$`dpaAcceptedAt`)) {
        self$`dpaAcceptedAt` <- this_object$`dpaAcceptedAt`
      }
      if (!is.null(this_object$`dpaAcceptedBy`)) {
        self$`dpaAcceptedBy` <- this_object$`dpaAcceptedBy`
      }
      if (!is.null(this_object$`dpaVersion`)) {
        self$`dpaVersion` <- this_object$`dpaVersion`
      }
      if (!is.null(this_object$`features`)) {
        `features_object` <- AnyType$new()
        `features_object`$fromJSON(jsonlite::toJSON(this_object$`features`, auto_unbox = TRUE, digits = NA))
        self$`features` <- `features_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TenantSettings in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TenantSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of TenantSettings
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`companyType` <- CompanyType$new()$fromJSON(jsonlite::toJSON(this_object$`companyType`, auto_unbox = TRUE, digits = NA))
      self$`dpaAcceptedAt` <- this_object$`dpaAcceptedAt`
      self$`dpaAcceptedBy` <- this_object$`dpaAcceptedBy`
      self$`dpaVersion` <- this_object$`dpaVersion`
      self$`features` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`features`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to TenantSettings and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `companyType`
      if (!is.null(input_json$`companyType`)) {
        stopifnot(R6::is.R6(input_json$`companyType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TenantSettings: the required field `companyType` is missing."))
      }
      # check the required field `features`
      if (!is.null(input_json$`features`)) {
        stopifnot(R6::is.R6(input_json$`features`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TenantSettings: the required field `features` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TenantSettings
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
# TenantSettings$unlock()
#
## Below is an example to define the print function
# TenantSettings$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TenantSettings$lock()

