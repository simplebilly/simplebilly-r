#' Create a new StillePartnerZeile
#'
#' @description
#' StillePartnerZeile Class
#'
#' @docType class
#' @title StillePartnerZeile
#' @description StillePartnerZeile Class
#' @format An \code{R6Class} generator object
#' @field auseinandersetzungsguthaben  character
#' @field gewinnanteil  character
#' @field gewinnvortrag  character
#' @field hinweis  character [optional]
#' @field instrument_type  character
#' @field kest  character
#' @field name  character
#' @field verlust_verrechnungskonto  character
#' @field verlustanteil  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StillePartnerZeile <- R6::R6Class(
  "StillePartnerZeile",
  public = list(
    `auseinandersetzungsguthaben` = NULL,
    `gewinnanteil` = NULL,
    `gewinnvortrag` = NULL,
    `hinweis` = NULL,
    `instrument_type` = NULL,
    `kest` = NULL,
    `name` = NULL,
    `verlust_verrechnungskonto` = NULL,
    `verlustanteil` = NULL,

    #' @description
    #' Initialize a new StillePartnerZeile class.
    #'
    #' @param auseinandersetzungsguthaben auseinandersetzungsguthaben
    #' @param gewinnanteil gewinnanteil
    #' @param gewinnvortrag gewinnvortrag
    #' @param instrument_type instrument_type
    #' @param kest kest
    #' @param name name
    #' @param verlust_verrechnungskonto verlust_verrechnungskonto
    #' @param verlustanteil verlustanteil
    #' @param hinweis hinweis
    #' @param ... Other optional arguments.
    initialize = function(`auseinandersetzungsguthaben`, `gewinnanteil`, `gewinnvortrag`, `instrument_type`, `kest`, `name`, `verlust_verrechnungskonto`, `verlustanteil`, `hinweis` = NULL, ...) {
      if (!missing(`auseinandersetzungsguthaben`)) {
        if (!(is.character(`auseinandersetzungsguthaben`) && length(`auseinandersetzungsguthaben`) == 1)) {
          stop(paste("Error! Invalid data for `auseinandersetzungsguthaben`. Must be a string:", `auseinandersetzungsguthaben`))
        }
        self$`auseinandersetzungsguthaben` <- `auseinandersetzungsguthaben`
      }
      if (!missing(`gewinnanteil`)) {
        if (!(is.character(`gewinnanteil`) && length(`gewinnanteil`) == 1)) {
          stop(paste("Error! Invalid data for `gewinnanteil`. Must be a string:", `gewinnanteil`))
        }
        self$`gewinnanteil` <- `gewinnanteil`
      }
      if (!missing(`gewinnvortrag`)) {
        if (!(is.character(`gewinnvortrag`) && length(`gewinnvortrag`) == 1)) {
          stop(paste("Error! Invalid data for `gewinnvortrag`. Must be a string:", `gewinnvortrag`))
        }
        self$`gewinnvortrag` <- `gewinnvortrag`
      }
      if (!missing(`instrument_type`)) {
        if (!(is.character(`instrument_type`) && length(`instrument_type`) == 1)) {
          stop(paste("Error! Invalid data for `instrument_type`. Must be a string:", `instrument_type`))
        }
        self$`instrument_type` <- `instrument_type`
      }
      if (!missing(`kest`)) {
        if (!(is.character(`kest`) && length(`kest`) == 1)) {
          stop(paste("Error! Invalid data for `kest`. Must be a string:", `kest`))
        }
        self$`kest` <- `kest`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`verlust_verrechnungskonto`)) {
        if (!(is.character(`verlust_verrechnungskonto`) && length(`verlust_verrechnungskonto`) == 1)) {
          stop(paste("Error! Invalid data for `verlust_verrechnungskonto`. Must be a string:", `verlust_verrechnungskonto`))
        }
        self$`verlust_verrechnungskonto` <- `verlust_verrechnungskonto`
      }
      if (!missing(`verlustanteil`)) {
        if (!(is.character(`verlustanteil`) && length(`verlustanteil`) == 1)) {
          stop(paste("Error! Invalid data for `verlustanteil`. Must be a string:", `verlustanteil`))
        }
        self$`verlustanteil` <- `verlustanteil`
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
    #' @return StillePartnerZeile as a base R list.
    #' @examples
    #' # convert array of StillePartnerZeile (x) to a data frame
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
    #' Convert StillePartnerZeile to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StillePartnerZeileObject <- list()
      if (!is.null(self$`auseinandersetzungsguthaben`)) {
        StillePartnerZeileObject[["auseinandersetzungsguthaben"]] <-
          self$`auseinandersetzungsguthaben`
      }
      if (!is.null(self$`gewinnanteil`)) {
        StillePartnerZeileObject[["gewinnanteil"]] <-
          self$`gewinnanteil`
      }
      if (!is.null(self$`gewinnvortrag`)) {
        StillePartnerZeileObject[["gewinnvortrag"]] <-
          self$`gewinnvortrag`
      }
      if (!is.null(self$`hinweis`)) {
        StillePartnerZeileObject[["hinweis"]] <-
          self$`hinweis`
      }
      if (!is.null(self$`instrument_type`)) {
        StillePartnerZeileObject[["instrument_type"]] <-
          self$`instrument_type`
      }
      if (!is.null(self$`kest`)) {
        StillePartnerZeileObject[["kest"]] <-
          self$`kest`
      }
      if (!is.null(self$`name`)) {
        StillePartnerZeileObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`verlust_verrechnungskonto`)) {
        StillePartnerZeileObject[["verlust_verrechnungskonto"]] <-
          self$`verlust_verrechnungskonto`
      }
      if (!is.null(self$`verlustanteil`)) {
        StillePartnerZeileObject[["verlustanteil"]] <-
          self$`verlustanteil`
      }
      return(StillePartnerZeileObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of StillePartnerZeile
    #'
    #' @param input_json the JSON input
    #' @return the instance of StillePartnerZeile
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`auseinandersetzungsguthaben`)) {
        self$`auseinandersetzungsguthaben` <- this_object$`auseinandersetzungsguthaben`
      }
      if (!is.null(this_object$`gewinnanteil`)) {
        self$`gewinnanteil` <- this_object$`gewinnanteil`
      }
      if (!is.null(this_object$`gewinnvortrag`)) {
        self$`gewinnvortrag` <- this_object$`gewinnvortrag`
      }
      if (!is.null(this_object$`hinweis`)) {
        self$`hinweis` <- this_object$`hinweis`
      }
      if (!is.null(this_object$`instrument_type`)) {
        self$`instrument_type` <- this_object$`instrument_type`
      }
      if (!is.null(this_object$`kest`)) {
        self$`kest` <- this_object$`kest`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`verlust_verrechnungskonto`)) {
        self$`verlust_verrechnungskonto` <- this_object$`verlust_verrechnungskonto`
      }
      if (!is.null(this_object$`verlustanteil`)) {
        self$`verlustanteil` <- this_object$`verlustanteil`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StillePartnerZeile in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StillePartnerZeile
    #'
    #' @param input_json the JSON input
    #' @return the instance of StillePartnerZeile
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`auseinandersetzungsguthaben` <- this_object$`auseinandersetzungsguthaben`
      self$`gewinnanteil` <- this_object$`gewinnanteil`
      self$`gewinnvortrag` <- this_object$`gewinnvortrag`
      self$`hinweis` <- this_object$`hinweis`
      self$`instrument_type` <- this_object$`instrument_type`
      self$`kest` <- this_object$`kest`
      self$`name` <- this_object$`name`
      self$`verlust_verrechnungskonto` <- this_object$`verlust_verrechnungskonto`
      self$`verlustanteil` <- this_object$`verlustanteil`
      self
    },

    #' @description
    #' Validate JSON input with respect to StillePartnerZeile and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `auseinandersetzungsguthaben`
      if (!is.null(input_json$`auseinandersetzungsguthaben`)) {
        if (!(is.character(input_json$`auseinandersetzungsguthaben`) && length(input_json$`auseinandersetzungsguthaben`) == 1)) {
          stop(paste("Error! Invalid data for `auseinandersetzungsguthaben`. Must be a string:", input_json$`auseinandersetzungsguthaben`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StillePartnerZeile: the required field `auseinandersetzungsguthaben` is missing."))
      }
      # check the required field `gewinnanteil`
      if (!is.null(input_json$`gewinnanteil`)) {
        if (!(is.character(input_json$`gewinnanteil`) && length(input_json$`gewinnanteil`) == 1)) {
          stop(paste("Error! Invalid data for `gewinnanteil`. Must be a string:", input_json$`gewinnanteil`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StillePartnerZeile: the required field `gewinnanteil` is missing."))
      }
      # check the required field `gewinnvortrag`
      if (!is.null(input_json$`gewinnvortrag`)) {
        if (!(is.character(input_json$`gewinnvortrag`) && length(input_json$`gewinnvortrag`) == 1)) {
          stop(paste("Error! Invalid data for `gewinnvortrag`. Must be a string:", input_json$`gewinnvortrag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StillePartnerZeile: the required field `gewinnvortrag` is missing."))
      }
      # check the required field `instrument_type`
      if (!is.null(input_json$`instrument_type`)) {
        if (!(is.character(input_json$`instrument_type`) && length(input_json$`instrument_type`) == 1)) {
          stop(paste("Error! Invalid data for `instrument_type`. Must be a string:", input_json$`instrument_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StillePartnerZeile: the required field `instrument_type` is missing."))
      }
      # check the required field `kest`
      if (!is.null(input_json$`kest`)) {
        if (!(is.character(input_json$`kest`) && length(input_json$`kest`) == 1)) {
          stop(paste("Error! Invalid data for `kest`. Must be a string:", input_json$`kest`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StillePartnerZeile: the required field `kest` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StillePartnerZeile: the required field `name` is missing."))
      }
      # check the required field `verlust_verrechnungskonto`
      if (!is.null(input_json$`verlust_verrechnungskonto`)) {
        if (!(is.character(input_json$`verlust_verrechnungskonto`) && length(input_json$`verlust_verrechnungskonto`) == 1)) {
          stop(paste("Error! Invalid data for `verlust_verrechnungskonto`. Must be a string:", input_json$`verlust_verrechnungskonto`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StillePartnerZeile: the required field `verlust_verrechnungskonto` is missing."))
      }
      # check the required field `verlustanteil`
      if (!is.null(input_json$`verlustanteil`)) {
        if (!(is.character(input_json$`verlustanteil`) && length(input_json$`verlustanteil`) == 1)) {
          stop(paste("Error! Invalid data for `verlustanteil`. Must be a string:", input_json$`verlustanteil`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StillePartnerZeile: the required field `verlustanteil` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StillePartnerZeile
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `auseinandersetzungsguthaben` is null
      if (is.null(self$`auseinandersetzungsguthaben`)) {
        return(FALSE)
      }

      # check if the required `gewinnanteil` is null
      if (is.null(self$`gewinnanteil`)) {
        return(FALSE)
      }

      # check if the required `gewinnvortrag` is null
      if (is.null(self$`gewinnvortrag`)) {
        return(FALSE)
      }

      # check if the required `instrument_type` is null
      if (is.null(self$`instrument_type`)) {
        return(FALSE)
      }

      # check if the required `kest` is null
      if (is.null(self$`kest`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `verlust_verrechnungskonto` is null
      if (is.null(self$`verlust_verrechnungskonto`)) {
        return(FALSE)
      }

      # check if the required `verlustanteil` is null
      if (is.null(self$`verlustanteil`)) {
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
      # check if the required `auseinandersetzungsguthaben` is null
      if (is.null(self$`auseinandersetzungsguthaben`)) {
        invalid_fields["auseinandersetzungsguthaben"] <- "Non-nullable required field `auseinandersetzungsguthaben` cannot be null."
      }

      # check if the required `gewinnanteil` is null
      if (is.null(self$`gewinnanteil`)) {
        invalid_fields["gewinnanteil"] <- "Non-nullable required field `gewinnanteil` cannot be null."
      }

      # check if the required `gewinnvortrag` is null
      if (is.null(self$`gewinnvortrag`)) {
        invalid_fields["gewinnvortrag"] <- "Non-nullable required field `gewinnvortrag` cannot be null."
      }

      # check if the required `instrument_type` is null
      if (is.null(self$`instrument_type`)) {
        invalid_fields["instrument_type"] <- "Non-nullable required field `instrument_type` cannot be null."
      }

      # check if the required `kest` is null
      if (is.null(self$`kest`)) {
        invalid_fields["kest"] <- "Non-nullable required field `kest` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `verlust_verrechnungskonto` is null
      if (is.null(self$`verlust_verrechnungskonto`)) {
        invalid_fields["verlust_verrechnungskonto"] <- "Non-nullable required field `verlust_verrechnungskonto` cannot be null."
      }

      # check if the required `verlustanteil` is null
      if (is.null(self$`verlustanteil`)) {
        invalid_fields["verlustanteil"] <- "Non-nullable required field `verlustanteil` cannot be null."
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
# StillePartnerZeile$unlock()
#
## Below is an example to define the print function
# StillePartnerZeile$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StillePartnerZeile$lock()

