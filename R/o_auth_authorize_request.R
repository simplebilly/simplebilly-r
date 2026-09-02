#' Create a new OAuthAuthorizeRequest
#'
#' @description
#' OAuthAuthorizeRequest Class
#'
#' @docType class
#' @title OAuthAuthorizeRequest
#' @description OAuthAuthorizeRequest Class
#' @format An \code{R6Class} generator object
#' @field config Optional platform-specific config (e.g. Shopify `shop_domain`, `api_key`, `api_secret`) needed to build the authorization URL. \link{AnyType} [optional]
#' @field platform  character
#' @field redirect_uri  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OAuthAuthorizeRequest <- R6::R6Class(
  "OAuthAuthorizeRequest",
  public = list(
    `config` = NULL,
    `platform` = NULL,
    `redirect_uri` = NULL,

    #' @description
    #' Initialize a new OAuthAuthorizeRequest class.
    #'
    #' @param platform platform
    #' @param redirect_uri redirect_uri
    #' @param config Optional platform-specific config (e.g. Shopify `shop_domain`, `api_key`, `api_secret`) needed to build the authorization URL.
    #' @param ... Other optional arguments.
    initialize = function(`platform`, `redirect_uri`, `config` = NULL, ...) {
      if (!missing(`platform`)) {
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!missing(`redirect_uri`)) {
        if (!(is.character(`redirect_uri`) && length(`redirect_uri`) == 1)) {
          stop(paste("Error! Invalid data for `redirect_uri`. Must be a string:", `redirect_uri`))
        }
        self$`redirect_uri` <- `redirect_uri`
      }
      if (!is.null(`config`)) {
        stopifnot(R6::is.R6(`config`))
        self$`config` <- `config`
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
    #' @return OAuthAuthorizeRequest as a base R list.
    #' @examples
    #' # convert array of OAuthAuthorizeRequest (x) to a data frame
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
    #' Convert OAuthAuthorizeRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OAuthAuthorizeRequestObject <- list()
      if (!is.null(self$`config`)) {
        OAuthAuthorizeRequestObject[["config"]] <-
          self$extractSimpleType(self$`config`)
      }
      if (!is.null(self$`platform`)) {
        OAuthAuthorizeRequestObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`redirect_uri`)) {
        OAuthAuthorizeRequestObject[["redirect_uri"]] <-
          self$`redirect_uri`
      }
      return(OAuthAuthorizeRequestObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of OAuthAuthorizeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OAuthAuthorizeRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`config`)) {
        `config_object` <- AnyType$new()
        `config_object`$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
        self$`config` <- `config_object`
      }
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
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
    #' @return OAuthAuthorizeRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OAuthAuthorizeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OAuthAuthorizeRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`config` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
      self$`platform` <- this_object$`platform`
      self$`redirect_uri` <- this_object$`redirect_uri`
      self
    },

    #' @description
    #' Validate JSON input with respect to OAuthAuthorizeRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OAuthAuthorizeRequest: the required field `platform` is missing."))
      }
      # check the required field `redirect_uri`
      if (!is.null(input_json$`redirect_uri`)) {
        if (!(is.character(input_json$`redirect_uri`) && length(input_json$`redirect_uri`) == 1)) {
          stop(paste("Error! Invalid data for `redirect_uri`. Must be a string:", input_json$`redirect_uri`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OAuthAuthorizeRequest: the required field `redirect_uri` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OAuthAuthorizeRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
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
      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        invalid_fields["platform"] <- "Non-nullable required field `platform` cannot be null."
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
# OAuthAuthorizeRequest$unlock()
#
## Below is an example to define the print function
# OAuthAuthorizeRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OAuthAuthorizeRequest$lock()

