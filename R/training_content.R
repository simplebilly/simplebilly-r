#' Create a new TrainingContent
#'
#' @description
#' TrainingContent Class
#'
#' @docType class
#' @title TrainingContent
#' @description TrainingContent Class
#' @format An \code{R6Class} generator object
#' @field code  character
#' @field contact  \link{ContactInfo}
#' @field passScore  integer
#' @field quiz  list(\link{QuizQuestion})
#' @field sections  list(\link{Section})
#' @field title  character
#' @field titleEn  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TrainingContent <- R6::R6Class(
  "TrainingContent",
  public = list(
    `code` = NULL,
    `contact` = NULL,
    `passScore` = NULL,
    `quiz` = NULL,
    `sections` = NULL,
    `title` = NULL,
    `titleEn` = NULL,

    #' @description
    #' Initialize a new TrainingContent class.
    #'
    #' @param code code
    #' @param contact contact
    #' @param passScore passScore
    #' @param quiz quiz
    #' @param sections sections
    #' @param title title
    #' @param titleEn titleEn
    #' @param ... Other optional arguments.
    initialize = function(`code`, `contact`, `passScore`, `quiz`, `sections`, `title`, `titleEn`, ...) {
      if (!missing(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!missing(`contact`)) {
        stopifnot(R6::is.R6(`contact`))
        self$`contact` <- `contact`
      }
      if (!missing(`passScore`)) {
        if (!(is.numeric(`passScore`) && length(`passScore`) == 1)) {
          stop(paste("Error! Invalid data for `passScore`. Must be an integer:", `passScore`))
        }
        self$`passScore` <- `passScore`
      }
      if (!missing(`quiz`)) {
        stopifnot(is.vector(`quiz`), length(`quiz`) != 0)
        sapply(`quiz`, function(x) stopifnot(R6::is.R6(x)))
        self$`quiz` <- `quiz`
      }
      if (!missing(`sections`)) {
        stopifnot(is.vector(`sections`), length(`sections`) != 0)
        sapply(`sections`, function(x) stopifnot(R6::is.R6(x)))
        self$`sections` <- `sections`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!missing(`titleEn`)) {
        if (!(is.character(`titleEn`) && length(`titleEn`) == 1)) {
          stop(paste("Error! Invalid data for `titleEn`. Must be a string:", `titleEn`))
        }
        self$`titleEn` <- `titleEn`
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
    #' @return TrainingContent as a base R list.
    #' @examples
    #' # convert array of TrainingContent (x) to a data frame
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
    #' Convert TrainingContent to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TrainingContentObject <- list()
      if (!is.null(self$`code`)) {
        TrainingContentObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`contact`)) {
        TrainingContentObject[["contact"]] <-
          self$extractSimpleType(self$`contact`)
      }
      if (!is.null(self$`passScore`)) {
        TrainingContentObject[["passScore"]] <-
          self$`passScore`
      }
      if (!is.null(self$`quiz`)) {
        TrainingContentObject[["quiz"]] <-
          self$extractSimpleType(self$`quiz`)
      }
      if (!is.null(self$`sections`)) {
        TrainingContentObject[["sections"]] <-
          self$extractSimpleType(self$`sections`)
      }
      if (!is.null(self$`title`)) {
        TrainingContentObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`titleEn`)) {
        TrainingContentObject[["titleEn"]] <-
          self$`titleEn`
      }
      return(TrainingContentObject)
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
    #' Deserialize JSON string into an instance of TrainingContent
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrainingContent
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`contact`)) {
        `contact_object` <- ContactInfo$new()
        `contact_object`$fromJSON(jsonlite::toJSON(this_object$`contact`, auto_unbox = TRUE, digits = NA))
        self$`contact` <- `contact_object`
      }
      if (!is.null(this_object$`passScore`)) {
        self$`passScore` <- this_object$`passScore`
      }
      if (!is.null(this_object$`quiz`)) {
        self$`quiz` <- ApiClient$new()$deserializeObj(this_object$`quiz`, "array[QuizQuestion]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`sections`)) {
        self$`sections` <- ApiClient$new()$deserializeObj(this_object$`sections`, "array[Section]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`titleEn`)) {
        self$`titleEn` <- this_object$`titleEn`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TrainingContent in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TrainingContent
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrainingContent
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`code` <- this_object$`code`
      self$`contact` <- ContactInfo$new()$fromJSON(jsonlite::toJSON(this_object$`contact`, auto_unbox = TRUE, digits = NA))
      self$`passScore` <- this_object$`passScore`
      self$`quiz` <- ApiClient$new()$deserializeObj(this_object$`quiz`, "array[QuizQuestion]", loadNamespace("openapi"))
      self$`sections` <- ApiClient$new()$deserializeObj(this_object$`sections`, "array[Section]", loadNamespace("openapi"))
      self$`title` <- this_object$`title`
      self$`titleEn` <- this_object$`titleEn`
      self
    },

    #' @description
    #' Validate JSON input with respect to TrainingContent and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for TrainingContent: the required field `code` is missing."))
      }
      # check the required field `contact`
      if (!is.null(input_json$`contact`)) {
        stopifnot(R6::is.R6(input_json$`contact`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrainingContent: the required field `contact` is missing."))
      }
      # check the required field `passScore`
      if (!is.null(input_json$`passScore`)) {
        if (!(is.numeric(input_json$`passScore`) && length(input_json$`passScore`) == 1)) {
          stop(paste("Error! Invalid data for `passScore`. Must be an integer:", input_json$`passScore`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrainingContent: the required field `passScore` is missing."))
      }
      # check the required field `quiz`
      if (!is.null(input_json$`quiz`)) {
        stopifnot(is.vector(input_json$`quiz`), length(input_json$`quiz`) != 0)
        tmp <- sapply(input_json$`quiz`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrainingContent: the required field `quiz` is missing."))
      }
      # check the required field `sections`
      if (!is.null(input_json$`sections`)) {
        stopifnot(is.vector(input_json$`sections`), length(input_json$`sections`) != 0)
        tmp <- sapply(input_json$`sections`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrainingContent: the required field `sections` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrainingContent: the required field `title` is missing."))
      }
      # check the required field `titleEn`
      if (!is.null(input_json$`titleEn`)) {
        if (!(is.character(input_json$`titleEn`) && length(input_json$`titleEn`) == 1)) {
          stop(paste("Error! Invalid data for `titleEn`. Must be a string:", input_json$`titleEn`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrainingContent: the required field `titleEn` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TrainingContent
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

      # check if the required `contact` is null
      if (is.null(self$`contact`)) {
        return(FALSE)
      }

      # check if the required `passScore` is null
      if (is.null(self$`passScore`)) {
        return(FALSE)
      }

      # check if the required `quiz` is null
      if (is.null(self$`quiz`)) {
        return(FALSE)
      }

      # check if the required `sections` is null
      if (is.null(self$`sections`)) {
        return(FALSE)
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      # check if the required `titleEn` is null
      if (is.null(self$`titleEn`)) {
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

      # check if the required `contact` is null
      if (is.null(self$`contact`)) {
        invalid_fields["contact"] <- "Non-nullable required field `contact` cannot be null."
      }

      # check if the required `passScore` is null
      if (is.null(self$`passScore`)) {
        invalid_fields["passScore"] <- "Non-nullable required field `passScore` cannot be null."
      }

      # check if the required `quiz` is null
      if (is.null(self$`quiz`)) {
        invalid_fields["quiz"] <- "Non-nullable required field `quiz` cannot be null."
      }

      # check if the required `sections` is null
      if (is.null(self$`sections`)) {
        invalid_fields["sections"] <- "Non-nullable required field `sections` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      # check if the required `titleEn` is null
      if (is.null(self$`titleEn`)) {
        invalid_fields["titleEn"] <- "Non-nullable required field `titleEn` cannot be null."
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
# TrainingContent$unlock()
#
## Below is an example to define the print function
# TrainingContent$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TrainingContent$lock()

