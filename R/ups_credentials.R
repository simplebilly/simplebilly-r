#' Create a new UpsCredentials
#'
#' @description
#' UpsCredentials Class
#'
#' @docType class
#' @title UpsCredentials
#' @description UpsCredentials Class
#' @format An \code{R6Class} generator object
#' @field client_id OAuth 2.0 client credentials from developer.ups.com. character
#' @field client_secret  character
#' @field shipper_number UPS account number; required for label creation, optional for rates/tracking. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpsCredentials <- R6::R6Class(
  "UpsCredentials",
  public = list(
    `client_id` = NULL,
    `client_secret` = NULL,
    `shipper_number` = NULL,

    #' @description
    #' Initialize a new UpsCredentials class.
    #'
    #' @param client_id OAuth 2.0 client credentials from developer.ups.com.
    #' @param client_secret client_secret
    #' @param shipper_number UPS account number; required for label creation, optional for rates/tracking.
    #' @param ... Other optional arguments.
    initialize = function(`client_id`, `client_secret`, `shipper_number` = NULL, ...) {
      if (!missing(`client_id`)) {
        if (!(is.character(`client_id`) && length(`client_id`) == 1)) {
          stop(paste("Error! Invalid data for `client_id`. Must be a string:", `client_id`))
        }
        self$`client_id` <- `client_id`
      }
      if (!missing(`client_secret`)) {
        if (!(is.character(`client_secret`) && length(`client_secret`) == 1)) {
          stop(paste("Error! Invalid data for `client_secret`. Must be a string:", `client_secret`))
        }
        self$`client_secret` <- `client_secret`
      }
      if (!is.null(`shipper_number`)) {
        if (!(is.character(`shipper_number`) && length(`shipper_number`) == 1)) {
          stop(paste("Error! Invalid data for `shipper_number`. Must be a string:", `shipper_number`))
        }
        self$`shipper_number` <- `shipper_number`
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
    #' @return UpsCredentials as a base R list.
    #' @examples
    #' # convert array of UpsCredentials (x) to a data frame
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
    #' Convert UpsCredentials to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpsCredentialsObject <- list()
      if (!is.null(self$`client_id`)) {
        UpsCredentialsObject[["client_id"]] <-
          self$`client_id`
      }
      if (!is.null(self$`client_secret`)) {
        UpsCredentialsObject[["client_secret"]] <-
          self$`client_secret`
      }
      if (!is.null(self$`shipper_number`)) {
        UpsCredentialsObject[["shipper_number"]] <-
          self$`shipper_number`
      }
      return(UpsCredentialsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UpsCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpsCredentials
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`client_id`)) {
        self$`client_id` <- this_object$`client_id`
      }
      if (!is.null(this_object$`client_secret`)) {
        self$`client_secret` <- this_object$`client_secret`
      }
      if (!is.null(this_object$`shipper_number`)) {
        self$`shipper_number` <- this_object$`shipper_number`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UpsCredentials in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpsCredentials
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpsCredentials
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`client_id` <- this_object$`client_id`
      self$`client_secret` <- this_object$`client_secret`
      self$`shipper_number` <- this_object$`shipper_number`
      self
    },

    #' @description
    #' Validate JSON input with respect to UpsCredentials and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `client_id`
      if (!is.null(input_json$`client_id`)) {
        if (!(is.character(input_json$`client_id`) && length(input_json$`client_id`) == 1)) {
          stop(paste("Error! Invalid data for `client_id`. Must be a string:", input_json$`client_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UpsCredentials: the required field `client_id` is missing."))
      }
      # check the required field `client_secret`
      if (!is.null(input_json$`client_secret`)) {
        if (!(is.character(input_json$`client_secret`) && length(input_json$`client_secret`) == 1)) {
          stop(paste("Error! Invalid data for `client_secret`. Must be a string:", input_json$`client_secret`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UpsCredentials: the required field `client_secret` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpsCredentials
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `client_id` is null
      if (is.null(self$`client_id`)) {
        return(FALSE)
      }

      # check if the required `client_secret` is null
      if (is.null(self$`client_secret`)) {
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
      # check if the required `client_id` is null
      if (is.null(self$`client_id`)) {
        invalid_fields["client_id"] <- "Non-nullable required field `client_id` cannot be null."
      }

      # check if the required `client_secret` is null
      if (is.null(self$`client_secret`)) {
        invalid_fields["client_secret"] <- "Non-nullable required field `client_secret` cannot be null."
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
# UpsCredentials$unlock()
#
## Below is an example to define the print function
# UpsCredentials$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpsCredentials$lock()

