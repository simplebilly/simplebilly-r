#' Create a new PartialFeatureSettings
#'
#' @description
#' Partial feature toggles: `None` keeps the company-type default, `Some` overrides it.
#'
#' @docType class
#' @title PartialFeatureSettings
#' @description PartialFeatureSettings Class
#' @format An \code{R6Class} generator object
#' @field onlineshop  character [optional]
#' @field reportBilanz  character [optional]
#' @field reportBwa  character [optional]
#' @field reportEuer  character [optional]
#' @field reportGewerbesteuer  character [optional]
#' @field reportGuv  character [optional]
#' @field reportKst  character [optional]
#' @field reportUstva  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PartialFeatureSettings <- R6::R6Class(
  "PartialFeatureSettings",
  public = list(
    `onlineshop` = NULL,
    `reportBilanz` = NULL,
    `reportBwa` = NULL,
    `reportEuer` = NULL,
    `reportGewerbesteuer` = NULL,
    `reportGuv` = NULL,
    `reportKst` = NULL,
    `reportUstva` = NULL,

    #' @description
    #' Initialize a new PartialFeatureSettings class.
    #'
    #' @param onlineshop onlineshop
    #' @param reportBilanz reportBilanz
    #' @param reportBwa reportBwa
    #' @param reportEuer reportEuer
    #' @param reportGewerbesteuer reportGewerbesteuer
    #' @param reportGuv reportGuv
    #' @param reportKst reportKst
    #' @param reportUstva reportUstva
    #' @param ... Other optional arguments.
    initialize = function(`onlineshop` = NULL, `reportBilanz` = NULL, `reportBwa` = NULL, `reportEuer` = NULL, `reportGewerbesteuer` = NULL, `reportGuv` = NULL, `reportKst` = NULL, `reportUstva` = NULL, ...) {
      if (!is.null(`onlineshop`)) {
        if (!(is.logical(`onlineshop`) && length(`onlineshop`) == 1)) {
          stop(paste("Error! Invalid data for `onlineshop`. Must be a boolean:", `onlineshop`))
        }
        self$`onlineshop` <- `onlineshop`
      }
      if (!is.null(`reportBilanz`)) {
        if (!(is.logical(`reportBilanz`) && length(`reportBilanz`) == 1)) {
          stop(paste("Error! Invalid data for `reportBilanz`. Must be a boolean:", `reportBilanz`))
        }
        self$`reportBilanz` <- `reportBilanz`
      }
      if (!is.null(`reportBwa`)) {
        if (!(is.logical(`reportBwa`) && length(`reportBwa`) == 1)) {
          stop(paste("Error! Invalid data for `reportBwa`. Must be a boolean:", `reportBwa`))
        }
        self$`reportBwa` <- `reportBwa`
      }
      if (!is.null(`reportEuer`)) {
        if (!(is.logical(`reportEuer`) && length(`reportEuer`) == 1)) {
          stop(paste("Error! Invalid data for `reportEuer`. Must be a boolean:", `reportEuer`))
        }
        self$`reportEuer` <- `reportEuer`
      }
      if (!is.null(`reportGewerbesteuer`)) {
        if (!(is.logical(`reportGewerbesteuer`) && length(`reportGewerbesteuer`) == 1)) {
          stop(paste("Error! Invalid data for `reportGewerbesteuer`. Must be a boolean:", `reportGewerbesteuer`))
        }
        self$`reportGewerbesteuer` <- `reportGewerbesteuer`
      }
      if (!is.null(`reportGuv`)) {
        if (!(is.logical(`reportGuv`) && length(`reportGuv`) == 1)) {
          stop(paste("Error! Invalid data for `reportGuv`. Must be a boolean:", `reportGuv`))
        }
        self$`reportGuv` <- `reportGuv`
      }
      if (!is.null(`reportKst`)) {
        if (!(is.logical(`reportKst`) && length(`reportKst`) == 1)) {
          stop(paste("Error! Invalid data for `reportKst`. Must be a boolean:", `reportKst`))
        }
        self$`reportKst` <- `reportKst`
      }
      if (!is.null(`reportUstva`)) {
        if (!(is.logical(`reportUstva`) && length(`reportUstva`) == 1)) {
          stop(paste("Error! Invalid data for `reportUstva`. Must be a boolean:", `reportUstva`))
        }
        self$`reportUstva` <- `reportUstva`
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
    #' @return PartialFeatureSettings as a base R list.
    #' @examples
    #' # convert array of PartialFeatureSettings (x) to a data frame
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
    #' Convert PartialFeatureSettings to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PartialFeatureSettingsObject <- list()
      if (!is.null(self$`onlineshop`)) {
        PartialFeatureSettingsObject[["onlineshop"]] <-
          self$`onlineshop`
      }
      if (!is.null(self$`reportBilanz`)) {
        PartialFeatureSettingsObject[["reportBilanz"]] <-
          self$`reportBilanz`
      }
      if (!is.null(self$`reportBwa`)) {
        PartialFeatureSettingsObject[["reportBwa"]] <-
          self$`reportBwa`
      }
      if (!is.null(self$`reportEuer`)) {
        PartialFeatureSettingsObject[["reportEuer"]] <-
          self$`reportEuer`
      }
      if (!is.null(self$`reportGewerbesteuer`)) {
        PartialFeatureSettingsObject[["reportGewerbesteuer"]] <-
          self$`reportGewerbesteuer`
      }
      if (!is.null(self$`reportGuv`)) {
        PartialFeatureSettingsObject[["reportGuv"]] <-
          self$`reportGuv`
      }
      if (!is.null(self$`reportKst`)) {
        PartialFeatureSettingsObject[["reportKst"]] <-
          self$`reportKst`
      }
      if (!is.null(self$`reportUstva`)) {
        PartialFeatureSettingsObject[["reportUstva"]] <-
          self$`reportUstva`
      }
      return(PartialFeatureSettingsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PartialFeatureSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of PartialFeatureSettings
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`onlineshop`)) {
        self$`onlineshop` <- this_object$`onlineshop`
      }
      if (!is.null(this_object$`reportBilanz`)) {
        self$`reportBilanz` <- this_object$`reportBilanz`
      }
      if (!is.null(this_object$`reportBwa`)) {
        self$`reportBwa` <- this_object$`reportBwa`
      }
      if (!is.null(this_object$`reportEuer`)) {
        self$`reportEuer` <- this_object$`reportEuer`
      }
      if (!is.null(this_object$`reportGewerbesteuer`)) {
        self$`reportGewerbesteuer` <- this_object$`reportGewerbesteuer`
      }
      if (!is.null(this_object$`reportGuv`)) {
        self$`reportGuv` <- this_object$`reportGuv`
      }
      if (!is.null(this_object$`reportKst`)) {
        self$`reportKst` <- this_object$`reportKst`
      }
      if (!is.null(this_object$`reportUstva`)) {
        self$`reportUstva` <- this_object$`reportUstva`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PartialFeatureSettings in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PartialFeatureSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of PartialFeatureSettings
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`onlineshop` <- this_object$`onlineshop`
      self$`reportBilanz` <- this_object$`reportBilanz`
      self$`reportBwa` <- this_object$`reportBwa`
      self$`reportEuer` <- this_object$`reportEuer`
      self$`reportGewerbesteuer` <- this_object$`reportGewerbesteuer`
      self$`reportGuv` <- this_object$`reportGuv`
      self$`reportKst` <- this_object$`reportKst`
      self$`reportUstva` <- this_object$`reportUstva`
      self
    },

    #' @description
    #' Validate JSON input with respect to PartialFeatureSettings and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PartialFeatureSettings
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
# PartialFeatureSettings$unlock()
#
## Below is an example to define the print function
# PartialFeatureSettings$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PartialFeatureSettings$lock()

