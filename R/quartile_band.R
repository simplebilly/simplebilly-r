#' Create a new QuartileBand
#'
#' @description
#' QuartileBand Class
#'
#' @docType class
#' @title QuartileBand
#' @description QuartileBand Class
#' @format An \code{R6Class} generator object
#' @field female_share_pct  numeric
#' @field hourly_median  character
#' @field male_share_pct  numeric
#' @field quartile  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QuartileBand <- R6::R6Class(
  "QuartileBand",
  public = list(
    `female_share_pct` = NULL,
    `hourly_median` = NULL,
    `male_share_pct` = NULL,
    `quartile` = NULL,

    #' @description
    #' Initialize a new QuartileBand class.
    #'
    #' @param female_share_pct female_share_pct
    #' @param hourly_median hourly_median
    #' @param male_share_pct male_share_pct
    #' @param quartile quartile
    #' @param ... Other optional arguments.
    initialize = function(`female_share_pct`, `hourly_median`, `male_share_pct`, `quartile`, ...) {
      if (!missing(`female_share_pct`)) {
        if (!(is.numeric(`female_share_pct`) && length(`female_share_pct`) == 1)) {
          stop(paste("Error! Invalid data for `female_share_pct`. Must be a number:", `female_share_pct`))
        }
        self$`female_share_pct` <- `female_share_pct`
      }
      if (!missing(`hourly_median`)) {
        if (!(is.character(`hourly_median`) && length(`hourly_median`) == 1)) {
          stop(paste("Error! Invalid data for `hourly_median`. Must be a string:", `hourly_median`))
        }
        self$`hourly_median` <- `hourly_median`
      }
      if (!missing(`male_share_pct`)) {
        if (!(is.numeric(`male_share_pct`) && length(`male_share_pct`) == 1)) {
          stop(paste("Error! Invalid data for `male_share_pct`. Must be a number:", `male_share_pct`))
        }
        self$`male_share_pct` <- `male_share_pct`
      }
      if (!missing(`quartile`)) {
        if (!(is.character(`quartile`) && length(`quartile`) == 1)) {
          stop(paste("Error! Invalid data for `quartile`. Must be a string:", `quartile`))
        }
        self$`quartile` <- `quartile`
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
    #' @return QuartileBand as a base R list.
    #' @examples
    #' # convert array of QuartileBand (x) to a data frame
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
    #' Convert QuartileBand to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QuartileBandObject <- list()
      if (!is.null(self$`female_share_pct`)) {
        QuartileBandObject[["female_share_pct"]] <-
          self$`female_share_pct`
      }
      if (!is.null(self$`hourly_median`)) {
        QuartileBandObject[["hourly_median"]] <-
          self$`hourly_median`
      }
      if (!is.null(self$`male_share_pct`)) {
        QuartileBandObject[["male_share_pct"]] <-
          self$`male_share_pct`
      }
      if (!is.null(self$`quartile`)) {
        QuartileBandObject[["quartile"]] <-
          self$`quartile`
      }
      return(QuartileBandObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QuartileBand
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuartileBand
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`female_share_pct`)) {
        self$`female_share_pct` <- this_object$`female_share_pct`
      }
      if (!is.null(this_object$`hourly_median`)) {
        self$`hourly_median` <- this_object$`hourly_median`
      }
      if (!is.null(this_object$`male_share_pct`)) {
        self$`male_share_pct` <- this_object$`male_share_pct`
      }
      if (!is.null(this_object$`quartile`)) {
        self$`quartile` <- this_object$`quartile`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QuartileBand in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QuartileBand
    #'
    #' @param input_json the JSON input
    #' @return the instance of QuartileBand
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`female_share_pct` <- this_object$`female_share_pct`
      self$`hourly_median` <- this_object$`hourly_median`
      self$`male_share_pct` <- this_object$`male_share_pct`
      self$`quartile` <- this_object$`quartile`
      self
    },

    #' @description
    #' Validate JSON input with respect to QuartileBand and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `female_share_pct`
      if (!is.null(input_json$`female_share_pct`)) {
        if (!(is.numeric(input_json$`female_share_pct`) && length(input_json$`female_share_pct`) == 1)) {
          stop(paste("Error! Invalid data for `female_share_pct`. Must be a number:", input_json$`female_share_pct`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QuartileBand: the required field `female_share_pct` is missing."))
      }
      # check the required field `hourly_median`
      if (!is.null(input_json$`hourly_median`)) {
        if (!(is.character(input_json$`hourly_median`) && length(input_json$`hourly_median`) == 1)) {
          stop(paste("Error! Invalid data for `hourly_median`. Must be a string:", input_json$`hourly_median`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QuartileBand: the required field `hourly_median` is missing."))
      }
      # check the required field `male_share_pct`
      if (!is.null(input_json$`male_share_pct`)) {
        if (!(is.numeric(input_json$`male_share_pct`) && length(input_json$`male_share_pct`) == 1)) {
          stop(paste("Error! Invalid data for `male_share_pct`. Must be a number:", input_json$`male_share_pct`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QuartileBand: the required field `male_share_pct` is missing."))
      }
      # check the required field `quartile`
      if (!is.null(input_json$`quartile`)) {
        if (!(is.character(input_json$`quartile`) && length(input_json$`quartile`) == 1)) {
          stop(paste("Error! Invalid data for `quartile`. Must be a string:", input_json$`quartile`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QuartileBand: the required field `quartile` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QuartileBand
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `female_share_pct` is null
      if (is.null(self$`female_share_pct`)) {
        return(FALSE)
      }

      # check if the required `hourly_median` is null
      if (is.null(self$`hourly_median`)) {
        return(FALSE)
      }

      # check if the required `male_share_pct` is null
      if (is.null(self$`male_share_pct`)) {
        return(FALSE)
      }

      # check if the required `quartile` is null
      if (is.null(self$`quartile`)) {
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
      # check if the required `female_share_pct` is null
      if (is.null(self$`female_share_pct`)) {
        invalid_fields["female_share_pct"] <- "Non-nullable required field `female_share_pct` cannot be null."
      }

      # check if the required `hourly_median` is null
      if (is.null(self$`hourly_median`)) {
        invalid_fields["hourly_median"] <- "Non-nullable required field `hourly_median` cannot be null."
      }

      # check if the required `male_share_pct` is null
      if (is.null(self$`male_share_pct`)) {
        invalid_fields["male_share_pct"] <- "Non-nullable required field `male_share_pct` cannot be null."
      }

      # check if the required `quartile` is null
      if (is.null(self$`quartile`)) {
        invalid_fields["quartile"] <- "Non-nullable required field `quartile` cannot be null."
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
# QuartileBand$unlock()
#
## Below is an example to define the print function
# QuartileBand$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QuartileBand$lock()

