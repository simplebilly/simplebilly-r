#' Create a new OffenlegungItem
#'
#' @description
#' OffenlegungItem Class
#'
#' @docType class
#' @title OffenlegungItem
#' @description OffenlegungItem Class
#' @format An \code{R6Class} generator object
#' @field exists Ob die zugrunde liegenden Daten im System vorhanden sind. character
#' @field name Bezeichnung des Offenlegungsbestandteils (§ 325 Abs. 1 HGB). character
#' @field source Woher der Bestandteil stammt bzw. fehlt. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OffenlegungItem <- R6::R6Class(
  "OffenlegungItem",
  public = list(
    `exists` = NULL,
    `name` = NULL,
    `source` = NULL,

    #' @description
    #' Initialize a new OffenlegungItem class.
    #'
    #' @param exists Ob die zugrunde liegenden Daten im System vorhanden sind.
    #' @param name Bezeichnung des Offenlegungsbestandteils (§ 325 Abs. 1 HGB).
    #' @param source Woher der Bestandteil stammt bzw. fehlt.
    #' @param ... Other optional arguments.
    initialize = function(`exists`, `name`, `source`, ...) {
      if (!missing(`exists`)) {
        if (!(is.logical(`exists`) && length(`exists`) == 1)) {
          stop(paste("Error! Invalid data for `exists`. Must be a boolean:", `exists`))
        }
        self$`exists` <- `exists`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
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
    #' @return OffenlegungItem as a base R list.
    #' @examples
    #' # convert array of OffenlegungItem (x) to a data frame
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
    #' Convert OffenlegungItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OffenlegungItemObject <- list()
      if (!is.null(self$`exists`)) {
        OffenlegungItemObject[["exists"]] <-
          self$`exists`
      }
      if (!is.null(self$`name`)) {
        OffenlegungItemObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`source`)) {
        OffenlegungItemObject[["source"]] <-
          self$`source`
      }
      return(OffenlegungItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OffenlegungItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of OffenlegungItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`exists`)) {
        self$`exists` <- this_object$`exists`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OffenlegungItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OffenlegungItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of OffenlegungItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`exists` <- this_object$`exists`
      self$`name` <- this_object$`name`
      self$`source` <- this_object$`source`
      self
    },

    #' @description
    #' Validate JSON input with respect to OffenlegungItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `exists`
      if (!is.null(input_json$`exists`)) {
        if (!(is.logical(input_json$`exists`) && length(input_json$`exists`) == 1)) {
          stop(paste("Error! Invalid data for `exists`. Must be a boolean:", input_json$`exists`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OffenlegungItem: the required field `exists` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OffenlegungItem: the required field `name` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OffenlegungItem: the required field `source` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OffenlegungItem
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `exists` is null
      if (is.null(self$`exists`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
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
      # check if the required `exists` is null
      if (is.null(self$`exists`)) {
        invalid_fields["exists"] <- "Non-nullable required field `exists` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
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
# OffenlegungItem$unlock()
#
## Below is an example to define the print function
# OffenlegungItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OffenlegungItem$lock()

