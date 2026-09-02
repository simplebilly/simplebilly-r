#' Create a new EksErgebnis
#'
#' @description
#' EksErgebnis Class
#'
#' @docType class
#' @title EksErgebnis
#' @description EksErgebnis Class
#' @format An \code{R6Class} generator object
#' @field gesamtergebnis  character
#' @field monate  list(\link{EksMonatsWert})
#' @field prognose_naechste_6_monate  character
#' @field summe_ausgaben  character
#' @field summe_einnahmen  character
#' @field zeitraum_bis  character
#' @field zeitraum_von  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EksErgebnis <- R6::R6Class(
  "EksErgebnis",
  public = list(
    `gesamtergebnis` = NULL,
    `monate` = NULL,
    `prognose_naechste_6_monate` = NULL,
    `summe_ausgaben` = NULL,
    `summe_einnahmen` = NULL,
    `zeitraum_bis` = NULL,
    `zeitraum_von` = NULL,

    #' @description
    #' Initialize a new EksErgebnis class.
    #'
    #' @param gesamtergebnis gesamtergebnis
    #' @param monate monate
    #' @param prognose_naechste_6_monate prognose_naechste_6_monate
    #' @param summe_ausgaben summe_ausgaben
    #' @param summe_einnahmen summe_einnahmen
    #' @param zeitraum_bis zeitraum_bis
    #' @param zeitraum_von zeitraum_von
    #' @param ... Other optional arguments.
    initialize = function(`gesamtergebnis`, `monate`, `prognose_naechste_6_monate`, `summe_ausgaben`, `summe_einnahmen`, `zeitraum_bis`, `zeitraum_von`, ...) {
      if (!missing(`gesamtergebnis`)) {
        if (!(is.character(`gesamtergebnis`) && length(`gesamtergebnis`) == 1)) {
          stop(paste("Error! Invalid data for `gesamtergebnis`. Must be a string:", `gesamtergebnis`))
        }
        self$`gesamtergebnis` <- `gesamtergebnis`
      }
      if (!missing(`monate`)) {
        stopifnot(is.vector(`monate`), length(`monate`) != 0)
        sapply(`monate`, function(x) stopifnot(R6::is.R6(x)))
        self$`monate` <- `monate`
      }
      if (!missing(`prognose_naechste_6_monate`)) {
        if (!(is.character(`prognose_naechste_6_monate`) && length(`prognose_naechste_6_monate`) == 1)) {
          stop(paste("Error! Invalid data for `prognose_naechste_6_monate`. Must be a string:", `prognose_naechste_6_monate`))
        }
        self$`prognose_naechste_6_monate` <- `prognose_naechste_6_monate`
      }
      if (!missing(`summe_ausgaben`)) {
        if (!(is.character(`summe_ausgaben`) && length(`summe_ausgaben`) == 1)) {
          stop(paste("Error! Invalid data for `summe_ausgaben`. Must be a string:", `summe_ausgaben`))
        }
        self$`summe_ausgaben` <- `summe_ausgaben`
      }
      if (!missing(`summe_einnahmen`)) {
        if (!(is.character(`summe_einnahmen`) && length(`summe_einnahmen`) == 1)) {
          stop(paste("Error! Invalid data for `summe_einnahmen`. Must be a string:", `summe_einnahmen`))
        }
        self$`summe_einnahmen` <- `summe_einnahmen`
      }
      if (!missing(`zeitraum_bis`)) {
        if (!(is.character(`zeitraum_bis`) && length(`zeitraum_bis`) == 1)) {
          stop(paste("Error! Invalid data for `zeitraum_bis`. Must be a string:", `zeitraum_bis`))
        }
        self$`zeitraum_bis` <- `zeitraum_bis`
      }
      if (!missing(`zeitraum_von`)) {
        if (!(is.character(`zeitraum_von`) && length(`zeitraum_von`) == 1)) {
          stop(paste("Error! Invalid data for `zeitraum_von`. Must be a string:", `zeitraum_von`))
        }
        self$`zeitraum_von` <- `zeitraum_von`
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
    #' @return EksErgebnis as a base R list.
    #' @examples
    #' # convert array of EksErgebnis (x) to a data frame
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
    #' Convert EksErgebnis to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EksErgebnisObject <- list()
      if (!is.null(self$`gesamtergebnis`)) {
        EksErgebnisObject[["gesamtergebnis"]] <-
          self$`gesamtergebnis`
      }
      if (!is.null(self$`monate`)) {
        EksErgebnisObject[["monate"]] <-
          self$extractSimpleType(self$`monate`)
      }
      if (!is.null(self$`prognose_naechste_6_monate`)) {
        EksErgebnisObject[["prognose_naechste_6_monate"]] <-
          self$`prognose_naechste_6_monate`
      }
      if (!is.null(self$`summe_ausgaben`)) {
        EksErgebnisObject[["summe_ausgaben"]] <-
          self$`summe_ausgaben`
      }
      if (!is.null(self$`summe_einnahmen`)) {
        EksErgebnisObject[["summe_einnahmen"]] <-
          self$`summe_einnahmen`
      }
      if (!is.null(self$`zeitraum_bis`)) {
        EksErgebnisObject[["zeitraum_bis"]] <-
          self$`zeitraum_bis`
      }
      if (!is.null(self$`zeitraum_von`)) {
        EksErgebnisObject[["zeitraum_von"]] <-
          self$`zeitraum_von`
      }
      return(EksErgebnisObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of EksErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of EksErgebnis
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gesamtergebnis`)) {
        self$`gesamtergebnis` <- this_object$`gesamtergebnis`
      }
      if (!is.null(this_object$`monate`)) {
        self$`monate` <- ApiClient$new()$deserializeObj(this_object$`monate`, "array[EksMonatsWert]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`prognose_naechste_6_monate`)) {
        self$`prognose_naechste_6_monate` <- this_object$`prognose_naechste_6_monate`
      }
      if (!is.null(this_object$`summe_ausgaben`)) {
        self$`summe_ausgaben` <- this_object$`summe_ausgaben`
      }
      if (!is.null(this_object$`summe_einnahmen`)) {
        self$`summe_einnahmen` <- this_object$`summe_einnahmen`
      }
      if (!is.null(this_object$`zeitraum_bis`)) {
        self$`zeitraum_bis` <- this_object$`zeitraum_bis`
      }
      if (!is.null(this_object$`zeitraum_von`)) {
        self$`zeitraum_von` <- this_object$`zeitraum_von`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EksErgebnis in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EksErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of EksErgebnis
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gesamtergebnis` <- this_object$`gesamtergebnis`
      self$`monate` <- ApiClient$new()$deserializeObj(this_object$`monate`, "array[EksMonatsWert]", loadNamespace("openapi"))
      self$`prognose_naechste_6_monate` <- this_object$`prognose_naechste_6_monate`
      self$`summe_ausgaben` <- this_object$`summe_ausgaben`
      self$`summe_einnahmen` <- this_object$`summe_einnahmen`
      self$`zeitraum_bis` <- this_object$`zeitraum_bis`
      self$`zeitraum_von` <- this_object$`zeitraum_von`
      self
    },

    #' @description
    #' Validate JSON input with respect to EksErgebnis and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `gesamtergebnis`
      if (!is.null(input_json$`gesamtergebnis`)) {
        if (!(is.character(input_json$`gesamtergebnis`) && length(input_json$`gesamtergebnis`) == 1)) {
          stop(paste("Error! Invalid data for `gesamtergebnis`. Must be a string:", input_json$`gesamtergebnis`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EksErgebnis: the required field `gesamtergebnis` is missing."))
      }
      # check the required field `monate`
      if (!is.null(input_json$`monate`)) {
        stopifnot(is.vector(input_json$`monate`), length(input_json$`monate`) != 0)
        tmp <- sapply(input_json$`monate`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EksErgebnis: the required field `monate` is missing."))
      }
      # check the required field `prognose_naechste_6_monate`
      if (!is.null(input_json$`prognose_naechste_6_monate`)) {
        if (!(is.character(input_json$`prognose_naechste_6_monate`) && length(input_json$`prognose_naechste_6_monate`) == 1)) {
          stop(paste("Error! Invalid data for `prognose_naechste_6_monate`. Must be a string:", input_json$`prognose_naechste_6_monate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EksErgebnis: the required field `prognose_naechste_6_monate` is missing."))
      }
      # check the required field `summe_ausgaben`
      if (!is.null(input_json$`summe_ausgaben`)) {
        if (!(is.character(input_json$`summe_ausgaben`) && length(input_json$`summe_ausgaben`) == 1)) {
          stop(paste("Error! Invalid data for `summe_ausgaben`. Must be a string:", input_json$`summe_ausgaben`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EksErgebnis: the required field `summe_ausgaben` is missing."))
      }
      # check the required field `summe_einnahmen`
      if (!is.null(input_json$`summe_einnahmen`)) {
        if (!(is.character(input_json$`summe_einnahmen`) && length(input_json$`summe_einnahmen`) == 1)) {
          stop(paste("Error! Invalid data for `summe_einnahmen`. Must be a string:", input_json$`summe_einnahmen`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EksErgebnis: the required field `summe_einnahmen` is missing."))
      }
      # check the required field `zeitraum_bis`
      if (!is.null(input_json$`zeitraum_bis`)) {
        if (!(is.character(input_json$`zeitraum_bis`) && length(input_json$`zeitraum_bis`) == 1)) {
          stop(paste("Error! Invalid data for `zeitraum_bis`. Must be a string:", input_json$`zeitraum_bis`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EksErgebnis: the required field `zeitraum_bis` is missing."))
      }
      # check the required field `zeitraum_von`
      if (!is.null(input_json$`zeitraum_von`)) {
        if (!(is.character(input_json$`zeitraum_von`) && length(input_json$`zeitraum_von`) == 1)) {
          stop(paste("Error! Invalid data for `zeitraum_von`. Must be a string:", input_json$`zeitraum_von`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EksErgebnis: the required field `zeitraum_von` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EksErgebnis
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `gesamtergebnis` is null
      if (is.null(self$`gesamtergebnis`)) {
        return(FALSE)
      }

      # check if the required `monate` is null
      if (is.null(self$`monate`)) {
        return(FALSE)
      }

      # check if the required `prognose_naechste_6_monate` is null
      if (is.null(self$`prognose_naechste_6_monate`)) {
        return(FALSE)
      }

      # check if the required `summe_ausgaben` is null
      if (is.null(self$`summe_ausgaben`)) {
        return(FALSE)
      }

      # check if the required `summe_einnahmen` is null
      if (is.null(self$`summe_einnahmen`)) {
        return(FALSE)
      }

      # check if the required `zeitraum_bis` is null
      if (is.null(self$`zeitraum_bis`)) {
        return(FALSE)
      }

      # check if the required `zeitraum_von` is null
      if (is.null(self$`zeitraum_von`)) {
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
      # check if the required `gesamtergebnis` is null
      if (is.null(self$`gesamtergebnis`)) {
        invalid_fields["gesamtergebnis"] <- "Non-nullable required field `gesamtergebnis` cannot be null."
      }

      # check if the required `monate` is null
      if (is.null(self$`monate`)) {
        invalid_fields["monate"] <- "Non-nullable required field `monate` cannot be null."
      }

      # check if the required `prognose_naechste_6_monate` is null
      if (is.null(self$`prognose_naechste_6_monate`)) {
        invalid_fields["prognose_naechste_6_monate"] <- "Non-nullable required field `prognose_naechste_6_monate` cannot be null."
      }

      # check if the required `summe_ausgaben` is null
      if (is.null(self$`summe_ausgaben`)) {
        invalid_fields["summe_ausgaben"] <- "Non-nullable required field `summe_ausgaben` cannot be null."
      }

      # check if the required `summe_einnahmen` is null
      if (is.null(self$`summe_einnahmen`)) {
        invalid_fields["summe_einnahmen"] <- "Non-nullable required field `summe_einnahmen` cannot be null."
      }

      # check if the required `zeitraum_bis` is null
      if (is.null(self$`zeitraum_bis`)) {
        invalid_fields["zeitraum_bis"] <- "Non-nullable required field `zeitraum_bis` cannot be null."
      }

      # check if the required `zeitraum_von` is null
      if (is.null(self$`zeitraum_von`)) {
        invalid_fields["zeitraum_von"] <- "Non-nullable required field `zeitraum_von` cannot be null."
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
# EksErgebnis$unlock()
#
## Below is an example to define the print function
# EksErgebnis$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EksErgebnis$lock()

