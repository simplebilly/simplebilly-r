#' Create a new Section
#'
#' @description
#' Section Class
#'
#' @docType class
#' @title Section
#' @description Section Class
#' @format An \code{R6Class} generator object
#' @field bodyHtml  character
#' @field bodyHtmlEn  character
#' @field id  character
#' @field title  character
#' @field titleEn  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Section <- R6::R6Class(
  "Section",
  public = list(
    `bodyHtml` = NULL,
    `bodyHtmlEn` = NULL,
    `id` = NULL,
    `title` = NULL,
    `titleEn` = NULL,

    #' @description
    #' Initialize a new Section class.
    #'
    #' @param bodyHtml bodyHtml
    #' @param bodyHtmlEn bodyHtmlEn
    #' @param id id
    #' @param title title
    #' @param titleEn titleEn
    #' @param ... Other optional arguments.
    initialize = function(`bodyHtml`, `bodyHtmlEn`, `id`, `title`, `titleEn`, ...) {
      if (!missing(`bodyHtml`)) {
        if (!(is.character(`bodyHtml`) && length(`bodyHtml`) == 1)) {
          stop(paste("Error! Invalid data for `bodyHtml`. Must be a string:", `bodyHtml`))
        }
        self$`bodyHtml` <- `bodyHtml`
      }
      if (!missing(`bodyHtmlEn`)) {
        if (!(is.character(`bodyHtmlEn`) && length(`bodyHtmlEn`) == 1)) {
          stop(paste("Error! Invalid data for `bodyHtmlEn`. Must be a string:", `bodyHtmlEn`))
        }
        self$`bodyHtmlEn` <- `bodyHtmlEn`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
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
    #' @return Section as a base R list.
    #' @examples
    #' # convert array of Section (x) to a data frame
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
    #' Convert Section to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SectionObject <- list()
      if (!is.null(self$`bodyHtml`)) {
        SectionObject[["bodyHtml"]] <-
          self$`bodyHtml`
      }
      if (!is.null(self$`bodyHtmlEn`)) {
        SectionObject[["bodyHtmlEn"]] <-
          self$`bodyHtmlEn`
      }
      if (!is.null(self$`id`)) {
        SectionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`title`)) {
        SectionObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`titleEn`)) {
        SectionObject[["titleEn"]] <-
          self$`titleEn`
      }
      return(SectionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Section
    #'
    #' @param input_json the JSON input
    #' @return the instance of Section
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bodyHtml`)) {
        self$`bodyHtml` <- this_object$`bodyHtml`
      }
      if (!is.null(this_object$`bodyHtmlEn`)) {
        self$`bodyHtmlEn` <- this_object$`bodyHtmlEn`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
    #' @return Section in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Section
    #'
    #' @param input_json the JSON input
    #' @return the instance of Section
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bodyHtml` <- this_object$`bodyHtml`
      self$`bodyHtmlEn` <- this_object$`bodyHtmlEn`
      self$`id` <- this_object$`id`
      self$`title` <- this_object$`title`
      self$`titleEn` <- this_object$`titleEn`
      self
    },

    #' @description
    #' Validate JSON input with respect to Section and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `bodyHtml`
      if (!is.null(input_json$`bodyHtml`)) {
        if (!(is.character(input_json$`bodyHtml`) && length(input_json$`bodyHtml`) == 1)) {
          stop(paste("Error! Invalid data for `bodyHtml`. Must be a string:", input_json$`bodyHtml`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Section: the required field `bodyHtml` is missing."))
      }
      # check the required field `bodyHtmlEn`
      if (!is.null(input_json$`bodyHtmlEn`)) {
        if (!(is.character(input_json$`bodyHtmlEn`) && length(input_json$`bodyHtmlEn`) == 1)) {
          stop(paste("Error! Invalid data for `bodyHtmlEn`. Must be a string:", input_json$`bodyHtmlEn`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Section: the required field `bodyHtmlEn` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Section: the required field `id` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Section: the required field `title` is missing."))
      }
      # check the required field `titleEn`
      if (!is.null(input_json$`titleEn`)) {
        if (!(is.character(input_json$`titleEn`) && length(input_json$`titleEn`) == 1)) {
          stop(paste("Error! Invalid data for `titleEn`. Must be a string:", input_json$`titleEn`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Section: the required field `titleEn` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Section
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `bodyHtml` is null
      if (is.null(self$`bodyHtml`)) {
        return(FALSE)
      }

      # check if the required `bodyHtmlEn` is null
      if (is.null(self$`bodyHtmlEn`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
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
      # check if the required `bodyHtml` is null
      if (is.null(self$`bodyHtml`)) {
        invalid_fields["bodyHtml"] <- "Non-nullable required field `bodyHtml` cannot be null."
      }

      # check if the required `bodyHtmlEn` is null
      if (is.null(self$`bodyHtmlEn`)) {
        invalid_fields["bodyHtmlEn"] <- "Non-nullable required field `bodyHtmlEn` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
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
# Section$unlock()
#
## Below is an example to define the print function
# Section$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Section$lock()

