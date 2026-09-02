#' Create a new HebesatzLookup
#'
#' @description
#' HebesatzLookup Class
#'
#' @docType class
#' @title HebesatzLookup
#' @description HebesatzLookup Class
#' @format An \code{R6Class} generator object
#' @field bundesland  character
#' @field country_code  character
#' @field gemeinde_name  character
#' @field gemeindeschluessel  character
#' @field hebesatz_gewerbesteuer  numeric
#' @field hebesatz_grundsteuer_b  numeric [optional]
#' @field jahr  integer
#' @field landkreis  character [optional]
#' @field valid_from  character
#' @field valid_to  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
HebesatzLookup <- R6::R6Class(
  "HebesatzLookup",
  public = list(
    `bundesland` = NULL,
    `country_code` = NULL,
    `gemeinde_name` = NULL,
    `gemeindeschluessel` = NULL,
    `hebesatz_gewerbesteuer` = NULL,
    `hebesatz_grundsteuer_b` = NULL,
    `jahr` = NULL,
    `landkreis` = NULL,
    `valid_from` = NULL,
    `valid_to` = NULL,

    #' @description
    #' Initialize a new HebesatzLookup class.
    #'
    #' @param bundesland bundesland
    #' @param country_code country_code
    #' @param gemeinde_name gemeinde_name
    #' @param gemeindeschluessel gemeindeschluessel
    #' @param hebesatz_gewerbesteuer hebesatz_gewerbesteuer
    #' @param jahr jahr
    #' @param valid_from valid_from
    #' @param hebesatz_grundsteuer_b hebesatz_grundsteuer_b
    #' @param landkreis landkreis
    #' @param valid_to valid_to
    #' @param ... Other optional arguments.
    initialize = function(`bundesland`, `country_code`, `gemeinde_name`, `gemeindeschluessel`, `hebesatz_gewerbesteuer`, `jahr`, `valid_from`, `hebesatz_grundsteuer_b` = NULL, `landkreis` = NULL, `valid_to` = NULL, ...) {
      if (!missing(`bundesland`)) {
        if (!(is.character(`bundesland`) && length(`bundesland`) == 1)) {
          stop(paste("Error! Invalid data for `bundesland`. Must be a string:", `bundesland`))
        }
        self$`bundesland` <- `bundesland`
      }
      if (!missing(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!missing(`gemeinde_name`)) {
        if (!(is.character(`gemeinde_name`) && length(`gemeinde_name`) == 1)) {
          stop(paste("Error! Invalid data for `gemeinde_name`. Must be a string:", `gemeinde_name`))
        }
        self$`gemeinde_name` <- `gemeinde_name`
      }
      if (!missing(`gemeindeschluessel`)) {
        if (!(is.character(`gemeindeschluessel`) && length(`gemeindeschluessel`) == 1)) {
          stop(paste("Error! Invalid data for `gemeindeschluessel`. Must be a string:", `gemeindeschluessel`))
        }
        self$`gemeindeschluessel` <- `gemeindeschluessel`
      }
      if (!missing(`hebesatz_gewerbesteuer`)) {
        if (!(is.numeric(`hebesatz_gewerbesteuer`) && length(`hebesatz_gewerbesteuer`) == 1)) {
          stop(paste("Error! Invalid data for `hebesatz_gewerbesteuer`. Must be a number:", `hebesatz_gewerbesteuer`))
        }
        self$`hebesatz_gewerbesteuer` <- `hebesatz_gewerbesteuer`
      }
      if (!missing(`jahr`)) {
        if (!(is.numeric(`jahr`) && length(`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", `jahr`))
        }
        self$`jahr` <- `jahr`
      }
      if (!missing(`valid_from`)) {
        if (!(is.character(`valid_from`) && length(`valid_from`) == 1)) {
          stop(paste("Error! Invalid data for `valid_from`. Must be a string:", `valid_from`))
        }
        self$`valid_from` <- `valid_from`
      }
      if (!is.null(`hebesatz_grundsteuer_b`)) {
        if (!(is.numeric(`hebesatz_grundsteuer_b`) && length(`hebesatz_grundsteuer_b`) == 1)) {
          stop(paste("Error! Invalid data for `hebesatz_grundsteuer_b`. Must be a number:", `hebesatz_grundsteuer_b`))
        }
        self$`hebesatz_grundsteuer_b` <- `hebesatz_grundsteuer_b`
      }
      if (!is.null(`landkreis`)) {
        if (!(is.character(`landkreis`) && length(`landkreis`) == 1)) {
          stop(paste("Error! Invalid data for `landkreis`. Must be a string:", `landkreis`))
        }
        self$`landkreis` <- `landkreis`
      }
      if (!is.null(`valid_to`)) {
        if (!(is.character(`valid_to`) && length(`valid_to`) == 1)) {
          stop(paste("Error! Invalid data for `valid_to`. Must be a string:", `valid_to`))
        }
        self$`valid_to` <- `valid_to`
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
    #' @return HebesatzLookup as a base R list.
    #' @examples
    #' # convert array of HebesatzLookup (x) to a data frame
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
    #' Convert HebesatzLookup to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      HebesatzLookupObject <- list()
      if (!is.null(self$`bundesland`)) {
        HebesatzLookupObject[["bundesland"]] <-
          self$`bundesland`
      }
      if (!is.null(self$`country_code`)) {
        HebesatzLookupObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`gemeinde_name`)) {
        HebesatzLookupObject[["gemeinde_name"]] <-
          self$`gemeinde_name`
      }
      if (!is.null(self$`gemeindeschluessel`)) {
        HebesatzLookupObject[["gemeindeschluessel"]] <-
          self$`gemeindeschluessel`
      }
      if (!is.null(self$`hebesatz_gewerbesteuer`)) {
        HebesatzLookupObject[["hebesatz_gewerbesteuer"]] <-
          self$`hebesatz_gewerbesteuer`
      }
      if (!is.null(self$`hebesatz_grundsteuer_b`)) {
        HebesatzLookupObject[["hebesatz_grundsteuer_b"]] <-
          self$`hebesatz_grundsteuer_b`
      }
      if (!is.null(self$`jahr`)) {
        HebesatzLookupObject[["jahr"]] <-
          self$`jahr`
      }
      if (!is.null(self$`landkreis`)) {
        HebesatzLookupObject[["landkreis"]] <-
          self$`landkreis`
      }
      if (!is.null(self$`valid_from`)) {
        HebesatzLookupObject[["valid_from"]] <-
          self$`valid_from`
      }
      if (!is.null(self$`valid_to`)) {
        HebesatzLookupObject[["valid_to"]] <-
          self$`valid_to`
      }
      return(HebesatzLookupObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of HebesatzLookup
    #'
    #' @param input_json the JSON input
    #' @return the instance of HebesatzLookup
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bundesland`)) {
        self$`bundesland` <- this_object$`bundesland`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`gemeinde_name`)) {
        self$`gemeinde_name` <- this_object$`gemeinde_name`
      }
      if (!is.null(this_object$`gemeindeschluessel`)) {
        self$`gemeindeschluessel` <- this_object$`gemeindeschluessel`
      }
      if (!is.null(this_object$`hebesatz_gewerbesteuer`)) {
        self$`hebesatz_gewerbesteuer` <- this_object$`hebesatz_gewerbesteuer`
      }
      if (!is.null(this_object$`hebesatz_grundsteuer_b`)) {
        self$`hebesatz_grundsteuer_b` <- this_object$`hebesatz_grundsteuer_b`
      }
      if (!is.null(this_object$`jahr`)) {
        self$`jahr` <- this_object$`jahr`
      }
      if (!is.null(this_object$`landkreis`)) {
        self$`landkreis` <- this_object$`landkreis`
      }
      if (!is.null(this_object$`valid_from`)) {
        self$`valid_from` <- this_object$`valid_from`
      }
      if (!is.null(this_object$`valid_to`)) {
        self$`valid_to` <- this_object$`valid_to`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return HebesatzLookup in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of HebesatzLookup
    #'
    #' @param input_json the JSON input
    #' @return the instance of HebesatzLookup
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bundesland` <- this_object$`bundesland`
      self$`country_code` <- this_object$`country_code`
      self$`gemeinde_name` <- this_object$`gemeinde_name`
      self$`gemeindeschluessel` <- this_object$`gemeindeschluessel`
      self$`hebesatz_gewerbesteuer` <- this_object$`hebesatz_gewerbesteuer`
      self$`hebesatz_grundsteuer_b` <- this_object$`hebesatz_grundsteuer_b`
      self$`jahr` <- this_object$`jahr`
      self$`landkreis` <- this_object$`landkreis`
      self$`valid_from` <- this_object$`valid_from`
      self$`valid_to` <- this_object$`valid_to`
      self
    },

    #' @description
    #' Validate JSON input with respect to HebesatzLookup and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `bundesland`
      if (!is.null(input_json$`bundesland`)) {
        if (!(is.character(input_json$`bundesland`) && length(input_json$`bundesland`) == 1)) {
          stop(paste("Error! Invalid data for `bundesland`. Must be a string:", input_json$`bundesland`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HebesatzLookup: the required field `bundesland` is missing."))
      }
      # check the required field `country_code`
      if (!is.null(input_json$`country_code`)) {
        if (!(is.character(input_json$`country_code`) && length(input_json$`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", input_json$`country_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HebesatzLookup: the required field `country_code` is missing."))
      }
      # check the required field `gemeinde_name`
      if (!is.null(input_json$`gemeinde_name`)) {
        if (!(is.character(input_json$`gemeinde_name`) && length(input_json$`gemeinde_name`) == 1)) {
          stop(paste("Error! Invalid data for `gemeinde_name`. Must be a string:", input_json$`gemeinde_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HebesatzLookup: the required field `gemeinde_name` is missing."))
      }
      # check the required field `gemeindeschluessel`
      if (!is.null(input_json$`gemeindeschluessel`)) {
        if (!(is.character(input_json$`gemeindeschluessel`) && length(input_json$`gemeindeschluessel`) == 1)) {
          stop(paste("Error! Invalid data for `gemeindeschluessel`. Must be a string:", input_json$`gemeindeschluessel`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HebesatzLookup: the required field `gemeindeschluessel` is missing."))
      }
      # check the required field `hebesatz_gewerbesteuer`
      if (!is.null(input_json$`hebesatz_gewerbesteuer`)) {
        if (!(is.numeric(input_json$`hebesatz_gewerbesteuer`) && length(input_json$`hebesatz_gewerbesteuer`) == 1)) {
          stop(paste("Error! Invalid data for `hebesatz_gewerbesteuer`. Must be a number:", input_json$`hebesatz_gewerbesteuer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HebesatzLookup: the required field `hebesatz_gewerbesteuer` is missing."))
      }
      # check the required field `jahr`
      if (!is.null(input_json$`jahr`)) {
        if (!(is.numeric(input_json$`jahr`) && length(input_json$`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", input_json$`jahr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HebesatzLookup: the required field `jahr` is missing."))
      }
      # check the required field `valid_from`
      if (!is.null(input_json$`valid_from`)) {
        if (!(is.character(input_json$`valid_from`) && length(input_json$`valid_from`) == 1)) {
          stop(paste("Error! Invalid data for `valid_from`. Must be a string:", input_json$`valid_from`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HebesatzLookup: the required field `valid_from` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of HebesatzLookup
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `bundesland` is null
      if (is.null(self$`bundesland`)) {
        return(FALSE)
      }

      # check if the required `country_code` is null
      if (is.null(self$`country_code`)) {
        return(FALSE)
      }

      # check if the required `gemeinde_name` is null
      if (is.null(self$`gemeinde_name`)) {
        return(FALSE)
      }

      # check if the required `gemeindeschluessel` is null
      if (is.null(self$`gemeindeschluessel`)) {
        return(FALSE)
      }

      # check if the required `hebesatz_gewerbesteuer` is null
      if (is.null(self$`hebesatz_gewerbesteuer`)) {
        return(FALSE)
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        return(FALSE)
      }

      # check if the required `valid_from` is null
      if (is.null(self$`valid_from`)) {
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
      # check if the required `bundesland` is null
      if (is.null(self$`bundesland`)) {
        invalid_fields["bundesland"] <- "Non-nullable required field `bundesland` cannot be null."
      }

      # check if the required `country_code` is null
      if (is.null(self$`country_code`)) {
        invalid_fields["country_code"] <- "Non-nullable required field `country_code` cannot be null."
      }

      # check if the required `gemeinde_name` is null
      if (is.null(self$`gemeinde_name`)) {
        invalid_fields["gemeinde_name"] <- "Non-nullable required field `gemeinde_name` cannot be null."
      }

      # check if the required `gemeindeschluessel` is null
      if (is.null(self$`gemeindeschluessel`)) {
        invalid_fields["gemeindeschluessel"] <- "Non-nullable required field `gemeindeschluessel` cannot be null."
      }

      # check if the required `hebesatz_gewerbesteuer` is null
      if (is.null(self$`hebesatz_gewerbesteuer`)) {
        invalid_fields["hebesatz_gewerbesteuer"] <- "Non-nullable required field `hebesatz_gewerbesteuer` cannot be null."
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        invalid_fields["jahr"] <- "Non-nullable required field `jahr` cannot be null."
      }

      # check if the required `valid_from` is null
      if (is.null(self$`valid_from`)) {
        invalid_fields["valid_from"] <- "Non-nullable required field `valid_from` cannot be null."
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
# HebesatzLookup$unlock()
#
## Below is an example to define the print function
# HebesatzLookup$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# HebesatzLookup$lock()

