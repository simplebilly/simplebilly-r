#' Create a new BoxFit
#'
#' @description
#' BoxFit Class
#'
#' @docType class
#' @title BoxFit
#' @description BoxFit Class
#' @format An \code{R6Class} generator object
#' @field height_cm  numeric
#' @field item_count  integer
#' @field length_cm  numeric
#' @field volume_cm3  numeric
#' @field width_cm  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BoxFit <- R6::R6Class(
  "BoxFit",
  public = list(
    `height_cm` = NULL,
    `item_count` = NULL,
    `length_cm` = NULL,
    `volume_cm3` = NULL,
    `width_cm` = NULL,

    #' @description
    #' Initialize a new BoxFit class.
    #'
    #' @param height_cm height_cm
    #' @param item_count item_count
    #' @param length_cm length_cm
    #' @param volume_cm3 volume_cm3
    #' @param width_cm width_cm
    #' @param ... Other optional arguments.
    initialize = function(`height_cm`, `item_count`, `length_cm`, `volume_cm3`, `width_cm`, ...) {
      if (!missing(`height_cm`)) {
        if (!(is.numeric(`height_cm`) && length(`height_cm`) == 1)) {
          stop(paste("Error! Invalid data for `height_cm`. Must be a number:", `height_cm`))
        }
        self$`height_cm` <- `height_cm`
      }
      if (!missing(`item_count`)) {
        if (!(is.numeric(`item_count`) && length(`item_count`) == 1)) {
          stop(paste("Error! Invalid data for `item_count`. Must be an integer:", `item_count`))
        }
        self$`item_count` <- `item_count`
      }
      if (!missing(`length_cm`)) {
        if (!(is.numeric(`length_cm`) && length(`length_cm`) == 1)) {
          stop(paste("Error! Invalid data for `length_cm`. Must be a number:", `length_cm`))
        }
        self$`length_cm` <- `length_cm`
      }
      if (!missing(`volume_cm3`)) {
        if (!(is.numeric(`volume_cm3`) && length(`volume_cm3`) == 1)) {
          stop(paste("Error! Invalid data for `volume_cm3`. Must be a number:", `volume_cm3`))
        }
        self$`volume_cm3` <- `volume_cm3`
      }
      if (!missing(`width_cm`)) {
        if (!(is.numeric(`width_cm`) && length(`width_cm`) == 1)) {
          stop(paste("Error! Invalid data for `width_cm`. Must be a number:", `width_cm`))
        }
        self$`width_cm` <- `width_cm`
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
    #' @return BoxFit as a base R list.
    #' @examples
    #' # convert array of BoxFit (x) to a data frame
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
    #' Convert BoxFit to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BoxFitObject <- list()
      if (!is.null(self$`height_cm`)) {
        BoxFitObject[["height_cm"]] <-
          self$`height_cm`
      }
      if (!is.null(self$`item_count`)) {
        BoxFitObject[["item_count"]] <-
          self$`item_count`
      }
      if (!is.null(self$`length_cm`)) {
        BoxFitObject[["length_cm"]] <-
          self$`length_cm`
      }
      if (!is.null(self$`volume_cm3`)) {
        BoxFitObject[["volume_cm3"]] <-
          self$`volume_cm3`
      }
      if (!is.null(self$`width_cm`)) {
        BoxFitObject[["width_cm"]] <-
          self$`width_cm`
      }
      return(BoxFitObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BoxFit
    #'
    #' @param input_json the JSON input
    #' @return the instance of BoxFit
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`height_cm`)) {
        self$`height_cm` <- this_object$`height_cm`
      }
      if (!is.null(this_object$`item_count`)) {
        self$`item_count` <- this_object$`item_count`
      }
      if (!is.null(this_object$`length_cm`)) {
        self$`length_cm` <- this_object$`length_cm`
      }
      if (!is.null(this_object$`volume_cm3`)) {
        self$`volume_cm3` <- this_object$`volume_cm3`
      }
      if (!is.null(this_object$`width_cm`)) {
        self$`width_cm` <- this_object$`width_cm`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BoxFit in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BoxFit
    #'
    #' @param input_json the JSON input
    #' @return the instance of BoxFit
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`height_cm` <- this_object$`height_cm`
      self$`item_count` <- this_object$`item_count`
      self$`length_cm` <- this_object$`length_cm`
      self$`volume_cm3` <- this_object$`volume_cm3`
      self$`width_cm` <- this_object$`width_cm`
      self
    },

    #' @description
    #' Validate JSON input with respect to BoxFit and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `height_cm`
      if (!is.null(input_json$`height_cm`)) {
        if (!(is.numeric(input_json$`height_cm`) && length(input_json$`height_cm`) == 1)) {
          stop(paste("Error! Invalid data for `height_cm`. Must be a number:", input_json$`height_cm`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BoxFit: the required field `height_cm` is missing."))
      }
      # check the required field `item_count`
      if (!is.null(input_json$`item_count`)) {
        if (!(is.numeric(input_json$`item_count`) && length(input_json$`item_count`) == 1)) {
          stop(paste("Error! Invalid data for `item_count`. Must be an integer:", input_json$`item_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BoxFit: the required field `item_count` is missing."))
      }
      # check the required field `length_cm`
      if (!is.null(input_json$`length_cm`)) {
        if (!(is.numeric(input_json$`length_cm`) && length(input_json$`length_cm`) == 1)) {
          stop(paste("Error! Invalid data for `length_cm`. Must be a number:", input_json$`length_cm`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BoxFit: the required field `length_cm` is missing."))
      }
      # check the required field `volume_cm3`
      if (!is.null(input_json$`volume_cm3`)) {
        if (!(is.numeric(input_json$`volume_cm3`) && length(input_json$`volume_cm3`) == 1)) {
          stop(paste("Error! Invalid data for `volume_cm3`. Must be a number:", input_json$`volume_cm3`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BoxFit: the required field `volume_cm3` is missing."))
      }
      # check the required field `width_cm`
      if (!is.null(input_json$`width_cm`)) {
        if (!(is.numeric(input_json$`width_cm`) && length(input_json$`width_cm`) == 1)) {
          stop(paste("Error! Invalid data for `width_cm`. Must be a number:", input_json$`width_cm`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BoxFit: the required field `width_cm` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BoxFit
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `height_cm` is null
      if (is.null(self$`height_cm`)) {
        return(FALSE)
      }

      # check if the required `item_count` is null
      if (is.null(self$`item_count`)) {
        return(FALSE)
      }

      if (self$`item_count` < 0) {
        return(FALSE)
      }

      # check if the required `length_cm` is null
      if (is.null(self$`length_cm`)) {
        return(FALSE)
      }

      # check if the required `volume_cm3` is null
      if (is.null(self$`volume_cm3`)) {
        return(FALSE)
      }

      # check if the required `width_cm` is null
      if (is.null(self$`width_cm`)) {
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
      # check if the required `height_cm` is null
      if (is.null(self$`height_cm`)) {
        invalid_fields["height_cm"] <- "Non-nullable required field `height_cm` cannot be null."
      }

      # check if the required `item_count` is null
      if (is.null(self$`item_count`)) {
        invalid_fields["item_count"] <- "Non-nullable required field `item_count` cannot be null."
      }

      if (self$`item_count` < 0) {
        invalid_fields["item_count"] <- "Invalid value for `item_count`, must be bigger than or equal to 0."
      }

      # check if the required `length_cm` is null
      if (is.null(self$`length_cm`)) {
        invalid_fields["length_cm"] <- "Non-nullable required field `length_cm` cannot be null."
      }

      # check if the required `volume_cm3` is null
      if (is.null(self$`volume_cm3`)) {
        invalid_fields["volume_cm3"] <- "Non-nullable required field `volume_cm3` cannot be null."
      }

      # check if the required `width_cm` is null
      if (is.null(self$`width_cm`)) {
        invalid_fields["width_cm"] <- "Non-nullable required field `width_cm` cannot be null."
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
# BoxFit$unlock()
#
## Below is an example to define the print function
# BoxFit$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BoxFit$lock()

