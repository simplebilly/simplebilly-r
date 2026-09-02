#' Create a new GatewayOAuthCallbackRequest
#'
#' @description
#' GatewayOAuthCallbackRequest Class
#'
#' @docType class
#' @title GatewayOAuthCallbackRequest
#' @description GatewayOAuthCallbackRequest Class
#' @format An \code{R6Class} generator object
#' @field code  character
#' @field gateway_type  character
#' @field redirect_uri  character
#' @field state  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GatewayOAuthCallbackRequest <- R6::R6Class(
  "GatewayOAuthCallbackRequest",
  public = list(
    `code` = NULL,
    `gateway_type` = NULL,
    `redirect_uri` = NULL,
    `state` = NULL,

    #' @description
    #' Initialize a new GatewayOAuthCallbackRequest class.
    #'
    #' @param code code
    #' @param gateway_type gateway_type
    #' @param redirect_uri redirect_uri
    #' @param state state
    #' @param ... Other optional arguments.
    initialize = function(`code`, `gateway_type`, `redirect_uri`, `state`, ...) {
      if (!missing(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
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
    #' @return GatewayOAuthCallbackRequest as a base R list.
    #' @examples
    #' # convert array of GatewayOAuthCallbackRequest (x) to a data frame
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
    #' Convert GatewayOAuthCallbackRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GatewayOAuthCallbackRequestObject <- list()
      if (!is.null(self$`code`)) {
        GatewayOAuthCallbackRequestObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`gateway_type`)) {
        GatewayOAuthCallbackRequestObject[["gateway_type"]] <-
          self$`gateway_type`
      }
      if (!is.null(self$`redirect_uri`)) {
        GatewayOAuthCallbackRequestObject[["redirect_uri"]] <-
          self$`redirect_uri`
      }
      if (!is.null(self$`state`)) {
        GatewayOAuthCallbackRequestObject[["state"]] <-
          self$`state`
      }
      return(GatewayOAuthCallbackRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GatewayOAuthCallbackRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GatewayOAuthCallbackRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`gateway_type`)) {
        self$`gateway_type` <- this_object$`gateway_type`
      }
      if (!is.null(this_object$`redirect_uri`)) {
        self$`redirect_uri` <- this_object$`redirect_uri`
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
    #' @return GatewayOAuthCallbackRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GatewayOAuthCallbackRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GatewayOAuthCallbackRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`code` <- this_object$`code`
      self$`gateway_type` <- this_object$`gateway_type`
      self$`redirect_uri` <- this_object$`redirect_uri`
      self$`state` <- this_object$`state`
      self
    },

    #' @description
    #' Validate JSON input with respect to GatewayOAuthCallbackRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `code`
      if (!is.null(input_json$`code`)) {
        if (!(is.character(input_json$`code`) && length(input_json$`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", input_json$`code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GatewayOAuthCallbackRequest: the required field `code` is missing."))
      }
      # check the required field `gateway_type`
      if (!is.null(input_json$`gateway_type`)) {
        if (!(is.character(input_json$`gateway_type`) && length(input_json$`gateway_type`) == 1)) {
          stop(paste("Error! Invalid data for `gateway_type`. Must be a string:", input_json$`gateway_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GatewayOAuthCallbackRequest: the required field `gateway_type` is missing."))
      }
      # check the required field `redirect_uri`
      if (!is.null(input_json$`redirect_uri`)) {
        if (!(is.character(input_json$`redirect_uri`) && length(input_json$`redirect_uri`) == 1)) {
          stop(paste("Error! Invalid data for `redirect_uri`. Must be a string:", input_json$`redirect_uri`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GatewayOAuthCallbackRequest: the required field `redirect_uri` is missing."))
      }
      # check the required field `state`
      if (!is.null(input_json$`state`)) {
        if (!(is.character(input_json$`state`) && length(input_json$`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", input_json$`state`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GatewayOAuthCallbackRequest: the required field `state` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GatewayOAuthCallbackRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `code` is null
      if (is.null(self$`code`)) {
        return(FALSE)
      }

      # check if the required `gateway_type` is null
      if (is.null(self$`gateway_type`)) {
        return(FALSE)
      }

      # check if the required `redirect_uri` is null
      if (is.null(self$`redirect_uri`)) {
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
      # check if the required `code` is null
      if (is.null(self$`code`)) {
        invalid_fields["code"] <- "Non-nullable required field `code` cannot be null."
      }

      # check if the required `gateway_type` is null
      if (is.null(self$`gateway_type`)) {
        invalid_fields["gateway_type"] <- "Non-nullable required field `gateway_type` cannot be null."
      }

      # check if the required `redirect_uri` is null
      if (is.null(self$`redirect_uri`)) {
        invalid_fields["redirect_uri"] <- "Non-nullable required field `redirect_uri` cannot be null."
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
# GatewayOAuthCallbackRequest$unlock()
#
## Below is an example to define the print function
# GatewayOAuthCallbackRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GatewayOAuthCallbackRequest$lock()

