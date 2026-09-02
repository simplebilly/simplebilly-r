#' Create a new GdprBillingInfo
#'
#' @description
#' GdprBillingInfo Class
#'
#' @docType class
#' @title GdprBillingInfo
#' @description GdprBillingInfo Class
#' @format An \code{R6Class} generator object
#' @field currentPeriodEnd  character [optional]
#' @field currentPeriodStart  character [optional]
#' @field plan  character [optional]
#' @field status  character [optional]
#' @field tenantId  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GdprBillingInfo <- R6::R6Class(
  "GdprBillingInfo",
  public = list(
    `currentPeriodEnd` = NULL,
    `currentPeriodStart` = NULL,
    `plan` = NULL,
    `status` = NULL,
    `tenantId` = NULL,

    #' @description
    #' Initialize a new GdprBillingInfo class.
    #'
    #' @param tenantId tenantId
    #' @param currentPeriodEnd currentPeriodEnd
    #' @param currentPeriodStart currentPeriodStart
    #' @param plan plan
    #' @param status status
    #' @param ... Other optional arguments.
    initialize = function(`tenantId`, `currentPeriodEnd` = NULL, `currentPeriodStart` = NULL, `plan` = NULL, `status` = NULL, ...) {
      if (!missing(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
      }
      if (!is.null(`currentPeriodEnd`)) {
        if (!is.character(`currentPeriodEnd`)) {
          stop(paste("Error! Invalid data for `currentPeriodEnd`. Must be a string:", `currentPeriodEnd`))
        }
        self$`currentPeriodEnd` <- `currentPeriodEnd`
      }
      if (!is.null(`currentPeriodStart`)) {
        if (!is.character(`currentPeriodStart`)) {
          stop(paste("Error! Invalid data for `currentPeriodStart`. Must be a string:", `currentPeriodStart`))
        }
        self$`currentPeriodStart` <- `currentPeriodStart`
      }
      if (!is.null(`plan`)) {
        if (!(is.character(`plan`) && length(`plan`) == 1)) {
          stop(paste("Error! Invalid data for `plan`. Must be a string:", `plan`))
        }
        self$`plan` <- `plan`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
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
    #' @return GdprBillingInfo as a base R list.
    #' @examples
    #' # convert array of GdprBillingInfo (x) to a data frame
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
    #' Convert GdprBillingInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GdprBillingInfoObject <- list()
      if (!is.null(self$`currentPeriodEnd`)) {
        GdprBillingInfoObject[["currentPeriodEnd"]] <-
          self$`currentPeriodEnd`
      }
      if (!is.null(self$`currentPeriodStart`)) {
        GdprBillingInfoObject[["currentPeriodStart"]] <-
          self$`currentPeriodStart`
      }
      if (!is.null(self$`plan`)) {
        GdprBillingInfoObject[["plan"]] <-
          self$`plan`
      }
      if (!is.null(self$`status`)) {
        GdprBillingInfoObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`tenantId`)) {
        GdprBillingInfoObject[["tenantId"]] <-
          self$`tenantId`
      }
      return(GdprBillingInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GdprBillingInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprBillingInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`currentPeriodEnd`)) {
        self$`currentPeriodEnd` <- this_object$`currentPeriodEnd`
      }
      if (!is.null(this_object$`currentPeriodStart`)) {
        self$`currentPeriodStart` <- this_object$`currentPeriodStart`
      }
      if (!is.null(this_object$`plan`)) {
        self$`plan` <- this_object$`plan`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GdprBillingInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GdprBillingInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprBillingInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`currentPeriodEnd` <- this_object$`currentPeriodEnd`
      self$`currentPeriodStart` <- this_object$`currentPeriodStart`
      self$`plan` <- this_object$`plan`
      self$`status` <- this_object$`status`
      self$`tenantId` <- this_object$`tenantId`
      self
    },

    #' @description
    #' Validate JSON input with respect to GdprBillingInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `tenantId`
      if (!is.null(input_json$`tenantId`)) {
        if (!(is.character(input_json$`tenantId`) && length(input_json$`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", input_json$`tenantId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprBillingInfo: the required field `tenantId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GdprBillingInfo
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
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
      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
        invalid_fields["tenantId"] <- "Non-nullable required field `tenantId` cannot be null."
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
# GdprBillingInfo$unlock()
#
## Below is an example to define the print function
# GdprBillingInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GdprBillingInfo$lock()

