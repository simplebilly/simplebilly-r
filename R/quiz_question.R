#' Create a new QuizQuestion
#'
#' @description
#' QuizQuestion Class
#'
#' @docType class
#' @title QuizQuestion
#' @description QuizQuestion Class
#' @format An \code{R6Class} generator object
#' @field id  character
#' @field options  list(character)
#' @field optionsEn  list(character)
#' @field question  character
#' @field questionEn  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QuizQuestion <- R6::R6Class(
  "QuizQuestion",
  public = list(
    `id` = NULL,
    `options` = NULL,
    `optionsEn` = NULL,
    `question` = NULL,
    `questionEn` = NULL,

    #' @description
    #' Initialize a new QuizQuestion class.
    #'
    #' @param id id
    #' @param options options
    #' @param optionsEn optionsEn
    #' @param question question
    #' @param questionEn questionEn
    #' @param ... Other optional arguments.
    initialize = function(`id`, `options`, `optionsEn`, `question`, `questionEn`, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`options`)) {
        stopifnot(is.vector(`options`), length(`options`) != 0)
        sapply(`options`, function(x) stopifnot(is.character(x)))
        self$`options` <- `options`
      }
      if (!missing(`optionsEn`)) {
        stopifnot(is.vector(`optionsEn`), length(`optionsEn`) != 0)
        sapply(`optionsEn`, function(x) stopifnot(is.character(x)))
        self$`optionsEn` <- `optionsEn`
      }
      if (!missing(`question`)) {
        if (!(is.character(`question`) && length(`question`) == 1)) {
          stop(paste("Error! Invalid data for `question`. Must be a string:", `question`))
        }
        self$`question` <- `question`
      }
      if (!missing(`questionEn`)) {
        if (!(is.character(`questionEn`) && length(`questionEn`) == 1)) {
          stop(paste("Error! Invalid data for `questionEn`. Must be a string:", `questionEn`))
        }
        self$`questionEn` <- `questionEn`
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
    #' @return QuizQuestion as a base R list.
    #' @examples
    #' # convert array of QuizQuestion (x) to a data frame
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
    #' Convert QuizQuestion to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QuizQuestionObject <- list()
      if (!is.null(self$`id`)) {
        QuizQuestionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`options`)) {
        QuizQuestionObject[["options"]] <-
          self$`options`
      }
      if (!is.null(self$`optionsEn`)) {
        QuizQuestionObject[["optionsEn"]] <-
          self$`optionsEn`
      }
      if (!is.null(self$`question`)) {
        QuizQuestionObject[["question"]] <-
          self$`question`
      }
      if (!is.null(self$`questionEn`)) {
        QuizQuestionObject[["questionEn"]] <-
          self$`questionEn`
      }
      return(QuizQuestionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QuizQuestion
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuizQuestion
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`options`)) {
        self$`options` <- ApiClient$new()$deserializeObj(this_object$`options`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`optionsEn`)) {
        self$`optionsEn` <- ApiClient$new()$deserializeObj(this_object$`optionsEn`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`question`)) {
        self$`question` <- this_object$`question`
      }
      if (!is.null(this_object$`questionEn`)) {
        self$`questionEn` <- this_object$`questionEn`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QuizQuestion in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QuizQuestion
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuizQuestion
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`options` <- ApiClient$new()$deserializeObj(this_object$`options`, "array[character]", loadNamespace("openapi"))
      self$`optionsEn` <- ApiClient$new()$deserializeObj(this_object$`optionsEn`, "array[character]", loadNamespace("openapi"))
      self$`question` <- this_object$`question`
      self$`questionEn` <- this_object$`questionEn`
      self
    },

    #' @description
    #' Validate JSON input with respect to QuizQuestion and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QuizQuestion: the required field `id` is missing."))
      }
      # check the required field `options`
      if (!is.null(input_json$`options`)) {
        stopifnot(is.vector(input_json$`options`), length(input_json$`options`) != 0)
        tmp <- sapply(input_json$`options`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QuizQuestion: the required field `options` is missing."))
      }
      # check the required field `optionsEn`
      if (!is.null(input_json$`optionsEn`)) {
        stopifnot(is.vector(input_json$`optionsEn`), length(input_json$`optionsEn`) != 0)
        tmp <- sapply(input_json$`optionsEn`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QuizQuestion: the required field `optionsEn` is missing."))
      }
      # check the required field `question`
      if (!is.null(input_json$`question`)) {
        if (!(is.character(input_json$`question`) && length(input_json$`question`) == 1)) {
          stop(paste("Error! Invalid data for `question`. Must be a string:", input_json$`question`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QuizQuestion: the required field `question` is missing."))
      }
      # check the required field `questionEn`
      if (!is.null(input_json$`questionEn`)) {
        if (!(is.character(input_json$`questionEn`) && length(input_json$`questionEn`) == 1)) {
          stop(paste("Error! Invalid data for `questionEn`. Must be a string:", input_json$`questionEn`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QuizQuestion: the required field `questionEn` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QuizQuestion
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `options` is null
      if (is.null(self$`options`)) {
        return(FALSE)
      }

      # check if the required `optionsEn` is null
      if (is.null(self$`optionsEn`)) {
        return(FALSE)
      }

      # check if the required `question` is null
      if (is.null(self$`question`)) {
        return(FALSE)
      }

      # check if the required `questionEn` is null
      if (is.null(self$`questionEn`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `options` is null
      if (is.null(self$`options`)) {
        invalid_fields["options"] <- "Non-nullable required field `options` cannot be null."
      }

      # check if the required `optionsEn` is null
      if (is.null(self$`optionsEn`)) {
        invalid_fields["optionsEn"] <- "Non-nullable required field `optionsEn` cannot be null."
      }

      # check if the required `question` is null
      if (is.null(self$`question`)) {
        invalid_fields["question"] <- "Non-nullable required field `question` cannot be null."
      }

      # check if the required `questionEn` is null
      if (is.null(self$`questionEn`)) {
        invalid_fields["questionEn"] <- "Non-nullable required field `questionEn` cannot be null."
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
# QuizQuestion$unlock()
#
## Below is an example to define the print function
# QuizQuestion$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QuizQuestion$lock()

