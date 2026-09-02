#' Create a new GatewayOAuthAuthorizeResponse
#'
#' @description
#' GatewayOAuthAuthorizeResponse Class
#'
#' @docType class
#' @title GatewayOAuthAuthorizeResponse
#' @description GatewayOAuthAuthorizeResponse Class
#' @format An \code{R6Class} generator object
#' @field authorization_url  character
#' @field state  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GatewayOAuthAuthorizeResponse <- R6::R6Class(
  "GatewayOAuthAuthorizeResponse",
  public = list(
    `authorization_url` = NULL,
    `state` = NULL,

    #' @description
    #' Initialize a new GatewayOAuthAuthorizeResponse class.
    #'
    #' @param authorization_url authorization_url
    #' @param state state
    #' @param ... Other optional arguments.
    initialize = function(`authorization_url`, `state`, ...) {
      if (!missing(`authorization_url`)) {
        if (!(is.character(`authorization_url`) && length(`authorization_url`) == 1)) {
          stop(paste("Error! Invalid data for `authorization_url`. Must be a string:", `authorization_url`))
        }
        self$`authorization_url` <- `authorization_url`
      }
      if (!missing(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
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
    #' @return GatewayOAuthAuthorizeResponse as a base R list.
    #' @examples
    #' # convert array of GatewayOAuthAuthorizeResponse (x) to a data frame
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
    #' Convert GatewayOAuthAuthorizeResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GatewayOAuthAuthorizeResponseObject <- list()
      if (!is.null(self$`authorization_url`)) {
        GatewayOAuthAuthorizeResponseObject[["authorization_url"]] <-
          self$`authorization_url`
      }
      if (!is.null(self$`state`)) {
        GatewayOAuthAuthorizeResponseObject[["state"]] <-
          self$`state`
      }
      return(GatewayOAuthAuthorizeResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GatewayOAuthAuthorizeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GatewayOAuthAuthorizeResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`authorization_url`)) {
        self$`authorization_url` <- this_object$`authorization_url`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GatewayOAuthAuthorizeResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GatewayOAuthAuthorizeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GatewayOAuthAuthorizeResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`authorization_url` <- this_object$`authorization_url`
      self$`state` <- this_object$`state`
      self
    },

    #' @description
    #' Validate JSON input with respect to GatewayOAuthAuthorizeResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `authorization_url`
      if (!is.null(input_json$`authorization_url`)) {
        if (!(is.character(input_json$`authorization_url`) && length(input_json$`authorization_url`) == 1)) {
          stop(paste("Error! Invalid data for `authorization_url`. Must be a string:", input_json$`authorization_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GatewayOAuthAuthorizeResponse: the required field `authorization_url` is missing."))
      }
      # check the required field `state`
      if (!is.null(input_json$`state`)) {
        if (!(is.character(input_json$`state`) && length(input_json$`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", input_json$`state`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GatewayOAuthAuthorizeResponse: the required field `state` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GatewayOAuthAuthorizeResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `authorization_url` is null
      if (is.null(self$`authorization_url`)) {
        return(FALSE)
      }

      # check if the required `state` is null
      if (is.null(self$`state`)) {
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
      # check if the required `authorization_url` is null
      if (is.null(self$`authorization_url`)) {
        invalid_fields["authorization_url"] <- "Non-nullable required field `authorization_url` cannot be null."
      }

      # check if the required `state` is null
      if (is.null(self$`state`)) {
        invalid_fields["state"] <- "Non-nullable required field `state` cannot be null."
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
# GatewayOAuthAuthorizeResponse$unlock()
#
## Below is an example to define the print function
# GatewayOAuthAuthorizeResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GatewayOAuthAuthorizeResponse$lock()

