#' Create a new LegalDocument
#'
#' @description
#' LegalDocument Class
#'
#' @docType class
#' @title LegalDocument
#' @description LegalDocument Class
#' @format An \code{R6Class} generator object
#' @field content Plain text, `\\n\\n` separates paragraphs. character
#' @field docType  \link{LegalDocType}
#' @field lang  \link{LanguageCode}
#' @field title  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LegalDocument <- R6::R6Class(
  "LegalDocument",
  public = list(
    `content` = NULL,
    `docType` = NULL,
    `lang` = NULL,
    `title` = NULL,

    #' @description
    #' Initialize a new LegalDocument class.
    #'
    #' @param content Plain text, `\\n\\n` separates paragraphs.
    #' @param docType docType
    #' @param lang lang
    #' @param title title
    #' @param ... Other optional arguments.
    initialize = function(`content`, `docType`, `lang`, `title`, ...) {
      if (!missing(`content`)) {
        if (!(is.character(`content`) && length(`content`) == 1)) {
          stop(paste("Error! Invalid data for `content`. Must be a string:", `content`))
        }
        self$`content` <- `content`
      }
      if (!missing(`docType`)) {
        if (!(`docType` %in% c())) {
          stop(paste("Error! \"", `docType`, "\" cannot be assigned to `docType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`docType`))
        self$`docType` <- `docType`
      }
      if (!missing(`lang`)) {
        if (!(`lang` %in% c())) {
          stop(paste("Error! \"", `lang`, "\" cannot be assigned to `lang`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`lang`))
        self$`lang` <- `lang`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
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
    #' @return LegalDocument as a base R list.
    #' @examples
    #' # convert array of LegalDocument (x) to a data frame
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
    #' Convert LegalDocument to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LegalDocumentObject <- list()
      if (!is.null(self$`content`)) {
        LegalDocumentObject[["content"]] <-
          self$`content`
      }
      if (!is.null(self$`docType`)) {
        LegalDocumentObject[["docType"]] <-
          self$extractSimpleType(self$`docType`)
      }
      if (!is.null(self$`lang`)) {
        LegalDocumentObject[["lang"]] <-
          self$extractSimpleType(self$`lang`)
      }
      if (!is.null(self$`title`)) {
        LegalDocumentObject[["title"]] <-
          self$`title`
      }
      return(LegalDocumentObject)
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
    #' Deserialize JSON string into an instance of LegalDocument
    #'
    #' @param input_json the JSON input
    #' @return the instance of LegalDocument
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`content`)) {
        self$`content` <- this_object$`content`
      }
      if (!is.null(this_object$`docType`)) {
        `doctype_object` <- LegalDocType$new()
        `doctype_object`$fromJSON(jsonlite::toJSON(this_object$`docType`, auto_unbox = TRUE, digits = NA))
        self$`docType` <- `doctype_object`
      }
      if (!is.null(this_object$`lang`)) {
        `lang_object` <- LanguageCode$new()
        `lang_object`$fromJSON(jsonlite::toJSON(this_object$`lang`, auto_unbox = TRUE, digits = NA))
        self$`lang` <- `lang_object`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LegalDocument in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LegalDocument
    #'
    #' @param input_json the JSON input
    #' @return the instance of LegalDocument
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`content` <- this_object$`content`
      self$`docType` <- LegalDocType$new()$fromJSON(jsonlite::toJSON(this_object$`docType`, auto_unbox = TRUE, digits = NA))
      self$`lang` <- LanguageCode$new()$fromJSON(jsonlite::toJSON(this_object$`lang`, auto_unbox = TRUE, digits = NA))
      self$`title` <- this_object$`title`
      self
    },

    #' @description
    #' Validate JSON input with respect to LegalDocument and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `content`
      if (!is.null(input_json$`content`)) {
        if (!(is.character(input_json$`content`) && length(input_json$`content`) == 1)) {
          stop(paste("Error! Invalid data for `content`. Must be a string:", input_json$`content`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LegalDocument: the required field `content` is missing."))
      }
      # check the required field `docType`
      if (!is.null(input_json$`docType`)) {
        stopifnot(R6::is.R6(input_json$`docType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LegalDocument: the required field `docType` is missing."))
      }
      # check the required field `lang`
      if (!is.null(input_json$`lang`)) {
        stopifnot(R6::is.R6(input_json$`lang`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LegalDocument: the required field `lang` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LegalDocument: the required field `title` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LegalDocument
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `content` is null
      if (is.null(self$`content`)) {
        return(FALSE)
      }

      # check if the required `docType` is null
      if (is.null(self$`docType`)) {
        return(FALSE)
      }

      # check if the required `lang` is null
      if (is.null(self$`lang`)) {
        return(FALSE)
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
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
      # check if the required `content` is null
      if (is.null(self$`content`)) {
        invalid_fields["content"] <- "Non-nullable required field `content` cannot be null."
      }

      # check if the required `docType` is null
      if (is.null(self$`docType`)) {
        invalid_fields["docType"] <- "Non-nullable required field `docType` cannot be null."
      }

      # check if the required `lang` is null
      if (is.null(self$`lang`)) {
        invalid_fields["lang"] <- "Non-nullable required field `lang` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
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
# LegalDocument$unlock()
#
## Below is an example to define the print function
# LegalDocument$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LegalDocument$lock()

