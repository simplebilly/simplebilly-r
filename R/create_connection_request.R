#' Create a new CreateConnectionRequest
#'
#' @description
#' CreateConnectionRequest Class
#'
#' @docType class
#' @title CreateConnectionRequest
#' @description CreateConnectionRequest Class
#' @format An \code{R6Class} generator object
#' @field api_key  character [optional]
#' @field api_secret  character [optional]
#' @field config  \link{AnyType} [optional]
#' @field label  character
#' @field platform  character
#' @field shop_domain  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateConnectionRequest <- R6::R6Class(
  "CreateConnectionRequest",
  public = list(
    `api_key` = NULL,
    `api_secret` = NULL,
    `config` = NULL,
    `label` = NULL,
    `platform` = NULL,
    `shop_domain` = NULL,

    #' @description
    #' Initialize a new CreateConnectionRequest class.
    #'
    #' @param label label
    #' @param platform platform
    #' @param api_key api_key
    #' @param api_secret api_secret
    #' @param config config
    #' @param shop_domain shop_domain
    #' @param ... Other optional arguments.
    initialize = function(`label`, `platform`, `api_key` = NULL, `api_secret` = NULL, `config` = NULL, `shop_domain` = NULL, ...) {
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`platform`)) {
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!is.null(`api_key`)) {
        if (!(is.character(`api_key`) && length(`api_key`) == 1)) {
          stop(paste("Error! Invalid data for `api_key`. Must be a string:", `api_key`))
        }
        self$`api_key` <- `api_key`
      }
      if (!is.null(`api_secret`)) {
        if (!(is.character(`api_secret`) && length(`api_secret`) == 1)) {
          stop(paste("Error! Invalid data for `api_secret`. Must be a string:", `api_secret`))
        }
        self$`api_secret` <- `api_secret`
      }
      if (!is.null(`config`)) {
        stopifnot(R6::is.R6(`config`))
        self$`config` <- `config`
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
    #' @return CreateConnectionRequest as a base R list.
    #' @examples
    #' # convert array of CreateConnectionRequest (x) to a data frame
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
    #' Convert CreateConnectionRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateConnectionRequestObject <- list()
      if (!is.null(self$`api_key`)) {
        CreateConnectionRequestObject[["api_key"]] <-
          self$`api_key`
      }
      if (!is.null(self$`api_secret`)) {
        CreateConnectionRequestObject[["api_secret"]] <-
          self$`api_secret`
      }
      if (!is.null(self$`config`)) {
        CreateConnectionRequestObject[["config"]] <-
          self$extractSimpleType(self$`config`)
      }
      if (!is.null(self$`label`)) {
        CreateConnectionRequestObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`platform`)) {
        CreateConnectionRequestObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`shop_domain`)) {
        CreateConnectionRequestObject[["shop_domain"]] <-
          self$`shop_domain`
      }
      return(CreateConnectionRequestObject)
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
    #' Deserialize JSON string into an instance of CreateConnectionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateConnectionRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`api_key`)) {
        self$`api_key` <- this_object$`api_key`
      }
      if (!is.null(this_object$`api_secret`)) {
        self$`api_secret` <- this_object$`api_secret`
      }
      if (!is.null(this_object$`config`)) {
        `config_object` <- AnyType$new()
        `config_object`$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
        self$`config` <- `config_object`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`shop_domain`)) {
        self$`shop_domain` <- this_object$`shop_domain`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateConnectionRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateConnectionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateConnectionRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`api_key` <- this_object$`api_key`
      self$`api_secret` <- this_object$`api_secret`
      self$`config` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
      self$`label` <- this_object$`label`
      self$`platform` <- this_object$`platform`
      self$`shop_domain` <- this_object$`shop_domain`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateConnectionRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateConnectionRequest: the required field `label` is missing."))
      }
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateConnectionRequest: the required field `platform` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateConnectionRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
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
      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        invalid_fields["platform"] <- "Non-nullable required field `platform` cannot be null."
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
# CreateConnectionRequest$unlock()
#
## Below is an example to define the print function
# CreateConnectionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateConnectionRequest$lock()

