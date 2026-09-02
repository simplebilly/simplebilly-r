#' Create a new PlanLimits
#'
#' @description
#' Per-plan numeric limits. `-1` in any field means unlimited.
#'
#' @docType class
#' @title PlanLimits
#' @description PlanLimits Class
#' @format An \code{R6Class} generator object
#' @field maxConnectors  integer
#' @field maxInvoicesPerMonth  integer
#' @field maxUsers  integer
#' @field metered  named list(integer) [optional]
#' @field paidConnectors Connectors that are *not* included in this plan (require a higher tier). Empty = all connectors included on this plan. list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PlanLimits <- R6::R6Class(
  "PlanLimits",
  public = list(
    `maxConnectors` = NULL,
    `maxInvoicesPerMonth` = NULL,
    `maxUsers` = NULL,
    `metered` = NULL,
    `paidConnectors` = NULL,

    #' @description
    #' Initialize a new PlanLimits class.
    #'
    #' @param maxConnectors maxConnectors
    #' @param maxInvoicesPerMonth maxInvoicesPerMonth
    #' @param maxUsers maxUsers
    #' @param paidConnectors Connectors that are *not* included in this plan (require a higher tier). Empty = all connectors included on this plan.
    #' @param metered metered
    #' @param ... Other optional arguments.
    initialize = function(`maxConnectors`, `maxInvoicesPerMonth`, `maxUsers`, `paidConnectors`, `metered` = NULL, ...) {
      if (!missing(`maxConnectors`)) {
        if (!(is.numeric(`maxConnectors`) && length(`maxConnectors`) == 1)) {
          stop(paste("Error! Invalid data for `maxConnectors`. Must be an integer:", `maxConnectors`))
        }
        self$`maxConnectors` <- `maxConnectors`
      }
      if (!missing(`maxInvoicesPerMonth`)) {
        if (!(is.numeric(`maxInvoicesPerMonth`) && length(`maxInvoicesPerMonth`) == 1)) {
          stop(paste("Error! Invalid data for `maxInvoicesPerMonth`. Must be an integer:", `maxInvoicesPerMonth`))
        }
        self$`maxInvoicesPerMonth` <- `maxInvoicesPerMonth`
      }
      if (!missing(`maxUsers`)) {
        if (!(is.numeric(`maxUsers`) && length(`maxUsers`) == 1)) {
          stop(paste("Error! Invalid data for `maxUsers`. Must be an integer:", `maxUsers`))
        }
        self$`maxUsers` <- `maxUsers`
      }
      if (!missing(`paidConnectors`)) {
        stopifnot(is.vector(`paidConnectors`), length(`paidConnectors`) != 0)
        sapply(`paidConnectors`, function(x) stopifnot(is.character(x)))
        self$`paidConnectors` <- `paidConnectors`
      }
      if (!is.null(`metered`)) {
        stopifnot(is.vector(`metered`), length(`metered`) != 0)
        sapply(`metered`, function(x) stopifnot(is.character(x)))
        self$`metered` <- `metered`
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
    #' @return PlanLimits as a base R list.
    #' @examples
    #' # convert array of PlanLimits (x) to a data frame
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
    #' Convert PlanLimits to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PlanLimitsObject <- list()
      if (!is.null(self$`maxConnectors`)) {
        PlanLimitsObject[["maxConnectors"]] <-
          self$`maxConnectors`
      }
      if (!is.null(self$`maxInvoicesPerMonth`)) {
        PlanLimitsObject[["maxInvoicesPerMonth"]] <-
          self$`maxInvoicesPerMonth`
      }
      if (!is.null(self$`maxUsers`)) {
        PlanLimitsObject[["maxUsers"]] <-
          self$`maxUsers`
      }
      if (!is.null(self$`metered`)) {
        PlanLimitsObject[["metered"]] <-
          self$`metered`
      }
      if (!is.null(self$`paidConnectors`)) {
        PlanLimitsObject[["paidConnectors"]] <-
          self$`paidConnectors`
      }
      return(PlanLimitsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PlanLimits
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlanLimits
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`maxConnectors`)) {
        self$`maxConnectors` <- this_object$`maxConnectors`
      }
      if (!is.null(this_object$`maxInvoicesPerMonth`)) {
        self$`maxInvoicesPerMonth` <- this_object$`maxInvoicesPerMonth`
      }
      if (!is.null(this_object$`maxUsers`)) {
        self$`maxUsers` <- this_object$`maxUsers`
      }
      if (!is.null(this_object$`metered`)) {
        self$`metered` <- ApiClient$new()$deserializeObj(this_object$`metered`, "map(integer)", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`paidConnectors`)) {
        self$`paidConnectors` <- ApiClient$new()$deserializeObj(this_object$`paidConnectors`, "array[character]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PlanLimits in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PlanLimits
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlanLimits
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`maxConnectors` <- this_object$`maxConnectors`
      self$`maxInvoicesPerMonth` <- this_object$`maxInvoicesPerMonth`
      self$`maxUsers` <- this_object$`maxUsers`
      self$`metered` <- ApiClient$new()$deserializeObj(this_object$`metered`, "map(integer)", loadNamespace("openapi"))
      self$`paidConnectors` <- ApiClient$new()$deserializeObj(this_object$`paidConnectors`, "array[character]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to PlanLimits and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `maxConnectors`
      if (!is.null(input_json$`maxConnectors`)) {
        if (!(is.numeric(input_json$`maxConnectors`) && length(input_json$`maxConnectors`) == 1)) {
          stop(paste("Error! Invalid data for `maxConnectors`. Must be an integer:", input_json$`maxConnectors`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlanLimits: the required field `maxConnectors` is missing."))
      }
      # check the required field `maxInvoicesPerMonth`
      if (!is.null(input_json$`maxInvoicesPerMonth`)) {
        if (!(is.numeric(input_json$`maxInvoicesPerMonth`) && length(input_json$`maxInvoicesPerMonth`) == 1)) {
          stop(paste("Error! Invalid data for `maxInvoicesPerMonth`. Must be an integer:", input_json$`maxInvoicesPerMonth`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlanLimits: the required field `maxInvoicesPerMonth` is missing."))
      }
      # check the required field `maxUsers`
      if (!is.null(input_json$`maxUsers`)) {
        if (!(is.numeric(input_json$`maxUsers`) && length(input_json$`maxUsers`) == 1)) {
          stop(paste("Error! Invalid data for `maxUsers`. Must be an integer:", input_json$`maxUsers`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlanLimits: the required field `maxUsers` is missing."))
      }
      # check the required field `paidConnectors`
      if (!is.null(input_json$`paidConnectors`)) {
        stopifnot(is.vector(input_json$`paidConnectors`), length(input_json$`paidConnectors`) != 0)
        tmp <- sapply(input_json$`paidConnectors`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlanLimits: the required field `paidConnectors` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PlanLimits
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `maxConnectors` is null
      if (is.null(self$`maxConnectors`)) {
        return(FALSE)
      }

      # check if the required `maxInvoicesPerMonth` is null
      if (is.null(self$`maxInvoicesPerMonth`)) {
        return(FALSE)
      }

      # check if the required `maxUsers` is null
      if (is.null(self$`maxUsers`)) {
        return(FALSE)
      }

      # check if the required `paidConnectors` is null
      if (is.null(self$`paidConnectors`)) {
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
      # check if the required `maxConnectors` is null
      if (is.null(self$`maxConnectors`)) {
        invalid_fields["maxConnectors"] <- "Non-nullable required field `maxConnectors` cannot be null."
      }

      # check if the required `maxInvoicesPerMonth` is null
      if (is.null(self$`maxInvoicesPerMonth`)) {
        invalid_fields["maxInvoicesPerMonth"] <- "Non-nullable required field `maxInvoicesPerMonth` cannot be null."
      }

      # check if the required `maxUsers` is null
      if (is.null(self$`maxUsers`)) {
        invalid_fields["maxUsers"] <- "Non-nullable required field `maxUsers` cannot be null."
      }

      # check if the required `paidConnectors` is null
      if (is.null(self$`paidConnectors`)) {
        invalid_fields["paidConnectors"] <- "Non-nullable required field `paidConnectors` cannot be null."
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
# PlanLimits$unlock()
#
## Below is an example to define the print function
# PlanLimits$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PlanLimits$lock()

