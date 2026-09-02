#' Create a new TotpSetupResponse
#'
#' @description
#' TotpSetupResponse Class
#'
#' @docType class
#' @title TotpSetupResponse
#' @description TotpSetupResponse Class
#' @format An \code{R6Class} generator object
#' @field backup_codes  list(character)
#' @field qr_code_url  character
#' @field secret  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TotpSetupResponse <- R6::R6Class(
  "TotpSetupResponse",
  public = list(
    `backup_codes` = NULL,
    `qr_code_url` = NULL,
    `secret` = NULL,

    #' @description
    #' Initialize a new TotpSetupResponse class.
    #'
    #' @param backup_codes backup_codes
    #' @param qr_code_url qr_code_url
    #' @param secret secret
    #' @param ... Other optional arguments.
    initialize = function(`backup_codes`, `qr_code_url`, `secret`, ...) {
      if (!missing(`backup_codes`)) {
        stopifnot(is.vector(`backup_codes`), length(`backup_codes`) != 0)
        sapply(`backup_codes`, function(x) stopifnot(is.character(x)))
        self$`backup_codes` <- `backup_codes`
      }
      if (!missing(`qr_code_url`)) {
        if (!(is.character(`qr_code_url`) && length(`qr_code_url`) == 1)) {
          stop(paste("Error! Invalid data for `qr_code_url`. Must be a string:", `qr_code_url`))
        }
        self$`qr_code_url` <- `qr_code_url`
      }
      if (!missing(`secret`)) {
        if (!(is.character(`secret`) && length(`secret`) == 1)) {
          stop(paste("Error! Invalid data for `secret`. Must be a string:", `secret`))
        }
        self$`secret` <- `secret`
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
    #' @return TotpSetupResponse as a base R list.
    #' @examples
    #' # convert array of TotpSetupResponse (x) to a data frame
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
    #' Convert TotpSetupResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TotpSetupResponseObject <- list()
      if (!is.null(self$`backup_codes`)) {
        TotpSetupResponseObject[["backup_codes"]] <-
          self$`backup_codes`
      }
      if (!is.null(self$`qr_code_url`)) {
        TotpSetupResponseObject[["qr_code_url"]] <-
          self$`qr_code_url`
      }
      if (!is.null(self$`secret`)) {
        TotpSetupResponseObject[["secret"]] <-
          self$`secret`
      }
      return(TotpSetupResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TotpSetupResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TotpSetupResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`backup_codes`)) {
        self$`backup_codes` <- ApiClient$new()$deserializeObj(this_object$`backup_codes`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`qr_code_url`)) {
        self$`qr_code_url` <- this_object$`qr_code_url`
      }
      if (!is.null(this_object$`secret`)) {
        self$`secret` <- this_object$`secret`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TotpSetupResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TotpSetupResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TotpSetupResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`backup_codes` <- ApiClient$new()$deserializeObj(this_object$`backup_codes`, "array[character]", loadNamespace("openapi"))
      self$`qr_code_url` <- this_object$`qr_code_url`
      self$`secret` <- this_object$`secret`
      self
    },

    #' @description
    #' Validate JSON input with respect to TotpSetupResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `backup_codes`
      if (!is.null(input_json$`backup_codes`)) {
        stopifnot(is.vector(input_json$`backup_codes`), length(input_json$`backup_codes`) != 0)
        tmp <- sapply(input_json$`backup_codes`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TotpSetupResponse: the required field `backup_codes` is missing."))
      }
      # check the required field `qr_code_url`
      if (!is.null(input_json$`qr_code_url`)) {
        if (!(is.character(input_json$`qr_code_url`) && length(input_json$`qr_code_url`) == 1)) {
          stop(paste("Error! Invalid data for `qr_code_url`. Must be a string:", input_json$`qr_code_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TotpSetupResponse: the required field `qr_code_url` is missing."))
      }
      # check the required field `secret`
      if (!is.null(input_json$`secret`)) {
        if (!(is.character(input_json$`secret`) && length(input_json$`secret`) == 1)) {
          stop(paste("Error! Invalid data for `secret`. Must be a string:", input_json$`secret`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TotpSetupResponse: the required field `secret` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TotpSetupResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `backup_codes` is null
      if (is.null(self$`backup_codes`)) {
        return(FALSE)
      }

      # check if the required `qr_code_url` is null
      if (is.null(self$`qr_code_url`)) {
        return(FALSE)
      }

      # check if the required `secret` is null
      if (is.null(self$`secret`)) {
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
      # check if the required `backup_codes` is null
      if (is.null(self$`backup_codes`)) {
        invalid_fields["backup_codes"] <- "Non-nullable required field `backup_codes` cannot be null."
      }

      # check if the required `qr_code_url` is null
      if (is.null(self$`qr_code_url`)) {
        invalid_fields["qr_code_url"] <- "Non-nullable required field `qr_code_url` cannot be null."
      }

      # check if the required `secret` is null
      if (is.null(self$`secret`)) {
        invalid_fields["secret"] <- "Non-nullable required field `secret` cannot be null."
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
# TotpSetupResponse$unlock()
#
## Below is an example to define the print function
# TotpSetupResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TotpSetupResponse$lock()

