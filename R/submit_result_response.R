#' Create a new SubmitResultResponse
#'
#' @description
#' SubmitResultResponse Class
#'
#' @docType class
#' @title SubmitResultResponse
#' @description SubmitResultResponse Class
#' @format An \code{R6Class} generator object
#' @field certificateId  character [optional]
#' @field completionId  character
#' @field passScore  integer
#' @field passed  character
#' @field score  integer
#' @field validUntil  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SubmitResultResponse <- R6::R6Class(
  "SubmitResultResponse",
  public = list(
    `certificateId` = NULL,
    `completionId` = NULL,
    `passScore` = NULL,
    `passed` = NULL,
    `score` = NULL,
    `validUntil` = NULL,

    #' @description
    #' Initialize a new SubmitResultResponse class.
    #'
    #' @param completionId completionId
    #' @param passScore passScore
    #' @param passed passed
    #' @param score score
    #' @param certificateId certificateId
    #' @param validUntil validUntil
    #' @param ... Other optional arguments.
    initialize = function(`completionId`, `passScore`, `passed`, `score`, `certificateId` = NULL, `validUntil` = NULL, ...) {
      if (!missing(`completionId`)) {
        if (!(is.character(`completionId`) && length(`completionId`) == 1)) {
          stop(paste("Error! Invalid data for `completionId`. Must be a string:", `completionId`))
        }
        self$`completionId` <- `completionId`
      }
      if (!missing(`passScore`)) {
        if (!(is.numeric(`passScore`) && length(`passScore`) == 1)) {
          stop(paste("Error! Invalid data for `passScore`. Must be an integer:", `passScore`))
        }
        self$`passScore` <- `passScore`
      }
      if (!missing(`passed`)) {
        if (!(is.logical(`passed`) && length(`passed`) == 1)) {
          stop(paste("Error! Invalid data for `passed`. Must be a boolean:", `passed`))
        }
        self$`passed` <- `passed`
      }
      if (!missing(`score`)) {
        if (!(is.numeric(`score`) && length(`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be an integer:", `score`))
        }
        self$`score` <- `score`
      }
      if (!is.null(`certificateId`)) {
        if (!(is.character(`certificateId`) && length(`certificateId`) == 1)) {
          stop(paste("Error! Invalid data for `certificateId`. Must be a string:", `certificateId`))
        }
        self$`certificateId` <- `certificateId`
      }
      if (!is.null(`validUntil`)) {
        if (!is.character(`validUntil`)) {
          stop(paste("Error! Invalid data for `validUntil`. Must be a string:", `validUntil`))
        }
        self$`validUntil` <- `validUntil`
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
    #' @return SubmitResultResponse as a base R list.
    #' @examples
    #' # convert array of SubmitResultResponse (x) to a data frame
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
    #' Convert SubmitResultResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SubmitResultResponseObject <- list()
      if (!is.null(self$`certificateId`)) {
        SubmitResultResponseObject[["certificateId"]] <-
          self$`certificateId`
      }
      if (!is.null(self$`completionId`)) {
        SubmitResultResponseObject[["completionId"]] <-
          self$`completionId`
      }
      if (!is.null(self$`passScore`)) {
        SubmitResultResponseObject[["passScore"]] <-
          self$`passScore`
      }
      if (!is.null(self$`passed`)) {
        SubmitResultResponseObject[["passed"]] <-
          self$`passed`
      }
      if (!is.null(self$`score`)) {
        SubmitResultResponseObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`validUntil`)) {
        SubmitResultResponseObject[["validUntil"]] <-
          self$`validUntil`
      }
      return(SubmitResultResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SubmitResultResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubmitResultResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`certificateId`)) {
        self$`certificateId` <- this_object$`certificateId`
      }
      if (!is.null(this_object$`completionId`)) {
        self$`completionId` <- this_object$`completionId`
      }
      if (!is.null(this_object$`passScore`)) {
        self$`passScore` <- this_object$`passScore`
      }
      if (!is.null(this_object$`passed`)) {
        self$`passed` <- this_object$`passed`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`validUntil`)) {
        self$`validUntil` <- this_object$`validUntil`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SubmitResultResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SubmitResultResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubmitResultResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`certificateId` <- this_object$`certificateId`
      self$`completionId` <- this_object$`completionId`
      self$`passScore` <- this_object$`passScore`
      self$`passed` <- this_object$`passed`
      self$`score` <- this_object$`score`
      self$`validUntil` <- this_object$`validUntil`
      self
    },

    #' @description
    #' Validate JSON input with respect to SubmitResultResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `completionId`
      if (!is.null(input_json$`completionId`)) {
        if (!(is.character(input_json$`completionId`) && length(input_json$`completionId`) == 1)) {
          stop(paste("Error! Invalid data for `completionId`. Must be a string:", input_json$`completionId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubmitResultResponse: the required field `completionId` is missing."))
      }
      # check the required field `passScore`
      if (!is.null(input_json$`passScore`)) {
        if (!(is.numeric(input_json$`passScore`) && length(input_json$`passScore`) == 1)) {
          stop(paste("Error! Invalid data for `passScore`. Must be an integer:", input_json$`passScore`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubmitResultResponse: the required field `passScore` is missing."))
      }
      # check the required field `passed`
      if (!is.null(input_json$`passed`)) {
        if (!(is.logical(input_json$`passed`) && length(input_json$`passed`) == 1)) {
          stop(paste("Error! Invalid data for `passed`. Must be a boolean:", input_json$`passed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubmitResultResponse: the required field `passed` is missing."))
      }
      # check the required field `score`
      if (!is.null(input_json$`score`)) {
        if (!(is.numeric(input_json$`score`) && length(input_json$`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be an integer:", input_json$`score`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubmitResultResponse: the required field `score` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SubmitResultResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `completionId` is null
      if (is.null(self$`completionId`)) {
        return(FALSE)
      }

      # check if the required `passScore` is null
      if (is.null(self$`passScore`)) {
        return(FALSE)
      }

      # check if the required `passed` is null
      if (is.null(self$`passed`)) {
        return(FALSE)
      }

      # check if the required `score` is null
      if (is.null(self$`score`)) {
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
      # check if the required `completionId` is null
      if (is.null(self$`completionId`)) {
        invalid_fields["completionId"] <- "Non-nullable required field `completionId` cannot be null."
      }

      # check if the required `passScore` is null
      if (is.null(self$`passScore`)) {
        invalid_fields["passScore"] <- "Non-nullable required field `passScore` cannot be null."
      }

      # check if the required `passed` is null
      if (is.null(self$`passed`)) {
        invalid_fields["passed"] <- "Non-nullable required field `passed` cannot be null."
      }

      # check if the required `score` is null
      if (is.null(self$`score`)) {
        invalid_fields["score"] <- "Non-nullable required field `score` cannot be null."
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
# SubmitResultResponse$unlock()
#
## Below is an example to define the print function
# SubmitResultResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SubmitResultResponse$lock()

