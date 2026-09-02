#' Create a new GezReport
#'
#' @description
#' Berechnungsergebnis des Rundfunkbeitrags für ein Unternehmen.
#'
#' @docType class
#' @title GezReport
#' @description GezReport Class
#' @format An \code{R6Class} generator object
#' @field beitragsfreie_kfz  integer
#' @field beitragspflichtige_kfz  integer
#' @field betriebsstaetten  list(\link{BetriebsstaettenDetail})
#' @field hinweis  character
#' @field hotelzimmer_beitrag  character
#' @field jaehrlicher_beitrag  character
#' @field jahr  integer
#' @field kfz_beitrag  character
#' @field monatlicher_beitrag  character
#' @field vierteljaehrlicher_beitrag  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GezReport <- R6::R6Class(
  "GezReport",
  public = list(
    `beitragsfreie_kfz` = NULL,
    `beitragspflichtige_kfz` = NULL,
    `betriebsstaetten` = NULL,
    `hinweis` = NULL,
    `hotelzimmer_beitrag` = NULL,
    `jaehrlicher_beitrag` = NULL,
    `jahr` = NULL,
    `kfz_beitrag` = NULL,
    `monatlicher_beitrag` = NULL,
    `vierteljaehrlicher_beitrag` = NULL,

    #' @description
    #' Initialize a new GezReport class.
    #'
    #' @param beitragsfreie_kfz beitragsfreie_kfz
    #' @param beitragspflichtige_kfz beitragspflichtige_kfz
    #' @param betriebsstaetten betriebsstaetten
    #' @param hinweis hinweis
    #' @param hotelzimmer_beitrag hotelzimmer_beitrag
    #' @param jaehrlicher_beitrag jaehrlicher_beitrag
    #' @param jahr jahr
    #' @param kfz_beitrag kfz_beitrag
    #' @param monatlicher_beitrag monatlicher_beitrag
    #' @param vierteljaehrlicher_beitrag vierteljaehrlicher_beitrag
    #' @param ... Other optional arguments.
    initialize = function(`beitragsfreie_kfz`, `beitragspflichtige_kfz`, `betriebsstaetten`, `hinweis`, `hotelzimmer_beitrag`, `jaehrlicher_beitrag`, `jahr`, `kfz_beitrag`, `monatlicher_beitrag`, `vierteljaehrlicher_beitrag`, ...) {
      if (!missing(`beitragsfreie_kfz`)) {
        if (!(is.numeric(`beitragsfreie_kfz`) && length(`beitragsfreie_kfz`) == 1)) {
          stop(paste("Error! Invalid data for `beitragsfreie_kfz`. Must be an integer:", `beitragsfreie_kfz`))
        }
        self$`beitragsfreie_kfz` <- `beitragsfreie_kfz`
      }
      if (!missing(`beitragspflichtige_kfz`)) {
        if (!(is.numeric(`beitragspflichtige_kfz`) && length(`beitragspflichtige_kfz`) == 1)) {
          stop(paste("Error! Invalid data for `beitragspflichtige_kfz`. Must be an integer:", `beitragspflichtige_kfz`))
        }
        self$`beitragspflichtige_kfz` <- `beitragspflichtige_kfz`
      }
      if (!missing(`betriebsstaetten`)) {
        stopifnot(is.vector(`betriebsstaetten`), length(`betriebsstaetten`) != 0)
        sapply(`betriebsstaetten`, function(x) stopifnot(R6::is.R6(x)))
        self$`betriebsstaetten` <- `betriebsstaetten`
      }
      if (!missing(`hinweis`)) {
        if (!(is.character(`hinweis`) && length(`hinweis`) == 1)) {
          stop(paste("Error! Invalid data for `hinweis`. Must be a string:", `hinweis`))
        }
        self$`hinweis` <- `hinweis`
      }
      if (!missing(`hotelzimmer_beitrag`)) {
        if (!(is.character(`hotelzimmer_beitrag`) && length(`hotelzimmer_beitrag`) == 1)) {
          stop(paste("Error! Invalid data for `hotelzimmer_beitrag`. Must be a string:", `hotelzimmer_beitrag`))
        }
        self$`hotelzimmer_beitrag` <- `hotelzimmer_beitrag`
      }
      if (!missing(`jaehrlicher_beitrag`)) {
        if (!(is.character(`jaehrlicher_beitrag`) && length(`jaehrlicher_beitrag`) == 1)) {
          stop(paste("Error! Invalid data for `jaehrlicher_beitrag`. Must be a string:", `jaehrlicher_beitrag`))
        }
        self$`jaehrlicher_beitrag` <- `jaehrlicher_beitrag`
      }
      if (!missing(`jahr`)) {
        if (!(is.numeric(`jahr`) && length(`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", `jahr`))
        }
        self$`jahr` <- `jahr`
      }
      if (!missing(`kfz_beitrag`)) {
        if (!(is.character(`kfz_beitrag`) && length(`kfz_beitrag`) == 1)) {
          stop(paste("Error! Invalid data for `kfz_beitrag`. Must be a string:", `kfz_beitrag`))
        }
        self$`kfz_beitrag` <- `kfz_beitrag`
      }
      if (!missing(`monatlicher_beitrag`)) {
        if (!(is.character(`monatlicher_beitrag`) && length(`monatlicher_beitrag`) == 1)) {
          stop(paste("Error! Invalid data for `monatlicher_beitrag`. Must be a string:", `monatlicher_beitrag`))
        }
        self$`monatlicher_beitrag` <- `monatlicher_beitrag`
      }
      if (!missing(`vierteljaehrlicher_beitrag`)) {
        if (!(is.character(`vierteljaehrlicher_beitrag`) && length(`vierteljaehrlicher_beitrag`) == 1)) {
          stop(paste("Error! Invalid data for `vierteljaehrlicher_beitrag`. Must be a string:", `vierteljaehrlicher_beitrag`))
        }
        self$`vierteljaehrlicher_beitrag` <- `vierteljaehrlicher_beitrag`
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
    #' @return GezReport as a base R list.
    #' @examples
    #' # convert array of GezReport (x) to a data frame
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
    #' Convert GezReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GezReportObject <- list()
      if (!is.null(self$`beitragsfreie_kfz`)) {
        GezReportObject[["beitragsfreie_kfz"]] <-
          self$`beitragsfreie_kfz`
      }
      if (!is.null(self$`beitragspflichtige_kfz`)) {
        GezReportObject[["beitragspflichtige_kfz"]] <-
          self$`beitragspflichtige_kfz`
      }
      if (!is.null(self$`betriebsstaetten`)) {
        GezReportObject[["betriebsstaetten"]] <-
          self$extractSimpleType(self$`betriebsstaetten`)
      }
      if (!is.null(self$`hinweis`)) {
        GezReportObject[["hinweis"]] <-
          self$`hinweis`
      }
      if (!is.null(self$`hotelzimmer_beitrag`)) {
        GezReportObject[["hotelzimmer_beitrag"]] <-
          self$`hotelzimmer_beitrag`
      }
      if (!is.null(self$`jaehrlicher_beitrag`)) {
        GezReportObject[["jaehrlicher_beitrag"]] <-
          self$`jaehrlicher_beitrag`
      }
      if (!is.null(self$`jahr`)) {
        GezReportObject[["jahr"]] <-
          self$`jahr`
      }
      if (!is.null(self$`kfz_beitrag`)) {
        GezReportObject[["kfz_beitrag"]] <-
          self$`kfz_beitrag`
      }
      if (!is.null(self$`monatlicher_beitrag`)) {
        GezReportObject[["monatlicher_beitrag"]] <-
          self$`monatlicher_beitrag`
      }
      if (!is.null(self$`vierteljaehrlicher_beitrag`)) {
        GezReportObject[["vierteljaehrlicher_beitrag"]] <-
          self$`vierteljaehrlicher_beitrag`
      }
      return(GezReportObject)
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
    #' Deserialize JSON string into an instance of GezReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of GezReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`beitragsfreie_kfz`)) {
        self$`beitragsfreie_kfz` <- this_object$`beitragsfreie_kfz`
      }
      if (!is.null(this_object$`beitragspflichtige_kfz`)) {
        self$`beitragspflichtige_kfz` <- this_object$`beitragspflichtige_kfz`
      }
      if (!is.null(this_object$`betriebsstaetten`)) {
        self$`betriebsstaetten` <- ApiClient$new()$deserializeObj(this_object$`betriebsstaetten`, "array[BetriebsstaettenDetail]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`hinweis`)) {
        self$`hinweis` <- this_object$`hinweis`
      }
      if (!is.null(this_object$`hotelzimmer_beitrag`)) {
        self$`hotelzimmer_beitrag` <- this_object$`hotelzimmer_beitrag`
      }
      if (!is.null(this_object$`jaehrlicher_beitrag`)) {
        self$`jaehrlicher_beitrag` <- this_object$`jaehrlicher_beitrag`
      }
      if (!is.null(this_object$`jahr`)) {
        self$`jahr` <- this_object$`jahr`
      }
      if (!is.null(this_object$`kfz_beitrag`)) {
        self$`kfz_beitrag` <- this_object$`kfz_beitrag`
      }
      if (!is.null(this_object$`monatlicher_beitrag`)) {
        self$`monatlicher_beitrag` <- this_object$`monatlicher_beitrag`
      }
      if (!is.null(this_object$`vierteljaehrlicher_beitrag`)) {
        self$`vierteljaehrlicher_beitrag` <- this_object$`vierteljaehrlicher_beitrag`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GezReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GezReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of GezReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`beitragsfreie_kfz` <- this_object$`beitragsfreie_kfz`
      self$`beitragspflichtige_kfz` <- this_object$`beitragspflichtige_kfz`
      self$`betriebsstaetten` <- ApiClient$new()$deserializeObj(this_object$`betriebsstaetten`, "array[BetriebsstaettenDetail]", loadNamespace("openapi"))
      self$`hinweis` <- this_object$`hinweis`
      self$`hotelzimmer_beitrag` <- this_object$`hotelzimmer_beitrag`
      self$`jaehrlicher_beitrag` <- this_object$`jaehrlicher_beitrag`
      self$`jahr` <- this_object$`jahr`
      self$`kfz_beitrag` <- this_object$`kfz_beitrag`
      self$`monatlicher_beitrag` <- this_object$`monatlicher_beitrag`
      self$`vierteljaehrlicher_beitrag` <- this_object$`vierteljaehrlicher_beitrag`
      self
    },

    #' @description
    #' Validate JSON input with respect to GezReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `beitragsfreie_kfz`
      if (!is.null(input_json$`beitragsfreie_kfz`)) {
        if (!(is.numeric(input_json$`beitragsfreie_kfz`) && length(input_json$`beitragsfreie_kfz`) == 1)) {
          stop(paste("Error! Invalid data for `beitragsfreie_kfz`. Must be an integer:", input_json$`beitragsfreie_kfz`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GezReport: the required field `beitragsfreie_kfz` is missing."))
      }
      # check the required field `beitragspflichtige_kfz`
      if (!is.null(input_json$`beitragspflichtige_kfz`)) {
        if (!(is.numeric(input_json$`beitragspflichtige_kfz`) && length(input_json$`beitragspflichtige_kfz`) == 1)) {
          stop(paste("Error! Invalid data for `beitragspflichtige_kfz`. Must be an integer:", input_json$`beitragspflichtige_kfz`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GezReport: the required field `beitragspflichtige_kfz` is missing."))
      }
      # check the required field `betriebsstaetten`
      if (!is.null(input_json$`betriebsstaetten`)) {
        stopifnot(is.vector(input_json$`betriebsstaetten`), length(input_json$`betriebsstaetten`) != 0)
        tmp <- sapply(input_json$`betriebsstaetten`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GezReport: the required field `betriebsstaetten` is missing."))
      }
      # check the required field `hinweis`
      if (!is.null(input_json$`hinweis`)) {
        if (!(is.character(input_json$`hinweis`) && length(input_json$`hinweis`) == 1)) {
          stop(paste("Error! Invalid data for `hinweis`. Must be a string:", input_json$`hinweis`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GezReport: the required field `hinweis` is missing."))
      }
      # check the required field `hotelzimmer_beitrag`
      if (!is.null(input_json$`hotelzimmer_beitrag`)) {
        if (!(is.character(input_json$`hotelzimmer_beitrag`) && length(input_json$`hotelzimmer_beitrag`) == 1)) {
          stop(paste("Error! Invalid data for `hotelzimmer_beitrag`. Must be a string:", input_json$`hotelzimmer_beitrag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GezReport: the required field `hotelzimmer_beitrag` is missing."))
      }
      # check the required field `jaehrlicher_beitrag`
      if (!is.null(input_json$`jaehrlicher_beitrag`)) {
        if (!(is.character(input_json$`jaehrlicher_beitrag`) && length(input_json$`jaehrlicher_beitrag`) == 1)) {
          stop(paste("Error! Invalid data for `jaehrlicher_beitrag`. Must be a string:", input_json$`jaehrlicher_beitrag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GezReport: the required field `jaehrlicher_beitrag` is missing."))
      }
      # check the required field `jahr`
      if (!is.null(input_json$`jahr`)) {
        if (!(is.numeric(input_json$`jahr`) && length(input_json$`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", input_json$`jahr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GezReport: the required field `jahr` is missing."))
      }
      # check the required field `kfz_beitrag`
      if (!is.null(input_json$`kfz_beitrag`)) {
        if (!(is.character(input_json$`kfz_beitrag`) && length(input_json$`kfz_beitrag`) == 1)) {
          stop(paste("Error! Invalid data for `kfz_beitrag`. Must be a string:", input_json$`kfz_beitrag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GezReport: the required field `kfz_beitrag` is missing."))
      }
      # check the required field `monatlicher_beitrag`
      if (!is.null(input_json$`monatlicher_beitrag`)) {
        if (!(is.character(input_json$`monatlicher_beitrag`) && length(input_json$`monatlicher_beitrag`) == 1)) {
          stop(paste("Error! Invalid data for `monatlicher_beitrag`. Must be a string:", input_json$`monatlicher_beitrag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GezReport: the required field `monatlicher_beitrag` is missing."))
      }
      # check the required field `vierteljaehrlicher_beitrag`
      if (!is.null(input_json$`vierteljaehrlicher_beitrag`)) {
        if (!(is.character(input_json$`vierteljaehrlicher_beitrag`) && length(input_json$`vierteljaehrlicher_beitrag`) == 1)) {
          stop(paste("Error! Invalid data for `vierteljaehrlicher_beitrag`. Must be a string:", input_json$`vierteljaehrlicher_beitrag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GezReport: the required field `vierteljaehrlicher_beitrag` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GezReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `beitragsfreie_kfz` is null
      if (is.null(self$`beitragsfreie_kfz`)) {
        return(FALSE)
      }

      if (self$`beitragsfreie_kfz` < 0) {
        return(FALSE)
      }

      # check if the required `beitragspflichtige_kfz` is null
      if (is.null(self$`beitragspflichtige_kfz`)) {
        return(FALSE)
      }

      if (self$`beitragspflichtige_kfz` < 0) {
        return(FALSE)
      }

      # check if the required `betriebsstaetten` is null
      if (is.null(self$`betriebsstaetten`)) {
        return(FALSE)
      }

      # check if the required `hinweis` is null
      if (is.null(self$`hinweis`)) {
        return(FALSE)
      }

      # check if the required `hotelzimmer_beitrag` is null
      if (is.null(self$`hotelzimmer_beitrag`)) {
        return(FALSE)
      }

      # check if the required `jaehrlicher_beitrag` is null
      if (is.null(self$`jaehrlicher_beitrag`)) {
        return(FALSE)
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        return(FALSE)
      }

      # check if the required `kfz_beitrag` is null
      if (is.null(self$`kfz_beitrag`)) {
        return(FALSE)
      }

      # check if the required `monatlicher_beitrag` is null
      if (is.null(self$`monatlicher_beitrag`)) {
        return(FALSE)
      }

      # check if the required `vierteljaehrlicher_beitrag` is null
      if (is.null(self$`vierteljaehrlicher_beitrag`)) {
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
      # check if the required `beitragsfreie_kfz` is null
      if (is.null(self$`beitragsfreie_kfz`)) {
        invalid_fields["beitragsfreie_kfz"] <- "Non-nullable required field `beitragsfreie_kfz` cannot be null."
      }

      if (self$`beitragsfreie_kfz` < 0) {
        invalid_fields["beitragsfreie_kfz"] <- "Invalid value for `beitragsfreie_kfz`, must be bigger than or equal to 0."
      }

      # check if the required `beitragspflichtige_kfz` is null
      if (is.null(self$`beitragspflichtige_kfz`)) {
        invalid_fields["beitragspflichtige_kfz"] <- "Non-nullable required field `beitragspflichtige_kfz` cannot be null."
      }

      if (self$`beitragspflichtige_kfz` < 0) {
        invalid_fields["beitragspflichtige_kfz"] <- "Invalid value for `beitragspflichtige_kfz`, must be bigger than or equal to 0."
      }

      # check if the required `betriebsstaetten` is null
      if (is.null(self$`betriebsstaetten`)) {
        invalid_fields["betriebsstaetten"] <- "Non-nullable required field `betriebsstaetten` cannot be null."
      }

      # check if the required `hinweis` is null
      if (is.null(self$`hinweis`)) {
        invalid_fields["hinweis"] <- "Non-nullable required field `hinweis` cannot be null."
      }

      # check if the required `hotelzimmer_beitrag` is null
      if (is.null(self$`hotelzimmer_beitrag`)) {
        invalid_fields["hotelzimmer_beitrag"] <- "Non-nullable required field `hotelzimmer_beitrag` cannot be null."
      }

      # check if the required `jaehrlicher_beitrag` is null
      if (is.null(self$`jaehrlicher_beitrag`)) {
        invalid_fields["jaehrlicher_beitrag"] <- "Non-nullable required field `jaehrlicher_beitrag` cannot be null."
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        invalid_fields["jahr"] <- "Non-nullable required field `jahr` cannot be null."
      }

      # check if the required `kfz_beitrag` is null
      if (is.null(self$`kfz_beitrag`)) {
        invalid_fields["kfz_beitrag"] <- "Non-nullable required field `kfz_beitrag` cannot be null."
      }

      # check if the required `monatlicher_beitrag` is null
      if (is.null(self$`monatlicher_beitrag`)) {
        invalid_fields["monatlicher_beitrag"] <- "Non-nullable required field `monatlicher_beitrag` cannot be null."
      }

      # check if the required `vierteljaehrlicher_beitrag` is null
      if (is.null(self$`vierteljaehrlicher_beitrag`)) {
        invalid_fields["vierteljaehrlicher_beitrag"] <- "Non-nullable required field `vierteljaehrlicher_beitrag` cannot be null."
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
# GezReport$unlock()
#
## Below is an example to define the print function
# GezReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GezReport$lock()

