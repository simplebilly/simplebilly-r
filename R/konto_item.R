#' Create a new KontoItem
#'
#' @description
#' KontoItem Class
#'
#' @docType class
#' @title KontoItem
#' @description KontoItem Class
#' @format An \code{R6Class} generator object
#' @field anfangsbestand  character
#' @field haben_umsatz  character
#' @field konto  character
#' @field name  character
#' @field saldo  character
#' @field soll_umsatz  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
KontoItem <- R6::R6Class(
  "KontoItem",
  public = list(
    `anfangsbestand` = NULL,
    `haben_umsatz` = NULL,
    `konto` = NULL,
    `name` = NULL,
    `saldo` = NULL,
    `soll_umsatz` = NULL,

    #' @description
    #' Initialize a new KontoItem class.
    #'
    #' @param anfangsbestand anfangsbestand
    #' @param haben_umsatz haben_umsatz
    #' @param konto konto
    #' @param name name
    #' @param saldo saldo
    #' @param soll_umsatz soll_umsatz
    #' @param ... Other optional arguments.
    initialize = function(`anfangsbestand`, `haben_umsatz`, `konto`, `name`, `saldo`, `soll_umsatz`, ...) {
      if (!missing(`anfangsbestand`)) {
        if (!(is.character(`anfangsbestand`) && length(`anfangsbestand`) == 1)) {
          stop(paste("Error! Invalid data for `anfangsbestand`. Must be a string:", `anfangsbestand`))
        }
        self$`anfangsbestand` <- `anfangsbestand`
      }
      if (!missing(`haben_umsatz`)) {
        if (!(is.character(`haben_umsatz`) && length(`haben_umsatz`) == 1)) {
          stop(paste("Error! Invalid data for `haben_umsatz`. Must be a string:", `haben_umsatz`))
        }
        self$`haben_umsatz` <- `haben_umsatz`
      }
      if (!missing(`konto`)) {
        if (!(is.character(`konto`) && length(`konto`) == 1)) {
          stop(paste("Error! Invalid data for `konto`. Must be a string:", `konto`))
        }
        self$`konto` <- `konto`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`saldo`)) {
        if (!(is.character(`saldo`) && length(`saldo`) == 1)) {
          stop(paste("Error! Invalid data for `saldo`. Must be a string:", `saldo`))
        }
        self$`saldo` <- `saldo`
      }
      if (!missing(`soll_umsatz`)) {
        if (!(is.character(`soll_umsatz`) && length(`soll_umsatz`) == 1)) {
          stop(paste("Error! Invalid data for `soll_umsatz`. Must be a string:", `soll_umsatz`))
        }
        self$`soll_umsatz` <- `soll_umsatz`
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
    #' @return KontoItem as a base R list.
    #' @examples
    #' # convert array of KontoItem (x) to a data frame
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
    #' Convert KontoItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      KontoItemObject <- list()
      if (!is.null(self$`anfangsbestand`)) {
        KontoItemObject[["anfangsbestand"]] <-
          self$`anfangsbestand`
      }
      if (!is.null(self$`haben_umsatz`)) {
        KontoItemObject[["haben_umsatz"]] <-
          self$`haben_umsatz`
      }
      if (!is.null(self$`konto`)) {
        KontoItemObject[["konto"]] <-
          self$`konto`
      }
      if (!is.null(self$`name`)) {
        KontoItemObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`saldo`)) {
        KontoItemObject[["saldo"]] <-
          self$`saldo`
      }
      if (!is.null(self$`soll_umsatz`)) {
        KontoItemObject[["soll_umsatz"]] <-
          self$`soll_umsatz`
      }
      return(KontoItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of KontoItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of KontoItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`anfangsbestand`)) {
        self$`anfangsbestand` <- this_object$`anfangsbestand`
      }
      if (!is.null(this_object$`haben_umsatz`)) {
        self$`haben_umsatz` <- this_object$`haben_umsatz`
      }
      if (!is.null(this_object$`konto`)) {
        self$`konto` <- this_object$`konto`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`saldo`)) {
        self$`saldo` <- this_object$`saldo`
      }
      if (!is.null(this_object$`soll_umsatz`)) {
        self$`soll_umsatz` <- this_object$`soll_umsatz`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return KontoItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of KontoItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of KontoItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`anfangsbestand` <- this_object$`anfangsbestand`
      self$`haben_umsatz` <- this_object$`haben_umsatz`
      self$`konto` <- this_object$`konto`
      self$`name` <- this_object$`name`
      self$`saldo` <- this_object$`saldo`
      self$`soll_umsatz` <- this_object$`soll_umsatz`
      self
    },

    #' @description
    #' Validate JSON input with respect to KontoItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `anfangsbestand`
      if (!is.null(input_json$`anfangsbestand`)) {
        if (!(is.character(input_json$`anfangsbestand`) && length(input_json$`anfangsbestand`) == 1)) {
          stop(paste("Error! Invalid data for `anfangsbestand`. Must be a string:", input_json$`anfangsbestand`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KontoItem: the required field `anfangsbestand` is missing."))
      }
      # check the required field `haben_umsatz`
      if (!is.null(input_json$`haben_umsatz`)) {
        if (!(is.character(input_json$`haben_umsatz`) && length(input_json$`haben_umsatz`) == 1)) {
          stop(paste("Error! Invalid data for `haben_umsatz`. Must be a string:", input_json$`haben_umsatz`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KontoItem: the required field `haben_umsatz` is missing."))
      }
      # check the required field `konto`
      if (!is.null(input_json$`konto`)) {
        if (!(is.character(input_json$`konto`) && length(input_json$`konto`) == 1)) {
          stop(paste("Error! Invalid data for `konto`. Must be a string:", input_json$`konto`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KontoItem: the required field `konto` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KontoItem: the required field `name` is missing."))
      }
      # check the required field `saldo`
      if (!is.null(input_json$`saldo`)) {
        if (!(is.character(input_json$`saldo`) && length(input_json$`saldo`) == 1)) {
          stop(paste("Error! Invalid data for `saldo`. Must be a string:", input_json$`saldo`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KontoItem: the required field `saldo` is missing."))
      }
      # check the required field `soll_umsatz`
      if (!is.null(input_json$`soll_umsatz`)) {
        if (!(is.character(input_json$`soll_umsatz`) && length(input_json$`soll_umsatz`) == 1)) {
          stop(paste("Error! Invalid data for `soll_umsatz`. Must be a string:", input_json$`soll_umsatz`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KontoItem: the required field `soll_umsatz` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of KontoItem
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `anfangsbestand` is null
      if (is.null(self$`anfangsbestand`)) {
        return(FALSE)
      }

      # check if the required `haben_umsatz` is null
      if (is.null(self$`haben_umsatz`)) {
        return(FALSE)
      }

      # check if the required `konto` is null
      if (is.null(self$`konto`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `saldo` is null
      if (is.null(self$`saldo`)) {
        return(FALSE)
      }

      # check if the required `soll_umsatz` is null
      if (is.null(self$`soll_umsatz`)) {
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
      # check if the required `anfangsbestand` is null
      if (is.null(self$`anfangsbestand`)) {
        invalid_fields["anfangsbestand"] <- "Non-nullable required field `anfangsbestand` cannot be null."
      }

      # check if the required `haben_umsatz` is null
      if (is.null(self$`haben_umsatz`)) {
        invalid_fields["haben_umsatz"] <- "Non-nullable required field `haben_umsatz` cannot be null."
      }

      # check if the required `konto` is null
      if (is.null(self$`konto`)) {
        invalid_fields["konto"] <- "Non-nullable required field `konto` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `saldo` is null
      if (is.null(self$`saldo`)) {
        invalid_fields["saldo"] <- "Non-nullable required field `saldo` cannot be null."
      }

      # check if the required `soll_umsatz` is null
      if (is.null(self$`soll_umsatz`)) {
        invalid_fields["soll_umsatz"] <- "Non-nullable required field `soll_umsatz` cannot be null."
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
# KontoItem$unlock()
#
## Below is an example to define the print function
# KontoItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# KontoItem$lock()

