#' Create a new ChangelogEntry
#'
#' @description
#' One changelog entry for a plugin release.
#'
#' @docType class
#' @title ChangelogEntry
#' @description ChangelogEntry Class
#' @format An \code{R6Class} generator object
#' @field date  character
#' @field notes  character
#' @field version  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ChangelogEntry <- R6::R6Class(
  "ChangelogEntry",
  public = list(
    `date` = NULL,
    `notes` = NULL,
    `version` = NULL,

    #' @description
    #' Initialize a new ChangelogEntry class.
    #'
    #' @param date date
    #' @param notes notes
    #' @param version version
    #' @param ... Other optional arguments.
    initialize = function(`date`, `notes`, `version`, ...) {
      if (!missing(`date`)) {
        if (!(is.character(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!missing(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!missing(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
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
    #' @return ChangelogEntry as a base R list.
    #' @examples
    #' # convert array of ChangelogEntry (x) to a data frame
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
    #' Convert ChangelogEntry to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ChangelogEntryObject <- list()
      if (!is.null(self$`date`)) {
        ChangelogEntryObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`notes`)) {
        ChangelogEntryObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`version`)) {
        ChangelogEntryObject[["version"]] <-
          self$`version`
      }
      return(ChangelogEntryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ChangelogEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of ChangelogEntry
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ChangelogEntry in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ChangelogEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of ChangelogEntry
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`date` <- this_object$`date`
      self$`notes` <- this_object$`notes`
      self$`version` <- this_object$`version`
      self
    },

    #' @description
    #' Validate JSON input with respect to ChangelogEntry and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `date`
      if (!is.null(input_json$`date`)) {
        if (!(is.character(input_json$`date`) && length(input_json$`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", input_json$`date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ChangelogEntry: the required field `date` is missing."))
      }
      # check the required field `notes`
      if (!is.null(input_json$`notes`)) {
        if (!(is.character(input_json$`notes`) && length(input_json$`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", input_json$`notes`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ChangelogEntry: the required field `notes` is missing."))
      }
      # check the required field `version`
      if (!is.null(input_json$`version`)) {
        if (!(is.character(input_json$`version`) && length(input_json$`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", input_json$`version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ChangelogEntry: the required field `version` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ChangelogEntry
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `date` is null
      if (is.null(self$`date`)) {
        return(FALSE)
      }

      # check if the required `notes` is null
      if (is.null(self$`notes`)) {
        return(FALSE)
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
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
      # check if the required `date` is null
      if (is.null(self$`date`)) {
        invalid_fields["date"] <- "Non-nullable required field `date` cannot be null."
      }

      # check if the required `notes` is null
      if (is.null(self$`notes`)) {
        invalid_fields["notes"] <- "Non-nullable required field `notes` cannot be null."
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
        invalid_fields["version"] <- "Non-nullable required field `version` cannot be null."
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
# ChangelogEntry$unlock()
#
## Below is an example to define the print function
# ChangelogEntry$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ChangelogEntry$lock()

