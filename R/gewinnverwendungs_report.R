#' Create a new GewinnverwendungsReport
#'
#' @description
#' GewinnverwendungsReport Class
#'
#' @docType class
#' @title GewinnverwendungsReport
#' @description GewinnverwendungsReport Class
#' @format An \code{R6Class} generator object
#' @field bilanzgewinn Bilanzgewinn nach Einstellung (§ 174 AktG, Beschluss der HV). character
#' @field gesetzliche_ruecklage_bestand  character
#' @field gesetzliche_ruecklage_cap Deckel: 10 \% des Grundkapitals (§ 150 Abs. 2 AktG). character
#' @field gesetzliche_ruecklage_nach Rücklage nach Einstellung. character
#' @field gesetzliche_ruecklage_soll Vorgeschlagene Einstellung in die gesetzliche Rücklage (§ 150 Abs. 2 AktG). character
#' @field gezeichnetes_kapital  character
#' @field jahresueberschuss  character
#' @field year  integer
#' @field zeilen  list(\link{GewinnverwendungsZeile})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GewinnverwendungsReport <- R6::R6Class(
  "GewinnverwendungsReport",
  public = list(
    `bilanzgewinn` = NULL,
    `gesetzliche_ruecklage_bestand` = NULL,
    `gesetzliche_ruecklage_cap` = NULL,
    `gesetzliche_ruecklage_nach` = NULL,
    `gesetzliche_ruecklage_soll` = NULL,
    `gezeichnetes_kapital` = NULL,
    `jahresueberschuss` = NULL,
    `year` = NULL,
    `zeilen` = NULL,

    #' @description
    #' Initialize a new GewinnverwendungsReport class.
    #'
    #' @param bilanzgewinn Bilanzgewinn nach Einstellung (§ 174 AktG, Beschluss der HV).
    #' @param gesetzliche_ruecklage_bestand gesetzliche_ruecklage_bestand
    #' @param gesetzliche_ruecklage_cap Deckel: 10 \% des Grundkapitals (§ 150 Abs. 2 AktG).
    #' @param gesetzliche_ruecklage_nach Rücklage nach Einstellung.
    #' @param gesetzliche_ruecklage_soll Vorgeschlagene Einstellung in die gesetzliche Rücklage (§ 150 Abs. 2 AktG).
    #' @param gezeichnetes_kapital gezeichnetes_kapital
    #' @param jahresueberschuss jahresueberschuss
    #' @param year year
    #' @param zeilen zeilen
    #' @param ... Other optional arguments.
    initialize = function(`bilanzgewinn`, `gesetzliche_ruecklage_bestand`, `gesetzliche_ruecklage_cap`, `gesetzliche_ruecklage_nach`, `gesetzliche_ruecklage_soll`, `gezeichnetes_kapital`, `jahresueberschuss`, `year`, `zeilen`, ...) {
      if (!missing(`bilanzgewinn`)) {
        if (!(is.character(`bilanzgewinn`) && length(`bilanzgewinn`) == 1)) {
          stop(paste("Error! Invalid data for `bilanzgewinn`. Must be a string:", `bilanzgewinn`))
        }
        self$`bilanzgewinn` <- `bilanzgewinn`
      }
      if (!missing(`gesetzliche_ruecklage_bestand`)) {
        if (!(is.character(`gesetzliche_ruecklage_bestand`) && length(`gesetzliche_ruecklage_bestand`) == 1)) {
          stop(paste("Error! Invalid data for `gesetzliche_ruecklage_bestand`. Must be a string:", `gesetzliche_ruecklage_bestand`))
        }
        self$`gesetzliche_ruecklage_bestand` <- `gesetzliche_ruecklage_bestand`
      }
      if (!missing(`gesetzliche_ruecklage_cap`)) {
        if (!(is.character(`gesetzliche_ruecklage_cap`) && length(`gesetzliche_ruecklage_cap`) == 1)) {
          stop(paste("Error! Invalid data for `gesetzliche_ruecklage_cap`. Must be a string:", `gesetzliche_ruecklage_cap`))
        }
        self$`gesetzliche_ruecklage_cap` <- `gesetzliche_ruecklage_cap`
      }
      if (!missing(`gesetzliche_ruecklage_nach`)) {
        if (!(is.character(`gesetzliche_ruecklage_nach`) && length(`gesetzliche_ruecklage_nach`) == 1)) {
          stop(paste("Error! Invalid data for `gesetzliche_ruecklage_nach`. Must be a string:", `gesetzliche_ruecklage_nach`))
        }
        self$`gesetzliche_ruecklage_nach` <- `gesetzliche_ruecklage_nach`
      }
      if (!missing(`gesetzliche_ruecklage_soll`)) {
        if (!(is.character(`gesetzliche_ruecklage_soll`) && length(`gesetzliche_ruecklage_soll`) == 1)) {
          stop(paste("Error! Invalid data for `gesetzliche_ruecklage_soll`. Must be a string:", `gesetzliche_ruecklage_soll`))
        }
        self$`gesetzliche_ruecklage_soll` <- `gesetzliche_ruecklage_soll`
      }
      if (!missing(`gezeichnetes_kapital`)) {
        if (!(is.character(`gezeichnetes_kapital`) && length(`gezeichnetes_kapital`) == 1)) {
          stop(paste("Error! Invalid data for `gezeichnetes_kapital`. Must be a string:", `gezeichnetes_kapital`))
        }
        self$`gezeichnetes_kapital` <- `gezeichnetes_kapital`
      }
      if (!missing(`jahresueberschuss`)) {
        if (!(is.character(`jahresueberschuss`) && length(`jahresueberschuss`) == 1)) {
          stop(paste("Error! Invalid data for `jahresueberschuss`. Must be a string:", `jahresueberschuss`))
        }
        self$`jahresueberschuss` <- `jahresueberschuss`
      }
      if (!missing(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
      }
      if (!missing(`zeilen`)) {
        stopifnot(is.vector(`zeilen`), length(`zeilen`) != 0)
        sapply(`zeilen`, function(x) stopifnot(R6::is.R6(x)))
        self$`zeilen` <- `zeilen`
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
    #' @return GewinnverwendungsReport as a base R list.
    #' @examples
    #' # convert array of GewinnverwendungsReport (x) to a data frame
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
    #' Convert GewinnverwendungsReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GewinnverwendungsReportObject <- list()
      if (!is.null(self$`bilanzgewinn`)) {
        GewinnverwendungsReportObject[["bilanzgewinn"]] <-
          self$`bilanzgewinn`
      }
      if (!is.null(self$`gesetzliche_ruecklage_bestand`)) {
        GewinnverwendungsReportObject[["gesetzliche_ruecklage_bestand"]] <-
          self$`gesetzliche_ruecklage_bestand`
      }
      if (!is.null(self$`gesetzliche_ruecklage_cap`)) {
        GewinnverwendungsReportObject[["gesetzliche_ruecklage_cap"]] <-
          self$`gesetzliche_ruecklage_cap`
      }
      if (!is.null(self$`gesetzliche_ruecklage_nach`)) {
        GewinnverwendungsReportObject[["gesetzliche_ruecklage_nach"]] <-
          self$`gesetzliche_ruecklage_nach`
      }
      if (!is.null(self$`gesetzliche_ruecklage_soll`)) {
        GewinnverwendungsReportObject[["gesetzliche_ruecklage_soll"]] <-
          self$`gesetzliche_ruecklage_soll`
      }
      if (!is.null(self$`gezeichnetes_kapital`)) {
        GewinnverwendungsReportObject[["gezeichnetes_kapital"]] <-
          self$`gezeichnetes_kapital`
      }
      if (!is.null(self$`jahresueberschuss`)) {
        GewinnverwendungsReportObject[["jahresueberschuss"]] <-
          self$`jahresueberschuss`
      }
      if (!is.null(self$`year`)) {
        GewinnverwendungsReportObject[["year"]] <-
          self$`year`
      }
      if (!is.null(self$`zeilen`)) {
        GewinnverwendungsReportObject[["zeilen"]] <-
          self$extractSimpleType(self$`zeilen`)
      }
      return(GewinnverwendungsReportObject)
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
    #' Deserialize JSON string into an instance of GewinnverwendungsReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of GewinnverwendungsReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bilanzgewinn`)) {
        self$`bilanzgewinn` <- this_object$`bilanzgewinn`
      }
      if (!is.null(this_object$`gesetzliche_ruecklage_bestand`)) {
        self$`gesetzliche_ruecklage_bestand` <- this_object$`gesetzliche_ruecklage_bestand`
      }
      if (!is.null(this_object$`gesetzliche_ruecklage_cap`)) {
        self$`gesetzliche_ruecklage_cap` <- this_object$`gesetzliche_ruecklage_cap`
      }
      if (!is.null(this_object$`gesetzliche_ruecklage_nach`)) {
        self$`gesetzliche_ruecklage_nach` <- this_object$`gesetzliche_ruecklage_nach`
      }
      if (!is.null(this_object$`gesetzliche_ruecklage_soll`)) {
        self$`gesetzliche_ruecklage_soll` <- this_object$`gesetzliche_ruecklage_soll`
      }
      if (!is.null(this_object$`gezeichnetes_kapital`)) {
        self$`gezeichnetes_kapital` <- this_object$`gezeichnetes_kapital`
      }
      if (!is.null(this_object$`jahresueberschuss`)) {
        self$`jahresueberschuss` <- this_object$`jahresueberschuss`
      }
      if (!is.null(this_object$`year`)) {
        self$`year` <- this_object$`year`
      }
      if (!is.null(this_object$`zeilen`)) {
        self$`zeilen` <- ApiClient$new()$deserializeObj(this_object$`zeilen`, "array[GewinnverwendungsZeile]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GewinnverwendungsReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GewinnverwendungsReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of GewinnverwendungsReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bilanzgewinn` <- this_object$`bilanzgewinn`
      self$`gesetzliche_ruecklage_bestand` <- this_object$`gesetzliche_ruecklage_bestand`
      self$`gesetzliche_ruecklage_cap` <- this_object$`gesetzliche_ruecklage_cap`
      self$`gesetzliche_ruecklage_nach` <- this_object$`gesetzliche_ruecklage_nach`
      self$`gesetzliche_ruecklage_soll` <- this_object$`gesetzliche_ruecklage_soll`
      self$`gezeichnetes_kapital` <- this_object$`gezeichnetes_kapital`
      self$`jahresueberschuss` <- this_object$`jahresueberschuss`
      self$`year` <- this_object$`year`
      self$`zeilen` <- ApiClient$new()$deserializeObj(this_object$`zeilen`, "array[GewinnverwendungsZeile]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to GewinnverwendungsReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `bilanzgewinn`
      if (!is.null(input_json$`bilanzgewinn`)) {
        if (!(is.character(input_json$`bilanzgewinn`) && length(input_json$`bilanzgewinn`) == 1)) {
          stop(paste("Error! Invalid data for `bilanzgewinn`. Must be a string:", input_json$`bilanzgewinn`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewinnverwendungsReport: the required field `bilanzgewinn` is missing."))
      }
      # check the required field `gesetzliche_ruecklage_bestand`
      if (!is.null(input_json$`gesetzliche_ruecklage_bestand`)) {
        if (!(is.character(input_json$`gesetzliche_ruecklage_bestand`) && length(input_json$`gesetzliche_ruecklage_bestand`) == 1)) {
          stop(paste("Error! Invalid data for `gesetzliche_ruecklage_bestand`. Must be a string:", input_json$`gesetzliche_ruecklage_bestand`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewinnverwendungsReport: the required field `gesetzliche_ruecklage_bestand` is missing."))
      }
      # check the required field `gesetzliche_ruecklage_cap`
      if (!is.null(input_json$`gesetzliche_ruecklage_cap`)) {
        if (!(is.character(input_json$`gesetzliche_ruecklage_cap`) && length(input_json$`gesetzliche_ruecklage_cap`) == 1)) {
          stop(paste("Error! Invalid data for `gesetzliche_ruecklage_cap`. Must be a string:", input_json$`gesetzliche_ruecklage_cap`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewinnverwendungsReport: the required field `gesetzliche_ruecklage_cap` is missing."))
      }
      # check the required field `gesetzliche_ruecklage_nach`
      if (!is.null(input_json$`gesetzliche_ruecklage_nach`)) {
        if (!(is.character(input_json$`gesetzliche_ruecklage_nach`) && length(input_json$`gesetzliche_ruecklage_nach`) == 1)) {
          stop(paste("Error! Invalid data for `gesetzliche_ruecklage_nach`. Must be a string:", input_json$`gesetzliche_ruecklage_nach`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewinnverwendungsReport: the required field `gesetzliche_ruecklage_nach` is missing."))
      }
      # check the required field `gesetzliche_ruecklage_soll`
      if (!is.null(input_json$`gesetzliche_ruecklage_soll`)) {
        if (!(is.character(input_json$`gesetzliche_ruecklage_soll`) && length(input_json$`gesetzliche_ruecklage_soll`) == 1)) {
          stop(paste("Error! Invalid data for `gesetzliche_ruecklage_soll`. Must be a string:", input_json$`gesetzliche_ruecklage_soll`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewinnverwendungsReport: the required field `gesetzliche_ruecklage_soll` is missing."))
      }
      # check the required field `gezeichnetes_kapital`
      if (!is.null(input_json$`gezeichnetes_kapital`)) {
        if (!(is.character(input_json$`gezeichnetes_kapital`) && length(input_json$`gezeichnetes_kapital`) == 1)) {
          stop(paste("Error! Invalid data for `gezeichnetes_kapital`. Must be a string:", input_json$`gezeichnetes_kapital`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewinnverwendungsReport: the required field `gezeichnetes_kapital` is missing."))
      }
      # check the required field `jahresueberschuss`
      if (!is.null(input_json$`jahresueberschuss`)) {
        if (!(is.character(input_json$`jahresueberschuss`) && length(input_json$`jahresueberschuss`) == 1)) {
          stop(paste("Error! Invalid data for `jahresueberschuss`. Must be a string:", input_json$`jahresueberschuss`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewinnverwendungsReport: the required field `jahresueberschuss` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewinnverwendungsReport: the required field `year` is missing."))
      }
      # check the required field `zeilen`
      if (!is.null(input_json$`zeilen`)) {
        stopifnot(is.vector(input_json$`zeilen`), length(input_json$`zeilen`) != 0)
        tmp <- sapply(input_json$`zeilen`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GewinnverwendungsReport: the required field `zeilen` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GewinnverwendungsReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `bilanzgewinn` is null
      if (is.null(self$`bilanzgewinn`)) {
        return(FALSE)
      }

      # check if the required `gesetzliche_ruecklage_bestand` is null
      if (is.null(self$`gesetzliche_ruecklage_bestand`)) {
        return(FALSE)
      }

      # check if the required `gesetzliche_ruecklage_cap` is null
      if (is.null(self$`gesetzliche_ruecklage_cap`)) {
        return(FALSE)
      }

      # check if the required `gesetzliche_ruecklage_nach` is null
      if (is.null(self$`gesetzliche_ruecklage_nach`)) {
        return(FALSE)
      }

      # check if the required `gesetzliche_ruecklage_soll` is null
      if (is.null(self$`gesetzliche_ruecklage_soll`)) {
        return(FALSE)
      }

      # check if the required `gezeichnetes_kapital` is null
      if (is.null(self$`gezeichnetes_kapital`)) {
        return(FALSE)
      }

      # check if the required `jahresueberschuss` is null
      if (is.null(self$`jahresueberschuss`)) {
        return(FALSE)
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
        return(FALSE)
      }

      # check if the required `zeilen` is null
      if (is.null(self$`zeilen`)) {
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
      # check if the required `bilanzgewinn` is null
      if (is.null(self$`bilanzgewinn`)) {
        invalid_fields["bilanzgewinn"] <- "Non-nullable required field `bilanzgewinn` cannot be null."
      }

      # check if the required `gesetzliche_ruecklage_bestand` is null
      if (is.null(self$`gesetzliche_ruecklage_bestand`)) {
        invalid_fields["gesetzliche_ruecklage_bestand"] <- "Non-nullable required field `gesetzliche_ruecklage_bestand` cannot be null."
      }

      # check if the required `gesetzliche_ruecklage_cap` is null
      if (is.null(self$`gesetzliche_ruecklage_cap`)) {
        invalid_fields["gesetzliche_ruecklage_cap"] <- "Non-nullable required field `gesetzliche_ruecklage_cap` cannot be null."
      }

      # check if the required `gesetzliche_ruecklage_nach` is null
      if (is.null(self$`gesetzliche_ruecklage_nach`)) {
        invalid_fields["gesetzliche_ruecklage_nach"] <- "Non-nullable required field `gesetzliche_ruecklage_nach` cannot be null."
      }

      # check if the required `gesetzliche_ruecklage_soll` is null
      if (is.null(self$`gesetzliche_ruecklage_soll`)) {
        invalid_fields["gesetzliche_ruecklage_soll"] <- "Non-nullable required field `gesetzliche_ruecklage_soll` cannot be null."
      }

      # check if the required `gezeichnetes_kapital` is null
      if (is.null(self$`gezeichnetes_kapital`)) {
        invalid_fields["gezeichnetes_kapital"] <- "Non-nullable required field `gezeichnetes_kapital` cannot be null."
      }

      # check if the required `jahresueberschuss` is null
      if (is.null(self$`jahresueberschuss`)) {
        invalid_fields["jahresueberschuss"] <- "Non-nullable required field `jahresueberschuss` cannot be null."
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
        invalid_fields["year"] <- "Non-nullable required field `year` cannot be null."
      }

      # check if the required `zeilen` is null
      if (is.null(self$`zeilen`)) {
        invalid_fields["zeilen"] <- "Non-nullable required field `zeilen` cannot be null."
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
# GewinnverwendungsReport$unlock()
#
## Below is an example to define the print function
# GewinnverwendungsReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GewinnverwendungsReport$lock()

