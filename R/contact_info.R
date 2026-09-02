#' Create a new ContactInfo
#'
#' @description
#' ContactInfo Class
#'
#' @docType class
#' @title ContactInfo
#' @description ContactInfo Class
#' @format An \code{R6Class} generator object
#' @field hint  character
#' @field hintEn  character
#' @field role  character
#' @field roleEn  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContactInfo <- R6::R6Class(
  "ContactInfo",
  public = list(
    `hint` = NULL,
    `hintEn` = NULL,
    `role` = NULL,
    `roleEn` = NULL,

    #' @description
    #' Initialize a new ContactInfo class.
    #'
    #' @param hint hint
    #' @param hintEn hintEn
    #' @param role role
    #' @param roleEn roleEn
    #' @param ... Other optional arguments.
    initialize = function(`hint`, `hintEn`, `role`, `roleEn`, ...) {
      if (!missing(`hint`)) {
        if (!(is.character(`hint`) && length(`hint`) == 1)) {
          stop(paste("Error! Invalid data for `hint`. Must be a string:", `hint`))
        }
        self$`hint` <- `hint`
      }
      if (!missing(`hintEn`)) {
        if (!(is.character(`hintEn`) && length(`hintEn`) == 1)) {
          stop(paste("Error! Invalid data for `hintEn`. Must be a string:", `hintEn`))
        }
        self$`hintEn` <- `hintEn`
      }
      if (!missing(`role`)) {
        if (!(is.character(`role`) && length(`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", `role`))
        }
        self$`role` <- `role`
      }
      if (!missing(`roleEn`)) {
        if (!(is.character(`roleEn`) && length(`roleEn`) == 1)) {
          stop(paste("Error! Invalid data for `roleEn`. Must be a string:", `roleEn`))
        }
        self$`roleEn` <- `roleEn`
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
    #' @return ContactInfo as a base R list.
    #' @examples
    #' # convert array of ContactInfo (x) to a data frame
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
    #' Convert ContactInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ContactInfoObject <- list()
      if (!is.null(self$`hint`)) {
        ContactInfoObject[["hint"]] <-
          self$`hint`
      }
      if (!is.null(self$`hintEn`)) {
        ContactInfoObject[["hintEn"]] <-
          self$`hintEn`
      }
      if (!is.null(self$`role`)) {
        ContactInfoObject[["role"]] <-
          self$`role`
      }
      if (!is.null(self$`roleEn`)) {
        ContactInfoObject[["roleEn"]] <-
          self$`roleEn`
      }
      return(ContactInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ContactInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContactInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`hint`)) {
        self$`hint` <- this_object$`hint`
      }
      if (!is.null(this_object$`hintEn`)) {
        self$`hintEn` <- this_object$`hintEn`
      }
      if (!is.null(this_object$`role`)) {
        self$`role` <- this_object$`role`
      }
      if (!is.null(this_object$`roleEn`)) {
        self$`roleEn` <- this_object$`roleEn`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ContactInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ContactInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContactInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`hint` <- this_object$`hint`
      self$`hintEn` <- this_object$`hintEn`
      self$`role` <- this_object$`role`
      self$`roleEn` <- this_object$`roleEn`
      self
    },

    #' @description
    #' Validate JSON input with respect to ContactInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `hint`
      if (!is.null(input_json$`hint`)) {
        if (!(is.character(input_json$`hint`) && length(input_json$`hint`) == 1)) {
          stop(paste("Error! Invalid data for `hint`. Must be a string:", input_json$`hint`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContactInfo: the required field `hint` is missing."))
      }
      # check the required field `hintEn`
      if (!is.null(input_json$`hintEn`)) {
        if (!(is.character(input_json$`hintEn`) && length(input_json$`hintEn`) == 1)) {
          stop(paste("Error! Invalid data for `hintEn`. Must be a string:", input_json$`hintEn`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContactInfo: the required field `hintEn` is missing."))
      }
      # check the required field `role`
      if (!is.null(input_json$`role`)) {
        if (!(is.character(input_json$`role`) && length(input_json$`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", input_json$`role`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContactInfo: the required field `role` is missing."))
      }
      # check the required field `roleEn`
      if (!is.null(input_json$`roleEn`)) {
        if (!(is.character(input_json$`roleEn`) && length(input_json$`roleEn`) == 1)) {
          stop(paste("Error! Invalid data for `roleEn`. Must be a string:", input_json$`roleEn`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContactInfo: the required field `roleEn` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ContactInfo
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `hint` is null
      if (is.null(self$`hint`)) {
        return(FALSE)
      }

      # check if the required `hintEn` is null
      if (is.null(self$`hintEn`)) {
        return(FALSE)
      }

      # check if the required `role` is null
      if (is.null(self$`role`)) {
        return(FALSE)
      }

      # check if the required `roleEn` is null
      if (is.null(self$`roleEn`)) {
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
      # check if the required `hint` is null
      if (is.null(self$`hint`)) {
        invalid_fields["hint"] <- "Non-nullable required field `hint` cannot be null."
      }

      # check if the required `hintEn` is null
      if (is.null(self$`hintEn`)) {
        invalid_fields["hintEn"] <- "Non-nullable required field `hintEn` cannot be null."
      }

      # check if the required `role` is null
      if (is.null(self$`role`)) {
        invalid_fields["role"] <- "Non-nullable required field `role` cannot be null."
      }

      # check if the required `roleEn` is null
      if (is.null(self$`roleEn`)) {
        invalid_fields["roleEn"] <- "Non-nullable required field `roleEn` cannot be null."
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
# ContactInfo$unlock()
#
## Below is an example to define the print function
# ContactInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ContactInfo$lock()

