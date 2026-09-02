#' Create a new DpaStatus
#'
#' @description
#' DPA acceptance status of the tenant.
#'
#' @docType class
#' @title DpaStatus
#' @description DpaStatus Class
#' @format An \code{R6Class} generator object
#' @field accepted  character
#' @field acceptedAt  character [optional]
#' @field acceptedBy  character [optional]
#' @field version  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DpaStatus <- R6::R6Class(
  "DpaStatus",
  public = list(
    `accepted` = NULL,
    `acceptedAt` = NULL,
    `acceptedBy` = NULL,
    `version` = NULL,

    #' @description
    #' Initialize a new DpaStatus class.
    #'
    #' @param accepted accepted
    #' @param acceptedAt acceptedAt
    #' @param acceptedBy acceptedBy
    #' @param version version
    #' @param ... Other optional arguments.
    initialize = function(`accepted`, `acceptedAt` = NULL, `acceptedBy` = NULL, `version` = NULL, ...) {
      if (!missing(`accepted`)) {
        if (!(is.logical(`accepted`) && length(`accepted`) == 1)) {
          stop(paste("Error! Invalid data for `accepted`. Must be a boolean:", `accepted`))
        }
        self$`accepted` <- `accepted`
      }
      if (!is.null(`acceptedAt`)) {
        if (!(is.character(`acceptedAt`) && length(`acceptedAt`) == 1)) {
          stop(paste("Error! Invalid data for `acceptedAt`. Must be a string:", `acceptedAt`))
        }
        self$`acceptedAt` <- `acceptedAt`
      }
      if (!is.null(`acceptedBy`)) {
        if (!(is.character(`acceptedBy`) && length(`acceptedBy`) == 1)) {
          stop(paste("Error! Invalid data for `acceptedBy`. Must be a string:", `acceptedBy`))
        }
        self$`acceptedBy` <- `acceptedBy`
      }
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
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
    #' @return DpaStatus as a base R list.
    #' @examples
    #' # convert array of DpaStatus (x) to a data frame
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
    #' Convert DpaStatus to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DpaStatusObject <- list()
      if (!is.null(self$`accepted`)) {
        DpaStatusObject[["accepted"]] <-
          self$`accepted`
      }
      if (!is.null(self$`acceptedAt`)) {
        DpaStatusObject[["acceptedAt"]] <-
          self$`acceptedAt`
      }
      if (!is.null(self$`acceptedBy`)) {
        DpaStatusObject[["acceptedBy"]] <-
          self$`acceptedBy`
      }
      if (!is.null(self$`version`)) {
        DpaStatusObject[["version"]] <-
          self$`version`
      }
      return(DpaStatusObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DpaStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of DpaStatus
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accepted`)) {
        self$`accepted` <- this_object$`accepted`
      }
      if (!is.null(this_object$`acceptedAt`)) {
        self$`acceptedAt` <- this_object$`acceptedAt`
      }
      if (!is.null(this_object$`acceptedBy`)) {
        self$`acceptedBy` <- this_object$`acceptedBy`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DpaStatus in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DpaStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of DpaStatus
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accepted` <- this_object$`accepted`
      self$`acceptedAt` <- this_object$`acceptedAt`
      self$`acceptedBy` <- this_object$`acceptedBy`
      self$`version` <- this_object$`version`
      self
    },

    #' @description
    #' Validate JSON input with respect to DpaStatus and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `accepted`
      if (!is.null(input_json$`accepted`)) {
        if (!(is.logical(input_json$`accepted`) && length(input_json$`accepted`) == 1)) {
          stop(paste("Error! Invalid data for `accepted`. Must be a boolean:", input_json$`accepted`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DpaStatus: the required field `accepted` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DpaStatus
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `accepted` is null
      if (is.null(self$`accepted`)) {
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
      # check if the required `accepted` is null
      if (is.null(self$`accepted`)) {
        invalid_fields["accepted"] <- "Non-nullable required field `accepted` cannot be null."
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
# DpaStatus$unlock()
#
## Below is an example to define the print function
# DpaStatus$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DpaStatus$lock()

