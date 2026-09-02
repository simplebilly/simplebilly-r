#' Create a new DhlCredentials
#'
#' @description
#' DhlCredentials Class
#'
#' @docType class
#' @title DhlCredentials
#' @description DhlCredentials Class
#' @format An \code{R6Class} generator object
#' @field api_key DHL-API-Key from developer.dhl.com (required for tracking). character
#' @field client_id Client credentials from the DHL developer app; required for label creation. character [optional]
#' @field client_secret  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DhlCredentials <- R6::R6Class(
  "DhlCredentials",
  public = list(
    `api_key` = NULL,
    `client_id` = NULL,
    `client_secret` = NULL,

    #' @description
    #' Initialize a new DhlCredentials class.
    #'
    #' @param api_key DHL-API-Key from developer.dhl.com (required for tracking).
    #' @param client_id Client credentials from the DHL developer app; required for label creation.
    #' @param client_secret client_secret
    #' @param ... Other optional arguments.
    initialize = function(`api_key`, `client_id` = NULL, `client_secret` = NULL, ...) {
      if (!missing(`api_key`)) {
        if (!(is.character(`api_key`) && length(`api_key`) == 1)) {
          stop(paste("Error! Invalid data for `api_key`. Must be a string:", `api_key`))
        }
        self$`api_key` <- `api_key`
      }
      if (!is.null(`client_id`)) {
        if (!(is.character(`client_id`) && length(`client_id`) == 1)) {
          stop(paste("Error! Invalid data for `client_id`. Must be a string:", `client_id`))
        }
        self$`client_id` <- `client_id`
      }
      if (!is.null(`client_secret`)) {
        if (!(is.character(`client_secret`) && length(`client_secret`) == 1)) {
          stop(paste("Error! Invalid data for `client_secret`. Must be a string:", `client_secret`))
        }
        self$`client_secret` <- `client_secret`
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
    #' @return DhlCredentials as a base R list.
    #' @examples
    #' # convert array of DhlCredentials (x) to a data frame
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
    #' Convert DhlCredentials to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DhlCredentialsObject <- list()
      if (!is.null(self$`api_key`)) {
        DhlCredentialsObject[["api_key"]] <-
          self$`api_key`
      }
      if (!is.null(self$`client_id`)) {
        DhlCredentialsObject[["client_id"]] <-
          self$`client_id`
      }
      if (!is.null(self$`client_secret`)) {
        DhlCredentialsObject[["client_secret"]] <-
          self$`client_secret`
      }
      return(DhlCredentialsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DhlCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of DhlCredentials
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`api_key`)) {
        self$`api_key` <- this_object$`api_key`
      }
      if (!is.null(this_object$`client_id`)) {
        self$`client_id` <- this_object$`client_id`
      }
      if (!is.null(this_object$`client_secret`)) {
        self$`client_secret` <- this_object$`client_secret`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DhlCredentials in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DhlCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of DhlCredentials
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`api_key` <- this_object$`api_key`
      self$`client_id` <- this_object$`client_id`
      self$`client_secret` <- this_object$`client_secret`
      self
    },

    #' @description
    #' Validate JSON input with respect to DhlCredentials and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `api_key`
      if (!is.null(input_json$`api_key`)) {
        if (!(is.character(input_json$`api_key`) && length(input_json$`api_key`) == 1)) {
          stop(paste("Error! Invalid data for `api_key`. Must be a string:", input_json$`api_key`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DhlCredentials: the required field `api_key` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DhlCredentials
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `api_key` is null
      if (is.null(self$`api_key`)) {
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
      # check if the required `api_key` is null
      if (is.null(self$`api_key`)) {
        invalid_fields["api_key"] <- "Non-nullable required field `api_key` cannot be null."
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
# DhlCredentials$unlock()
#
## Below is an example to define the print function
# DhlCredentials$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DhlCredentials$lock()

