#' Create a new FeatureSettings
#'
#' @description
#' Feature toggles for a tenant.
#'
#' @docType class
#' @title FeatureSettings
#' @description FeatureSettings Class
#' @format An \code{R6Class} generator object
#' @field onlineshop Online shop / storefront module (default: enabled). character
#' @field reportBilanz Bilanz (balance sheet) report. character
#' @field reportBwa BWA (betriebswirtschaftliche Auswertung). character
#' @field reportEuer EÜR (Einnahmen-Überschuss-Rechnung). character
#' @field reportGewerbesteuer Gewerbesteuer report. character
#' @field reportGuv GuV (profit & loss) report. character
#' @field reportKst KSt (Körperschaftsteuer) report. character
#' @field reportUstva UStVA (Umsatzsteuervoranmeldung). character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FeatureSettings <- R6::R6Class(
  "FeatureSettings",
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
    #' Initialize a new FeatureSettings class.
    #'
    #' @param onlineshop Online shop / storefront module (default: enabled).
    #' @param reportBilanz Bilanz (balance sheet) report.
    #' @param reportBwa BWA (betriebswirtschaftliche Auswertung).
    #' @param reportEuer EÜR (Einnahmen-Überschuss-Rechnung).
    #' @param reportGewerbesteuer Gewerbesteuer report.
    #' @param reportGuv GuV (profit & loss) report.
    #' @param reportKst KSt (Körperschaftsteuer) report.
    #' @param reportUstva UStVA (Umsatzsteuervoranmeldung).
    #' @param ... Other optional arguments.
    initialize = function(`onlineshop`, `reportBilanz`, `reportBwa`, `reportEuer`, `reportGewerbesteuer`, `reportGuv`, `reportKst`, `reportUstva`, ...) {
      if (!missing(`onlineshop`)) {
        if (!(is.logical(`onlineshop`) && length(`onlineshop`) == 1)) {
          stop(paste("Error! Invalid data for `onlineshop`. Must be a boolean:", `onlineshop`))
        }
        self$`onlineshop` <- `onlineshop`
      }
      if (!missing(`reportBilanz`)) {
        if (!(is.logical(`reportBilanz`) && length(`reportBilanz`) == 1)) {
          stop(paste("Error! Invalid data for `reportBilanz`. Must be a boolean:", `reportBilanz`))
        }
        self$`reportBilanz` <- `reportBilanz`
      }
      if (!missing(`reportBwa`)) {
        if (!(is.logical(`reportBwa`) && length(`reportBwa`) == 1)) {
          stop(paste("Error! Invalid data for `reportBwa`. Must be a boolean:", `reportBwa`))
        }
        self$`reportBwa` <- `reportBwa`
      }
      if (!missing(`reportEuer`)) {
        if (!(is.logical(`reportEuer`) && length(`reportEuer`) == 1)) {
          stop(paste("Error! Invalid data for `reportEuer`. Must be a boolean:", `reportEuer`))
        }
        self$`reportEuer` <- `reportEuer`
      }
      if (!missing(`reportGewerbesteuer`)) {
        if (!(is.logical(`reportGewerbesteuer`) && length(`reportGewerbesteuer`) == 1)) {
          stop(paste("Error! Invalid data for `reportGewerbesteuer`. Must be a boolean:", `reportGewerbesteuer`))
        }
        self$`reportGewerbesteuer` <- `reportGewerbesteuer`
      }
      if (!missing(`reportGuv`)) {
        if (!(is.logical(`reportGuv`) && length(`reportGuv`) == 1)) {
          stop(paste("Error! Invalid data for `reportGuv`. Must be a boolean:", `reportGuv`))
        }
        self$`reportGuv` <- `reportGuv`
      }
      if (!missing(`reportKst`)) {
        if (!(is.logical(`reportKst`) && length(`reportKst`) == 1)) {
          stop(paste("Error! Invalid data for `reportKst`. Must be a boolean:", `reportKst`))
        }
        self$`reportKst` <- `reportKst`
      }
      if (!missing(`reportUstva`)) {
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
    #' @return FeatureSettings as a base R list.
    #' @examples
    #' # convert array of FeatureSettings (x) to a data frame
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
    #' Convert FeatureSettings to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FeatureSettingsObject <- list()
      if (!is.null(self$`onlineshop`)) {
        FeatureSettingsObject[["onlineshop"]] <-
          self$`onlineshop`
      }
      if (!is.null(self$`reportBilanz`)) {
        FeatureSettingsObject[["reportBilanz"]] <-
          self$`reportBilanz`
      }
      if (!is.null(self$`reportBwa`)) {
        FeatureSettingsObject[["reportBwa"]] <-
          self$`reportBwa`
      }
      if (!is.null(self$`reportEuer`)) {
        FeatureSettingsObject[["reportEuer"]] <-
          self$`reportEuer`
      }
      if (!is.null(self$`reportGewerbesteuer`)) {
        FeatureSettingsObject[["reportGewerbesteuer"]] <-
          self$`reportGewerbesteuer`
      }
      if (!is.null(self$`reportGuv`)) {
        FeatureSettingsObject[["reportGuv"]] <-
          self$`reportGuv`
      }
      if (!is.null(self$`reportKst`)) {
        FeatureSettingsObject[["reportKst"]] <-
          self$`reportKst`
      }
      if (!is.null(self$`reportUstva`)) {
        FeatureSettingsObject[["reportUstva"]] <-
          self$`reportUstva`
      }
      return(FeatureSettingsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FeatureSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of FeatureSettings
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
    #' @return FeatureSettings in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FeatureSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of FeatureSettings
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
    #' Validate JSON input with respect to FeatureSettings and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `onlineshop`
      if (!is.null(input_json$`onlineshop`)) {
        if (!(is.logical(input_json$`onlineshop`) && length(input_json$`onlineshop`) == 1)) {
          stop(paste("Error! Invalid data for `onlineshop`. Must be a boolean:", input_json$`onlineshop`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FeatureSettings: the required field `onlineshop` is missing."))
      }
      # check the required field `reportBilanz`
      if (!is.null(input_json$`reportBilanz`)) {
        if (!(is.logical(input_json$`reportBilanz`) && length(input_json$`reportBilanz`) == 1)) {
          stop(paste("Error! Invalid data for `reportBilanz`. Must be a boolean:", input_json$`reportBilanz`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FeatureSettings: the required field `reportBilanz` is missing."))
      }
      # check the required field `reportBwa`
      if (!is.null(input_json$`reportBwa`)) {
        if (!(is.logical(input_json$`reportBwa`) && length(input_json$`reportBwa`) == 1)) {
          stop(paste("Error! Invalid data for `reportBwa`. Must be a boolean:", input_json$`reportBwa`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FeatureSettings: the required field `reportBwa` is missing."))
      }
      # check the required field `reportEuer`
      if (!is.null(input_json$`reportEuer`)) {
        if (!(is.logical(input_json$`reportEuer`) && length(input_json$`reportEuer`) == 1)) {
          stop(paste("Error! Invalid data for `reportEuer`. Must be a boolean:", input_json$`reportEuer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FeatureSettings: the required field `reportEuer` is missing."))
      }
      # check the required field `reportGewerbesteuer`
      if (!is.null(input_json$`reportGewerbesteuer`)) {
        if (!(is.logical(input_json$`reportGewerbesteuer`) && length(input_json$`reportGewerbesteuer`) == 1)) {
          stop(paste("Error! Invalid data for `reportGewerbesteuer`. Must be a boolean:", input_json$`reportGewerbesteuer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FeatureSettings: the required field `reportGewerbesteuer` is missing."))
      }
      # check the required field `reportGuv`
      if (!is.null(input_json$`reportGuv`)) {
        if (!(is.logical(input_json$`reportGuv`) && length(input_json$`reportGuv`) == 1)) {
          stop(paste("Error! Invalid data for `reportGuv`. Must be a boolean:", input_json$`reportGuv`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FeatureSettings: the required field `reportGuv` is missing."))
      }
      # check the required field `reportKst`
      if (!is.null(input_json$`reportKst`)) {
        if (!(is.logical(input_json$`reportKst`) && length(input_json$`reportKst`) == 1)) {
          stop(paste("Error! Invalid data for `reportKst`. Must be a boolean:", input_json$`reportKst`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FeatureSettings: the required field `reportKst` is missing."))
      }
      # check the required field `reportUstva`
      if (!is.null(input_json$`reportUstva`)) {
        if (!(is.logical(input_json$`reportUstva`) && length(input_json$`reportUstva`) == 1)) {
          stop(paste("Error! Invalid data for `reportUstva`. Must be a boolean:", input_json$`reportUstva`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FeatureSettings: the required field `reportUstva` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FeatureSettings
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `onlineshop` is null
      if (is.null(self$`onlineshop`)) {
        return(FALSE)
      }

      # check if the required `reportBilanz` is null
      if (is.null(self$`reportBilanz`)) {
        return(FALSE)
      }

      # check if the required `reportBwa` is null
      if (is.null(self$`reportBwa`)) {
        return(FALSE)
      }

      # check if the required `reportEuer` is null
      if (is.null(self$`reportEuer`)) {
        return(FALSE)
      }

      # check if the required `reportGewerbesteuer` is null
      if (is.null(self$`reportGewerbesteuer`)) {
        return(FALSE)
      }

      # check if the required `reportGuv` is null
      if (is.null(self$`reportGuv`)) {
        return(FALSE)
      }

      # check if the required `reportKst` is null
      if (is.null(self$`reportKst`)) {
        return(FALSE)
      }

      # check if the required `reportUstva` is null
      if (is.null(self$`reportUstva`)) {
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
      # check if the required `onlineshop` is null
      if (is.null(self$`onlineshop`)) {
        invalid_fields["onlineshop"] <- "Non-nullable required field `onlineshop` cannot be null."
      }

      # check if the required `reportBilanz` is null
      if (is.null(self$`reportBilanz`)) {
        invalid_fields["reportBilanz"] <- "Non-nullable required field `reportBilanz` cannot be null."
      }

      # check if the required `reportBwa` is null
      if (is.null(self$`reportBwa`)) {
        invalid_fields["reportBwa"] <- "Non-nullable required field `reportBwa` cannot be null."
      }

      # check if the required `reportEuer` is null
      if (is.null(self$`reportEuer`)) {
        invalid_fields["reportEuer"] <- "Non-nullable required field `reportEuer` cannot be null."
      }

      # check if the required `reportGewerbesteuer` is null
      if (is.null(self$`reportGewerbesteuer`)) {
        invalid_fields["reportGewerbesteuer"] <- "Non-nullable required field `reportGewerbesteuer` cannot be null."
      }

      # check if the required `reportGuv` is null
      if (is.null(self$`reportGuv`)) {
        invalid_fields["reportGuv"] <- "Non-nullable required field `reportGuv` cannot be null."
      }

      # check if the required `reportKst` is null
      if (is.null(self$`reportKst`)) {
        invalid_fields["reportKst"] <- "Non-nullable required field `reportKst` cannot be null."
      }

      # check if the required `reportUstva` is null
      if (is.null(self$`reportUstva`)) {
        invalid_fields["reportUstva"] <- "Non-nullable required field `reportUstva` cannot be null."
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
# FeatureSettings$unlock()
#
## Below is an example to define the print function
# FeatureSettings$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FeatureSettings$lock()

