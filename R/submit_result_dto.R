#' Create a new SubmitResultDto
#'
#' @description
#' SubmitResultDto Class
#'
#' @docType class
#' @title SubmitResultDto
#' @description SubmitResultDto Class
#' @format An \code{R6Class} generator object
#' @field answers Selected answer indices (required for scored builtin trainings). list(integer)
#' @field assignmentId  character [optional]
#' @field score Score 0–100. Only trusted for plugin trainings without server-side scoring; builtin trainings are always re-scored from `answers`. integer
#' @field trainingCode  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SubmitResultDto <- R6::R6Class(
  "SubmitResultDto",
  public = list(
    `answers` = NULL,
    `assignmentId` = NULL,
    `score` = NULL,
    `trainingCode` = NULL,

    #' @description
    #' Initialize a new SubmitResultDto class.
    #'
    #' @param answers Selected answer indices (required for scored builtin trainings).
    #' @param score Score 0–100. Only trusted for plugin trainings without server-side scoring; builtin trainings are always re-scored from `answers`.
    #' @param trainingCode trainingCode
    #' @param assignmentId assignmentId
    #' @param ... Other optional arguments.
    initialize = function(`answers`, `score`, `trainingCode`, `assignmentId` = NULL, ...) {
      if (!missing(`answers`)) {
        stopifnot(is.vector(`answers`), length(`answers`) != 0)
        sapply(`answers`, function(x) stopifnot(is.character(x)))
        self$`answers` <- `answers`
      }
      if (!missing(`score`)) {
        if (!(is.numeric(`score`) && length(`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be an integer:", `score`))
        }
        self$`score` <- `score`
      }
      if (!missing(`trainingCode`)) {
        if (!(is.character(`trainingCode`) && length(`trainingCode`) == 1)) {
          stop(paste("Error! Invalid data for `trainingCode`. Must be a string:", `trainingCode`))
        }
        self$`trainingCode` <- `trainingCode`
      }
      if (!is.null(`assignmentId`)) {
        if (!(is.character(`assignmentId`) && length(`assignmentId`) == 1)) {
          stop(paste("Error! Invalid data for `assignmentId`. Must be a string:", `assignmentId`))
        }
        self$`assignmentId` <- `assignmentId`
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
    #' @return SubmitResultDto as a base R list.
    #' @examples
    #' # convert array of SubmitResultDto (x) to a data frame
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
    #' Convert SubmitResultDto to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SubmitResultDtoObject <- list()
      if (!is.null(self$`answers`)) {
        SubmitResultDtoObject[["answers"]] <-
          self$`answers`
      }
      if (!is.null(self$`assignmentId`)) {
        SubmitResultDtoObject[["assignmentId"]] <-
          self$`assignmentId`
      }
      if (!is.null(self$`score`)) {
        SubmitResultDtoObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`trainingCode`)) {
        SubmitResultDtoObject[["trainingCode"]] <-
          self$`trainingCode`
      }
      return(SubmitResultDtoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SubmitResultDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubmitResultDto
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`answers`)) {
        self$`answers` <- ApiClient$new()$deserializeObj(this_object$`answers`, "array[integer]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`assignmentId`)) {
        self$`assignmentId` <- this_object$`assignmentId`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`trainingCode`)) {
        self$`trainingCode` <- this_object$`trainingCode`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SubmitResultDto in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SubmitResultDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubmitResultDto
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`answers` <- ApiClient$new()$deserializeObj(this_object$`answers`, "array[integer]", loadNamespace("openapi"))
      self$`assignmentId` <- this_object$`assignmentId`
      self$`score` <- this_object$`score`
      self$`trainingCode` <- this_object$`trainingCode`
      self
    },

    #' @description
    #' Validate JSON input with respect to SubmitResultDto and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `answers`
      if (!is.null(input_json$`answers`)) {
        stopifnot(is.vector(input_json$`answers`), length(input_json$`answers`) != 0)
        tmp <- sapply(input_json$`answers`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubmitResultDto: the required field `answers` is missing."))
      }
      # check the required field `score`
      if (!is.null(input_json$`score`)) {
        if (!(is.numeric(input_json$`score`) && length(input_json$`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be an integer:", input_json$`score`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubmitResultDto: the required field `score` is missing."))
      }
      # check the required field `trainingCode`
      if (!is.null(input_json$`trainingCode`)) {
        if (!(is.character(input_json$`trainingCode`) && length(input_json$`trainingCode`) == 1)) {
          stop(paste("Error! Invalid data for `trainingCode`. Must be a string:", input_json$`trainingCode`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubmitResultDto: the required field `trainingCode` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SubmitResultDto
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `answers` is null
      if (is.null(self$`answers`)) {
        return(FALSE)
      }

      # check if the required `score` is null
      if (is.null(self$`score`)) {
        return(FALSE)
      }

      # check if the required `trainingCode` is null
      if (is.null(self$`trainingCode`)) {
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
      # check if the required `answers` is null
      if (is.null(self$`answers`)) {
        invalid_fields["answers"] <- "Non-nullable required field `answers` cannot be null."
      }

      # check if the required `score` is null
      if (is.null(self$`score`)) {
        invalid_fields["score"] <- "Non-nullable required field `score` cannot be null."
      }

      # check if the required `trainingCode` is null
      if (is.null(self$`trainingCode`)) {
        invalid_fields["trainingCode"] <- "Non-nullable required field `trainingCode` cannot be null."
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
# SubmitResultDto$unlock()
#
## Below is an example to define the print function
# SubmitResultDto$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SubmitResultDto$lock()

