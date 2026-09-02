#' Create a new AuthResponse
#'
#' @description
#' AuthResponse Class
#'
#' @docType class
#' @title AuthResponse
#' @description AuthResponse Class
#' @format An \code{R6Class} generator object
#' @field access_token  character [optional]
#' @field message  character [optional]
#' @field refresh_token  character [optional]
#' @field success  character
#' @field user  \link{Model} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AuthResponse <- R6::R6Class(
  "AuthResponse",
  public = list(
    `access_token` = NULL,
    `message` = NULL,
    `refresh_token` = NULL,
    `success` = NULL,
    `user` = NULL,

    #' @description
    #' Initialize a new AuthResponse class.
    #'
    #' @param success success
    #' @param access_token access_token
    #' @param message message
    #' @param refresh_token refresh_token
    #' @param user user
    #' @param ... Other optional arguments.
    initialize = function(`success`, `access_token` = NULL, `message` = NULL, `refresh_token` = NULL, `user` = NULL, ...) {
      if (!missing(`success`)) {
        if (!(is.logical(`success`) && length(`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", `success`))
        }
        self$`success` <- `success`
      }
      if (!is.null(`access_token`)) {
        if (!(is.character(`access_token`) && length(`access_token`) == 1)) {
          stop(paste("Error! Invalid data for `access_token`. Must be a string:", `access_token`))
        }
        self$`access_token` <- `access_token`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`refresh_token`)) {
        if (!(is.character(`refresh_token`) && length(`refresh_token`) == 1)) {
          stop(paste("Error! Invalid data for `refresh_token`. Must be a string:", `refresh_token`))
        }
        self$`refresh_token` <- `refresh_token`
      }
      if (!is.null(`user`)) {
        stopifnot(R6::is.R6(`user`))
        self$`user` <- `user`
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
    #' @return AuthResponse as a base R list.
    #' @examples
    #' # convert array of AuthResponse (x) to a data frame
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
    #' Convert AuthResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AuthResponseObject <- list()
      if (!is.null(self$`access_token`)) {
        AuthResponseObject[["access_token"]] <-
          self$`access_token`
      }
      if (!is.null(self$`message`)) {
        AuthResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`refresh_token`)) {
        AuthResponseObject[["refresh_token"]] <-
          self$`refresh_token`
      }
      if (!is.null(self$`success`)) {
        AuthResponseObject[["success"]] <-
          self$`success`
      }
      if (!is.null(self$`user`)) {
        AuthResponseObject[["user"]] <-
          self$extractSimpleType(self$`user`)
      }
      return(AuthResponseObject)
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
    #' Deserialize JSON string into an instance of AuthResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AuthResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`access_token`)) {
        self$`access_token` <- this_object$`access_token`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`refresh_token`)) {
        self$`refresh_token` <- this_object$`refresh_token`
      }
      if (!is.null(this_object$`success`)) {
        self$`success` <- this_object$`success`
      }
      if (!is.null(this_object$`user`)) {
        `user_object` <- Model$new()
        `user_object`$fromJSON(jsonlite::toJSON(this_object$`user`, auto_unbox = TRUE, digits = NA))
        self$`user` <- `user_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AuthResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AuthResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AuthResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`access_token` <- this_object$`access_token`
      self$`message` <- this_object$`message`
      self$`refresh_token` <- this_object$`refresh_token`
      self$`success` <- this_object$`success`
      self$`user` <- Model$new()$fromJSON(jsonlite::toJSON(this_object$`user`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AuthResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `success`
      if (!is.null(input_json$`success`)) {
        if (!(is.logical(input_json$`success`) && length(input_json$`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", input_json$`success`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AuthResponse: the required field `success` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AuthResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `success` is null
      if (is.null(self$`success`)) {
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
      # check if the required `success` is null
      if (is.null(self$`success`)) {
        invalid_fields["success"] <- "Non-nullable required field `success` cannot be null."
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
# AuthResponse$unlock()
#
## Below is an example to define the print function
# AuthResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AuthResponse$lock()

