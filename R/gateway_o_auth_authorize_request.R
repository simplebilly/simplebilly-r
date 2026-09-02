#' Create a new GatewayOAuthAuthorizeRequest
#'
#' @description
#' GatewayOAuthAuthorizeRequest Class
#'
#' @docType class
#' @title GatewayOAuthAuthorizeRequest
#' @description GatewayOAuthAuthorizeRequest Class
#' @format An \code{R6Class} generator object
#' @field gateway_type  character
#' @field redirect_uri  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GatewayOAuthAuthorizeRequest <- R6::R6Class(
  "GatewayOAuthAuthorizeRequest",
  public = list(
    `gateway_type` = NULL,
    `redirect_uri` = NULL,

    #' @description
    #' Initialize a new GatewayOAuthAuthorizeRequest class.
    #'
    #' @param gateway_type gateway_type
    #' @param redirect_uri redirect_uri
    #' @param ... Other optional arguments.
    initialize = function(`gateway_type`, `redirect_uri`, ...) {
      if (!missing(`gateway_type`)) {
        if (!(is.character(`gateway_type`) && length(`gateway_type`) == 1)) {
          stop(paste("Error! Invalid data for `gateway_type`. Must be a string:", `gateway_type`))
        }
        self$`gateway_type` <- `gateway_type`
      }
      if (!missing(`redirect_uri`)) {
        if (!(is.character(`redirect_uri`) && length(`redirect_uri`) == 1)) {
          stop(paste("Error! Invalid data for `redirect_uri`. Must be a string:", `redirect_uri`))
        }
        self$`redirect_uri` <- `redirect_uri`
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
    #' @return GatewayOAuthAuthorizeRequest as a base R list.
    #' @examples
    #' # convert array of GatewayOAuthAuthorizeRequest (x) to a data frame
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
    #' Convert GatewayOAuthAuthorizeRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GatewayOAuthAuthorizeRequestObject <- list()
      if (!is.null(self$`gateway_type`)) {
        GatewayOAuthAuthorizeRequestObject[["gateway_type"]] <-
          self$`gateway_type`
      }
      if (!is.null(self$`redirect_uri`)) {
        GatewayOAuthAuthorizeRequestObject[["redirect_uri"]] <-
          self$`redirect_uri`
      }
      return(GatewayOAuthAuthorizeRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GatewayOAuthAuthorizeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GatewayOAuthAuthorizeRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gateway_type`)) {
        self$`gateway_type` <- this_object$`gateway_type`
      }
      if (!is.null(this_object$`redirect_uri`)) {
        self$`redirect_uri` <- this_object$`redirect_uri`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GatewayOAuthAuthorizeRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GatewayOAuthAuthorizeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GatewayOAuthAuthorizeRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gateway_type` <- this_object$`gateway_type`
      self$`redirect_uri` <- this_object$`redirect_uri`
      self
    },

    #' @description
    #' Validate JSON input with respect to GatewayOAuthAuthorizeRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `gateway_type`
      if (!is.null(input_json$`gateway_type`)) {
        if (!(is.character(input_json$`gateway_type`) && length(input_json$`gateway_type`) == 1)) {
          stop(paste("Error! Invalid data for `gateway_type`. Must be a string:", input_json$`gateway_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GatewayOAuthAuthorizeRequest: the required field `gateway_type` is missing."))
      }
      # check the required field `redirect_uri`
      if (!is.null(input_json$`redirect_uri`)) {
        if (!(is.character(input_json$`redirect_uri`) && length(input_json$`redirect_uri`) == 1)) {
          stop(paste("Error! Invalid data for `redirect_uri`. Must be a string:", input_json$`redirect_uri`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GatewayOAuthAuthorizeRequest: the required field `redirect_uri` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GatewayOAuthAuthorizeRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `gateway_type` is null
      if (is.null(self$`gateway_type`)) {
        return(FALSE)
      }

      # check if the required `redirect_uri` is null
      if (is.null(self$`redirect_uri`)) {
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
      # check if the required `gateway_type` is null
      if (is.null(self$`gateway_type`)) {
        invalid_fields["gateway_type"] <- "Non-nullable required field `gateway_type` cannot be null."
      }

      # check if the required `redirect_uri` is null
      if (is.null(self$`redirect_uri`)) {
        invalid_fields["redirect_uri"] <- "Non-nullable required field `redirect_uri` cannot be null."
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
# GatewayOAuthAuthorizeRequest$unlock()
#
## Below is an example to define the print function
# GatewayOAuthAuthorizeRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GatewayOAuthAuthorizeRequest$lock()

