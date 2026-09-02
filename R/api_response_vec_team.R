#' Create a new ApiResponseVecTeam
#'
#' @description
#' ApiResponseVecTeam Class
#'
#' @docType class
#' @title ApiResponseVecTeam
#' @description ApiResponseVecTeam Class
#' @format An \code{R6Class} generator object
#' @field data  list(\link{ApiResponseTeamData}) [optional]
#' @field error  character [optional]
#' @field message  character [optional]
#' @field success  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseVecTeam <- R6::R6Class(
  "ApiResponseVecTeam",
  public = list(
    `data` = NULL,
    `error` = NULL,
    `message` = NULL,
    `success` = NULL,

    #' @description
    #' Initialize a new ApiResponseVecTeam class.
    #'
    #' @param success success
    #' @param data data
    #' @param error error
    #' @param message message
    #' @param ... Other optional arguments.
    initialize = function(`success`, `data` = NULL, `error` = NULL, `message` = NULL, ...) {
      if (!missing(`success`)) {
        if (!(is.logical(`success`) && length(`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", `success`))
        }
        self$`success` <- `success`
      }
      if (!is.null(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
      if (!is.null(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
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
    #' @return ApiResponseVecTeam as a base R list.
    #' @examples
    #' # convert array of ApiResponseVecTeam (x) to a data frame
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
    #' Convert ApiResponseVecTeam to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApiResponseVecTeamObject <- list()
      if (!is.null(self$`data`)) {
        ApiResponseVecTeamObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      if (!is.null(self$`error`)) {
        ApiResponseVecTeamObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`message`)) {
        ApiResponseVecTeamObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`success`)) {
        ApiResponseVecTeamObject[["success"]] <-
          self$`success`
      }
      return(ApiResponseVecTeamObject)
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
    #' Deserialize JSON string into an instance of ApiResponseVecTeam
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiResponseVecTeam
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[ApiResponseTeamData]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`success`)) {
        self$`success` <- this_object$`success`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ApiResponseVecTeam in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApiResponseVecTeam
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiResponseVecTeam
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[ApiResponseTeamData]", loadNamespace("openapi"))
      self$`error` <- this_object$`error`
      self$`message` <- this_object$`message`
      self$`success` <- this_object$`success`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApiResponseVecTeam and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseVecTeam: the required field `success` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApiResponseVecTeam
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
# ApiResponseVecTeam$unlock()
#
## Below is an example to define the print function
# ApiResponseVecTeam$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApiResponseVecTeam$lock()

