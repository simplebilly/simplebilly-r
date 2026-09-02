#' Create a new TaxRateCreate
#'
#' @description
#' TaxRateCreate Class
#'
#' @docType class
#' @title TaxRateCreate
#' @description TaxRateCreate Class
#' @format An \code{R6Class} generator object
#' @field countryCode ISO 3166-1 alpha-2 country code. character
#' @field effectiveFrom Date this rate took effect; `None` = not date-bound. character [optional]
#' @field isDefault Default rate for the country (one per country); fallback for lookups when no dated rate applies. character
#' @field name Human name, e.g. \"VAT\". character
#' @field ratePercent Rate in hundredths of a percent: 1900 = 19.00\%. integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TaxRateCreate <- R6::R6Class(
  "TaxRateCreate",
  public = list(
    `countryCode` = NULL,
    `effectiveFrom` = NULL,
    `isDefault` = NULL,
    `name` = NULL,
    `ratePercent` = NULL,

    #' @description
    #' Initialize a new TaxRateCreate class.
    #'
    #' @param countryCode ISO 3166-1 alpha-2 country code.
    #' @param isDefault Default rate for the country (one per country); fallback for lookups when no dated rate applies.
    #' @param name Human name, e.g. \"VAT\".
    #' @param ratePercent Rate in hundredths of a percent: 1900 = 19.00\%.
    #' @param effectiveFrom Date this rate took effect; `None` = not date-bound.
    #' @param ... Other optional arguments.
    initialize = function(`countryCode`, `isDefault`, `name`, `ratePercent`, `effectiveFrom` = NULL, ...) {
      if (!missing(`countryCode`)) {
        if (!(is.character(`countryCode`) && length(`countryCode`) == 1)) {
          stop(paste("Error! Invalid data for `countryCode`. Must be a string:", `countryCode`))
        }
        self$`countryCode` <- `countryCode`
      }
      if (!missing(`isDefault`)) {
        if (!(is.logical(`isDefault`) && length(`isDefault`) == 1)) {
          stop(paste("Error! Invalid data for `isDefault`. Must be a boolean:", `isDefault`))
        }
        self$`isDefault` <- `isDefault`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`ratePercent`)) {
        if (!(is.numeric(`ratePercent`) && length(`ratePercent`) == 1)) {
          stop(paste("Error! Invalid data for `ratePercent`. Must be an integer:", `ratePercent`))
        }
        self$`ratePercent` <- `ratePercent`
      }
      if (!is.null(`effectiveFrom`)) {
        if (!is.character(`effectiveFrom`)) {
          stop(paste("Error! Invalid data for `effectiveFrom`. Must be a string:", `effectiveFrom`))
        }
        self$`effectiveFrom` <- `effectiveFrom`
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
    #' @return TaxRateCreate as a base R list.
    #' @examples
    #' # convert array of TaxRateCreate (x) to a data frame
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
    #' Convert TaxRateCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TaxRateCreateObject <- list()
      if (!is.null(self$`countryCode`)) {
        TaxRateCreateObject[["countryCode"]] <-
          self$`countryCode`
      }
      if (!is.null(self$`effectiveFrom`)) {
        TaxRateCreateObject[["effectiveFrom"]] <-
          self$`effectiveFrom`
      }
      if (!is.null(self$`isDefault`)) {
        TaxRateCreateObject[["isDefault"]] <-
          self$`isDefault`
      }
      if (!is.null(self$`name`)) {
        TaxRateCreateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`ratePercent`)) {
        TaxRateCreateObject[["ratePercent"]] <-
          self$`ratePercent`
      }
      return(TaxRateCreateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TaxRateCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of TaxRateCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`countryCode`)) {
        self$`countryCode` <- this_object$`countryCode`
      }
      if (!is.null(this_object$`effectiveFrom`)) {
        self$`effectiveFrom` <- this_object$`effectiveFrom`
      }
      if (!is.null(this_object$`isDefault`)) {
        self$`isDefault` <- this_object$`isDefault`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`ratePercent`)) {
        self$`ratePercent` <- this_object$`ratePercent`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TaxRateCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TaxRateCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of TaxRateCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`countryCode` <- this_object$`countryCode`
      self$`effectiveFrom` <- this_object$`effectiveFrom`
      self$`isDefault` <- this_object$`isDefault`
      self$`name` <- this_object$`name`
      self$`ratePercent` <- this_object$`ratePercent`
      self
    },

    #' @description
    #' Validate JSON input with respect to TaxRateCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `countryCode`
      if (!is.null(input_json$`countryCode`)) {
        if (!(is.character(input_json$`countryCode`) && length(input_json$`countryCode`) == 1)) {
          stop(paste("Error! Invalid data for `countryCode`. Must be a string:", input_json$`countryCode`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TaxRateCreate: the required field `countryCode` is missing."))
      }
      # check the required field `isDefault`
      if (!is.null(input_json$`isDefault`)) {
        if (!(is.logical(input_json$`isDefault`) && length(input_json$`isDefault`) == 1)) {
          stop(paste("Error! Invalid data for `isDefault`. Must be a boolean:", input_json$`isDefault`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TaxRateCreate: the required field `isDefault` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TaxRateCreate: the required field `name` is missing."))
      }
      # check the required field `ratePercent`
      if (!is.null(input_json$`ratePercent`)) {
        if (!(is.numeric(input_json$`ratePercent`) && length(input_json$`ratePercent`) == 1)) {
          stop(paste("Error! Invalid data for `ratePercent`. Must be an integer:", input_json$`ratePercent`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TaxRateCreate: the required field `ratePercent` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TaxRateCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `countryCode` is null
      if (is.null(self$`countryCode`)) {
        return(FALSE)
      }

      # check if the required `isDefault` is null
      if (is.null(self$`isDefault`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `ratePercent` is null
      if (is.null(self$`ratePercent`)) {
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
      # check if the required `countryCode` is null
      if (is.null(self$`countryCode`)) {
        invalid_fields["countryCode"] <- "Non-nullable required field `countryCode` cannot be null."
      }

      # check if the required `isDefault` is null
      if (is.null(self$`isDefault`)) {
        invalid_fields["isDefault"] <- "Non-nullable required field `isDefault` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `ratePercent` is null
      if (is.null(self$`ratePercent`)) {
        invalid_fields["ratePercent"] <- "Non-nullable required field `ratePercent` cannot be null."
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
# TaxRateCreate$unlock()
#
## Below is an example to define the print function
# TaxRateCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TaxRateCreate$lock()

