#' Create a new FristEintrag
#'
#' @description
#' FristEintrag Class
#'
#' @docType class
#' @title FristEintrag
#' @description FristEintrag Class
#' @format An \code{R6Class} generator object
#' @field bezeichnung  character
#' @field faellig  character
#' @field faellig_original  character
#' @field hinweis  character [optional]
#' @field typ  character
#' @field zeitraum  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FristEintrag <- R6::R6Class(
  "FristEintrag",
  public = list(
    `bezeichnung` = NULL,
    `faellig` = NULL,
    `faellig_original` = NULL,
    `hinweis` = NULL,
    `typ` = NULL,
    `zeitraum` = NULL,

    #' @description
    #' Initialize a new FristEintrag class.
    #'
    #' @param bezeichnung bezeichnung
    #' @param faellig faellig
    #' @param faellig_original faellig_original
    #' @param typ typ
    #' @param zeitraum zeitraum
    #' @param hinweis hinweis
    #' @param ... Other optional arguments.
    initialize = function(`bezeichnung`, `faellig`, `faellig_original`, `typ`, `zeitraum`, `hinweis` = NULL, ...) {
      if (!missing(`bezeichnung`)) {
        if (!(is.character(`bezeichnung`) && length(`bezeichnung`) == 1)) {
          stop(paste("Error! Invalid data for `bezeichnung`. Must be a string:", `bezeichnung`))
        }
        self$`bezeichnung` <- `bezeichnung`
      }
      if (!missing(`faellig`)) {
        if (!(is.character(`faellig`) && length(`faellig`) == 1)) {
          stop(paste("Error! Invalid data for `faellig`. Must be a string:", `faellig`))
        }
        self$`faellig` <- `faellig`
      }
      if (!missing(`faellig_original`)) {
        if (!(is.character(`faellig_original`) && length(`faellig_original`) == 1)) {
          stop(paste("Error! Invalid data for `faellig_original`. Must be a string:", `faellig_original`))
        }
        self$`faellig_original` <- `faellig_original`
      }
      if (!missing(`typ`)) {
        if (!(is.character(`typ`) && length(`typ`) == 1)) {
          stop(paste("Error! Invalid data for `typ`. Must be a string:", `typ`))
        }
        self$`typ` <- `typ`
      }
      if (!missing(`zeitraum`)) {
        if (!(is.character(`zeitraum`) && length(`zeitraum`) == 1)) {
          stop(paste("Error! Invalid data for `zeitraum`. Must be a string:", `zeitraum`))
        }
        self$`zeitraum` <- `zeitraum`
      }
      if (!is.null(`hinweis`)) {
        if (!(is.character(`hinweis`) && length(`hinweis`) == 1)) {
          stop(paste("Error! Invalid data for `hinweis`. Must be a string:", `hinweis`))
        }
        self$`hinweis` <- `hinweis`
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
    #' @return FristEintrag as a base R list.
    #' @examples
    #' # convert array of FristEintrag (x) to a data frame
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
    #' Convert FristEintrag to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FristEintragObject <- list()
      if (!is.null(self$`bezeichnung`)) {
        FristEintragObject[["bezeichnung"]] <-
          self$`bezeichnung`
      }
      if (!is.null(self$`faellig`)) {
        FristEintragObject[["faellig"]] <-
          self$`faellig`
      }
      if (!is.null(self$`faellig_original`)) {
        FristEintragObject[["faellig_original"]] <-
          self$`faellig_original`
      }
      if (!is.null(self$`hinweis`)) {
        FristEintragObject[["hinweis"]] <-
          self$`hinweis`
      }
      if (!is.null(self$`typ`)) {
        FristEintragObject[["typ"]] <-
          self$`typ`
      }
      if (!is.null(self$`zeitraum`)) {
        FristEintragObject[["zeitraum"]] <-
          self$`zeitraum`
      }
      return(FristEintragObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FristEintrag
    #'
    #' @param input_json the JSON input
    #' @return the instance of FristEintrag
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bezeichnung`)) {
        self$`bezeichnung` <- this_object$`bezeichnung`
      }
      if (!is.null(this_object$`faellig`)) {
        self$`faellig` <- this_object$`faellig`
      }
      if (!is.null(this_object$`faellig_original`)) {
        self$`faellig_original` <- this_object$`faellig_original`
      }
      if (!is.null(this_object$`hinweis`)) {
        self$`hinweis` <- this_object$`hinweis`
      }
      if (!is.null(this_object$`typ`)) {
        self$`typ` <- this_object$`typ`
      }
      if (!is.null(this_object$`zeitraum`)) {
        self$`zeitraum` <- this_object$`zeitraum`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FristEintrag in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FristEintrag
    #'
    #' @param input_json the JSON input
    #' @return the instance of FristEintrag
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bezeichnung` <- this_object$`bezeichnung`
      self$`faellig` <- this_object$`faellig`
      self$`faellig_original` <- this_object$`faellig_original`
      self$`hinweis` <- this_object$`hinweis`
      self$`typ` <- this_object$`typ`
      self$`zeitraum` <- this_object$`zeitraum`
      self
    },

    #' @description
    #' Validate JSON input with respect to FristEintrag and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `bezeichnung`
      if (!is.null(input_json$`bezeichnung`)) {
        if (!(is.character(input_json$`bezeichnung`) && length(input_json$`bezeichnung`) == 1)) {
          stop(paste("Error! Invalid data for `bezeichnung`. Must be a string:", input_json$`bezeichnung`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FristEintrag: the required field `bezeichnung` is missing."))
      }
      # check the required field `faellig`
      if (!is.null(input_json$`faellig`)) {
        if (!(is.character(input_json$`faellig`) && length(input_json$`faellig`) == 1)) {
          stop(paste("Error! Invalid data for `faellig`. Must be a string:", input_json$`faellig`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FristEintrag: the required field `faellig` is missing."))
      }
      # check the required field `faellig_original`
      if (!is.null(input_json$`faellig_original`)) {
        if (!(is.character(input_json$`faellig_original`) && length(input_json$`faellig_original`) == 1)) {
          stop(paste("Error! Invalid data for `faellig_original`. Must be a string:", input_json$`faellig_original`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FristEintrag: the required field `faellig_original` is missing."))
      }
      # check the required field `typ`
      if (!is.null(input_json$`typ`)) {
        if (!(is.character(input_json$`typ`) && length(input_json$`typ`) == 1)) {
          stop(paste("Error! Invalid data for `typ`. Must be a string:", input_json$`typ`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FristEintrag: the required field `typ` is missing."))
      }
      # check the required field `zeitraum`
      if (!is.null(input_json$`zeitraum`)) {
        if (!(is.character(input_json$`zeitraum`) && length(input_json$`zeitraum`) == 1)) {
          stop(paste("Error! Invalid data for `zeitraum`. Must be a string:", input_json$`zeitraum`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FristEintrag: the required field `zeitraum` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FristEintrag
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `bezeichnung` is null
      if (is.null(self$`bezeichnung`)) {
        return(FALSE)
      }

      # check if the required `faellig` is null
      if (is.null(self$`faellig`)) {
        return(FALSE)
      }

      # check if the required `faellig_original` is null
      if (is.null(self$`faellig_original`)) {
        return(FALSE)
      }

      # check if the required `typ` is null
      if (is.null(self$`typ`)) {
        return(FALSE)
      }

      # check if the required `zeitraum` is null
      if (is.null(self$`zeitraum`)) {
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
      # check if the required `bezeichnung` is null
      if (is.null(self$`bezeichnung`)) {
        invalid_fields["bezeichnung"] <- "Non-nullable required field `bezeichnung` cannot be null."
      }

      # check if the required `faellig` is null
      if (is.null(self$`faellig`)) {
        invalid_fields["faellig"] <- "Non-nullable required field `faellig` cannot be null."
      }

      # check if the required `faellig_original` is null
      if (is.null(self$`faellig_original`)) {
        invalid_fields["faellig_original"] <- "Non-nullable required field `faellig_original` cannot be null."
      }

      # check if the required `typ` is null
      if (is.null(self$`typ`)) {
        invalid_fields["typ"] <- "Non-nullable required field `typ` cannot be null."
      }

      # check if the required `zeitraum` is null
      if (is.null(self$`zeitraum`)) {
        invalid_fields["zeitraum"] <- "Non-nullable required field `zeitraum` cannot be null."
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
# FristEintrag$unlock()
#
## Below is an example to define the print function
# FristEintrag$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FristEintrag$lock()

