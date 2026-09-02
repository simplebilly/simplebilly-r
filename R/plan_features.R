#' Create a new PlanFeatures
#'
#' @description
#' Feature flags per plan.
#'
#' @docType class
#' @title PlanFeatures
#' @description PlanFeatures Class
#' @format An \code{R6Class} generator object
#' @field connectors  character
#' @field erp  character
#' @field fancyReports  character
#' @field taxAutomations  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PlanFeatures <- R6::R6Class(
  "PlanFeatures",
  public = list(
    `connectors` = NULL,
    `erp` = NULL,
    `fancyReports` = NULL,
    `taxAutomations` = NULL,

    #' @description
    #' Initialize a new PlanFeatures class.
    #'
    #' @param connectors connectors
    #' @param erp erp
    #' @param fancyReports fancyReports
    #' @param taxAutomations taxAutomations
    #' @param ... Other optional arguments.
    initialize = function(`connectors`, `erp`, `fancyReports`, `taxAutomations`, ...) {
      if (!missing(`connectors`)) {
        if (!(is.logical(`connectors`) && length(`connectors`) == 1)) {
          stop(paste("Error! Invalid data for `connectors`. Must be a boolean:", `connectors`))
        }
        self$`connectors` <- `connectors`
      }
      if (!missing(`erp`)) {
        if (!(is.logical(`erp`) && length(`erp`) == 1)) {
          stop(paste("Error! Invalid data for `erp`. Must be a boolean:", `erp`))
        }
        self$`erp` <- `erp`
      }
      if (!missing(`fancyReports`)) {
        if (!(is.logical(`fancyReports`) && length(`fancyReports`) == 1)) {
          stop(paste("Error! Invalid data for `fancyReports`. Must be a boolean:", `fancyReports`))
        }
        self$`fancyReports` <- `fancyReports`
      }
      if (!missing(`taxAutomations`)) {
        if (!(is.logical(`taxAutomations`) && length(`taxAutomations`) == 1)) {
          stop(paste("Error! Invalid data for `taxAutomations`. Must be a boolean:", `taxAutomations`))
        }
        self$`taxAutomations` <- `taxAutomations`
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
    #' @return PlanFeatures as a base R list.
    #' @examples
    #' # convert array of PlanFeatures (x) to a data frame
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
    #' Convert PlanFeatures to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PlanFeaturesObject <- list()
      if (!is.null(self$`connectors`)) {
        PlanFeaturesObject[["connectors"]] <-
          self$`connectors`
      }
      if (!is.null(self$`erp`)) {
        PlanFeaturesObject[["erp"]] <-
          self$`erp`
      }
      if (!is.null(self$`fancyReports`)) {
        PlanFeaturesObject[["fancyReports"]] <-
          self$`fancyReports`
      }
      if (!is.null(self$`taxAutomations`)) {
        PlanFeaturesObject[["taxAutomations"]] <-
          self$`taxAutomations`
      }
      return(PlanFeaturesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PlanFeatures
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlanFeatures
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`connectors`)) {
        self$`connectors` <- this_object$`connectors`
      }
      if (!is.null(this_object$`erp`)) {
        self$`erp` <- this_object$`erp`
      }
      if (!is.null(this_object$`fancyReports`)) {
        self$`fancyReports` <- this_object$`fancyReports`
      }
      if (!is.null(this_object$`taxAutomations`)) {
        self$`taxAutomations` <- this_object$`taxAutomations`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PlanFeatures in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PlanFeatures
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlanFeatures
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`connectors` <- this_object$`connectors`
      self$`erp` <- this_object$`erp`
      self$`fancyReports` <- this_object$`fancyReports`
      self$`taxAutomations` <- this_object$`taxAutomations`
      self
    },

    #' @description
    #' Validate JSON input with respect to PlanFeatures and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `connectors`
      if (!is.null(input_json$`connectors`)) {
        if (!(is.logical(input_json$`connectors`) && length(input_json$`connectors`) == 1)) {
          stop(paste("Error! Invalid data for `connectors`. Must be a boolean:", input_json$`connectors`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlanFeatures: the required field `connectors` is missing."))
      }
      # check the required field `erp`
      if (!is.null(input_json$`erp`)) {
        if (!(is.logical(input_json$`erp`) && length(input_json$`erp`) == 1)) {
          stop(paste("Error! Invalid data for `erp`. Must be a boolean:", input_json$`erp`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlanFeatures: the required field `erp` is missing."))
      }
      # check the required field `fancyReports`
      if (!is.null(input_json$`fancyReports`)) {
        if (!(is.logical(input_json$`fancyReports`) && length(input_json$`fancyReports`) == 1)) {
          stop(paste("Error! Invalid data for `fancyReports`. Must be a boolean:", input_json$`fancyReports`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlanFeatures: the required field `fancyReports` is missing."))
      }
      # check the required field `taxAutomations`
      if (!is.null(input_json$`taxAutomations`)) {
        if (!(is.logical(input_json$`taxAutomations`) && length(input_json$`taxAutomations`) == 1)) {
          stop(paste("Error! Invalid data for `taxAutomations`. Must be a boolean:", input_json$`taxAutomations`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlanFeatures: the required field `taxAutomations` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PlanFeatures
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `connectors` is null
      if (is.null(self$`connectors`)) {
        return(FALSE)
      }

      # check if the required `erp` is null
      if (is.null(self$`erp`)) {
        return(FALSE)
      }

      # check if the required `fancyReports` is null
      if (is.null(self$`fancyReports`)) {
        return(FALSE)
      }

      # check if the required `taxAutomations` is null
      if (is.null(self$`taxAutomations`)) {
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
      # check if the required `connectors` is null
      if (is.null(self$`connectors`)) {
        invalid_fields["connectors"] <- "Non-nullable required field `connectors` cannot be null."
      }

      # check if the required `erp` is null
      if (is.null(self$`erp`)) {
        invalid_fields["erp"] <- "Non-nullable required field `erp` cannot be null."
      }

      # check if the required `fancyReports` is null
      if (is.null(self$`fancyReports`)) {
        invalid_fields["fancyReports"] <- "Non-nullable required field `fancyReports` cannot be null."
      }

      # check if the required `taxAutomations` is null
      if (is.null(self$`taxAutomations`)) {
        invalid_fields["taxAutomations"] <- "Non-nullable required field `taxAutomations` cannot be null."
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
# PlanFeatures$unlock()
#
## Below is an example to define the print function
# PlanFeatures$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PlanFeatures$lock()

