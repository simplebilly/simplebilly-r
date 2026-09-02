#' Create a new DpaAcceptRequest
#'
#' @description
#' Request body to record DPA acceptance (`PUT /api/v1/gdpr/dpa`).
#'
#' @docType class
#' @title DpaAcceptRequest
#' @description DpaAcceptRequest Class
#' @format An \code{R6Class} generator object
#' @field acceptedByName  character
#' @field version  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DpaAcceptRequest <- R6::R6Class(
  "DpaAcceptRequest",
  public = list(
    `acceptedByName` = NULL,
    `version` = NULL,

    #' @description
    #' Initialize a new DpaAcceptRequest class.
    #'
    #' @param acceptedByName acceptedByName
    #' @param version version
    #' @param ... Other optional arguments.
    initialize = function(`acceptedByName`, `version`, ...) {
      if (!missing(`acceptedByName`)) {
        if (!(is.character(`acceptedByName`) && length(`acceptedByName`) == 1)) {
          stop(paste("Error! Invalid data for `acceptedByName`. Must be a string:", `acceptedByName`))
        }
        self$`acceptedByName` <- `acceptedByName`
      }
      if (!missing(`version`)) {
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
    #' @return DpaAcceptRequest as a base R list.
    #' @examples
    #' # convert array of DpaAcceptRequest (x) to a data frame
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
    #' Convert DpaAcceptRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DpaAcceptRequestObject <- list()
      if (!is.null(self$`acceptedByName`)) {
        DpaAcceptRequestObject[["acceptedByName"]] <-
          self$`acceptedByName`
      }
      if (!is.null(self$`version`)) {
        DpaAcceptRequestObject[["version"]] <-
          self$`version`
      }
      return(DpaAcceptRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DpaAcceptRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DpaAcceptRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`acceptedByName`)) {
        self$`acceptedByName` <- this_object$`acceptedByName`
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
    #' @return DpaAcceptRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DpaAcceptRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DpaAcceptRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`acceptedByName` <- this_object$`acceptedByName`
      self$`version` <- this_object$`version`
      self
    },

    #' @description
    #' Validate JSON input with respect to DpaAcceptRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `acceptedByName`
      if (!is.null(input_json$`acceptedByName`)) {
        if (!(is.character(input_json$`acceptedByName`) && length(input_json$`acceptedByName`) == 1)) {
          stop(paste("Error! Invalid data for `acceptedByName`. Must be a string:", input_json$`acceptedByName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DpaAcceptRequest: the required field `acceptedByName` is missing."))
      }
      # check the required field `version`
      if (!is.null(input_json$`version`)) {
        if (!(is.character(input_json$`version`) && length(input_json$`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", input_json$`version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DpaAcceptRequest: the required field `version` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DpaAcceptRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `acceptedByName` is null
      if (is.null(self$`acceptedByName`)) {
        return(FALSE)
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
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
      # check if the required `acceptedByName` is null
      if (is.null(self$`acceptedByName`)) {
        invalid_fields["acceptedByName"] <- "Non-nullable required field `acceptedByName` cannot be null."
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
        invalid_fields["version"] <- "Non-nullable required field `version` cannot be null."
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
# DpaAcceptRequest$unlock()
#
## Below is an example to define the print function
# DpaAcceptRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DpaAcceptRequest$lock()

