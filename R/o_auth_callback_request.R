#' Create a new OAuthCallbackRequest
#'
#' @description
#' OAuthCallbackRequest Class
#'
#' @docType class
#' @title OAuthCallbackRequest
#' @description OAuthCallbackRequest Class
#' @format An \code{R6Class} generator object
#' @field code  character
#' @field config  \link{AnyType} [optional]
#' @field connection_id  character [optional]
#' @field platform  character
#' @field shop_domain  character [optional]
#' @field state  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OAuthCallbackRequest <- R6::R6Class(
  "OAuthCallbackRequest",
  public = list(
    `code` = NULL,
    `config` = NULL,
    `connection_id` = NULL,
    `platform` = NULL,
    `shop_domain` = NULL,
    `state` = NULL,

    #' @description
    #' Initialize a new OAuthCallbackRequest class.
    #'
    #' @param code code
    #' @param platform platform
    #' @param state state
    #' @param config config
    #' @param connection_id connection_id
    #' @param shop_domain shop_domain
    #' @param ... Other optional arguments.
    initialize = function(`code`, `platform`, `state`, `config` = NULL, `connection_id` = NULL, `shop_domain` = NULL, ...) {
      if (!missing(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!missing(`platform`)) {
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!missing(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!is.null(`config`)) {
        stopifnot(R6::is.R6(`config`))
        self$`config` <- `config`
      }
      if (!is.null(`connection_id`)) {
        if (!(is.character(`connection_id`) && length(`connection_id`) == 1)) {
          stop(paste("Error! Invalid data for `connection_id`. Must be a string:", `connection_id`))
        }
        self$`connection_id` <- `connection_id`
      }
      if (!is.null(`shop_domain`)) {
        if (!(is.character(`shop_domain`) && length(`shop_domain`) == 1)) {
          stop(paste("Error! Invalid data for `shop_domain`. Must be a string:", `shop_domain`))
        }
        self$`shop_domain` <- `shop_domain`
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
    #' @return OAuthCallbackRequest as a base R list.
    #' @examples
    #' # convert array of OAuthCallbackRequest (x) to a data frame
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
    #' Convert OAuthCallbackRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OAuthCallbackRequestObject <- list()
      if (!is.null(self$`code`)) {
        OAuthCallbackRequestObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`config`)) {
        OAuthCallbackRequestObject[["config"]] <-
          self$extractSimpleType(self$`config`)
      }
      if (!is.null(self$`connection_id`)) {
        OAuthCallbackRequestObject[["connection_id"]] <-
          self$`connection_id`
      }
      if (!is.null(self$`platform`)) {
        OAuthCallbackRequestObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`shop_domain`)) {
        OAuthCallbackRequestObject[["shop_domain"]] <-
          self$`shop_domain`
      }
      if (!is.null(self$`state`)) {
        OAuthCallbackRequestObject[["state"]] <-
          self$`state`
      }
      return(OAuthCallbackRequestObject)
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
    #' Deserialize JSON string into an instance of OAuthCallbackRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OAuthCallbackRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`config`)) {
        `config_object` <- AnyType$new()
        `config_object`$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
        self$`config` <- `config_object`
      }
      if (!is.null(this_object$`connection_id`)) {
        self$`connection_id` <- this_object$`connection_id`
      }
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`shop_domain`)) {
        self$`shop_domain` <- this_object$`shop_domain`
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
    #' @return OAuthCallbackRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OAuthCallbackRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of OAuthCallbackRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`code` <- this_object$`code`
      self$`config` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
      self$`connection_id` <- this_object$`connection_id`
      self$`platform` <- this_object$`platform`
      self$`shop_domain` <- this_object$`shop_domain`
      self$`state` <- this_object$`state`
      self
    },

    #' @description
    #' Validate JSON input with respect to OAuthCallbackRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for OAuthCallbackRequest: the required field `code` is missing."))
      }
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OAuthCallbackRequest: the required field `platform` is missing."))
      }
      # check the required field `state`
      if (!is.null(input_json$`state`)) {
        if (!(is.character(input_json$`state`) && length(input_json$`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", input_json$`state`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OAuthCallbackRequest: the required field `state` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OAuthCallbackRequest
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

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
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

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        invalid_fields["platform"] <- "Non-nullable required field `platform` cannot be null."
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
# OAuthCallbackRequest$unlock()
#
## Below is an example to define the print function
# OAuthCallbackRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OAuthCallbackRequest$lock()

