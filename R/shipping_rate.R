#' Create a new ShippingRate
#'
#' @description
#' ShippingRate Class
#'
#' @docType class
#' @title ShippingRate
#' @description ShippingRate Class
#' @format An \code{R6Class} generator object
#' @field breakdown  character [optional]
#' @field carrier  character
#' @field cross_border_surcharge  character [optional]
#' @field destination_country ISO-2 code of destination country. character
#' @field estimated_days  integer [optional]
#' @field from_api True when the rate was obtained via an API call rather than calculation. character
#' @field insured_value  character [optional]
#' @field island_surcharge  character [optional]
#' @field origin_country ISO-2 code of origin country. character
#' @field rate  character
#' @field service  character
#' @field volume_discount  character [optional]
#' @field weight_kg  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ShippingRate <- R6::R6Class(
  "ShippingRate",
  public = list(
    `breakdown` = NULL,
    `carrier` = NULL,
    `cross_border_surcharge` = NULL,
    `destination_country` = NULL,
    `estimated_days` = NULL,
    `from_api` = NULL,
    `insured_value` = NULL,
    `island_surcharge` = NULL,
    `origin_country` = NULL,
    `rate` = NULL,
    `service` = NULL,
    `volume_discount` = NULL,
    `weight_kg` = NULL,

    #' @description
    #' Initialize a new ShippingRate class.
    #'
    #' @param carrier carrier
    #' @param destination_country ISO-2 code of destination country.
    #' @param from_api True when the rate was obtained via an API call rather than calculation.
    #' @param origin_country ISO-2 code of origin country.
    #' @param rate rate
    #' @param service service
    #' @param weight_kg weight_kg
    #' @param breakdown breakdown
    #' @param cross_border_surcharge cross_border_surcharge
    #' @param estimated_days estimated_days
    #' @param insured_value insured_value
    #' @param island_surcharge island_surcharge
    #' @param volume_discount volume_discount
    #' @param ... Other optional arguments.
    initialize = function(`carrier`, `destination_country`, `from_api`, `origin_country`, `rate`, `service`, `weight_kg`, `breakdown` = NULL, `cross_border_surcharge` = NULL, `estimated_days` = NULL, `insured_value` = NULL, `island_surcharge` = NULL, `volume_discount` = NULL, ...) {
      if (!missing(`carrier`)) {
        if (!(is.character(`carrier`) && length(`carrier`) == 1)) {
          stop(paste("Error! Invalid data for `carrier`. Must be a string:", `carrier`))
        }
        self$`carrier` <- `carrier`
      }
      if (!missing(`destination_country`)) {
        if (!(is.character(`destination_country`) && length(`destination_country`) == 1)) {
          stop(paste("Error! Invalid data for `destination_country`. Must be a string:", `destination_country`))
        }
        self$`destination_country` <- `destination_country`
      }
      if (!missing(`from_api`)) {
        if (!(is.logical(`from_api`) && length(`from_api`) == 1)) {
          stop(paste("Error! Invalid data for `from_api`. Must be a boolean:", `from_api`))
        }
        self$`from_api` <- `from_api`
      }
      if (!missing(`origin_country`)) {
        if (!(is.character(`origin_country`) && length(`origin_country`) == 1)) {
          stop(paste("Error! Invalid data for `origin_country`. Must be a string:", `origin_country`))
        }
        self$`origin_country` <- `origin_country`
      }
      if (!missing(`rate`)) {
        if (!(is.character(`rate`) && length(`rate`) == 1)) {
          stop(paste("Error! Invalid data for `rate`. Must be a string:", `rate`))
        }
        self$`rate` <- `rate`
      }
      if (!missing(`service`)) {
        if (!(is.character(`service`) && length(`service`) == 1)) {
          stop(paste("Error! Invalid data for `service`. Must be a string:", `service`))
        }
        self$`service` <- `service`
      }
      if (!missing(`weight_kg`)) {
        if (!(is.numeric(`weight_kg`) && length(`weight_kg`) == 1)) {
          stop(paste("Error! Invalid data for `weight_kg`. Must be a number:", `weight_kg`))
        }
        self$`weight_kg` <- `weight_kg`
      }
      if (!is.null(`breakdown`)) {
        if (!(is.character(`breakdown`) && length(`breakdown`) == 1)) {
          stop(paste("Error! Invalid data for `breakdown`. Must be a string:", `breakdown`))
        }
        self$`breakdown` <- `breakdown`
      }
      if (!is.null(`cross_border_surcharge`)) {
        if (!(is.character(`cross_border_surcharge`) && length(`cross_border_surcharge`) == 1)) {
          stop(paste("Error! Invalid data for `cross_border_surcharge`. Must be a string:", `cross_border_surcharge`))
        }
        self$`cross_border_surcharge` <- `cross_border_surcharge`
      }
      if (!is.null(`estimated_days`)) {
        if (!(is.numeric(`estimated_days`) && length(`estimated_days`) == 1)) {
          stop(paste("Error! Invalid data for `estimated_days`. Must be an integer:", `estimated_days`))
        }
        self$`estimated_days` <- `estimated_days`
      }
      if (!is.null(`insured_value`)) {
        if (!(is.character(`insured_value`) && length(`insured_value`) == 1)) {
          stop(paste("Error! Invalid data for `insured_value`. Must be a string:", `insured_value`))
        }
        self$`insured_value` <- `insured_value`
      }
      if (!is.null(`island_surcharge`)) {
        if (!(is.character(`island_surcharge`) && length(`island_surcharge`) == 1)) {
          stop(paste("Error! Invalid data for `island_surcharge`. Must be a string:", `island_surcharge`))
        }
        self$`island_surcharge` <- `island_surcharge`
      }
      if (!is.null(`volume_discount`)) {
        if (!(is.character(`volume_discount`) && length(`volume_discount`) == 1)) {
          stop(paste("Error! Invalid data for `volume_discount`. Must be a string:", `volume_discount`))
        }
        self$`volume_discount` <- `volume_discount`
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
    #' @return ShippingRate as a base R list.
    #' @examples
    #' # convert array of ShippingRate (x) to a data frame
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
    #' Convert ShippingRate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShippingRateObject <- list()
      if (!is.null(self$`breakdown`)) {
        ShippingRateObject[["breakdown"]] <-
          self$`breakdown`
      }
      if (!is.null(self$`carrier`)) {
        ShippingRateObject[["carrier"]] <-
          self$`carrier`
      }
      if (!is.null(self$`cross_border_surcharge`)) {
        ShippingRateObject[["cross_border_surcharge"]] <-
          self$`cross_border_surcharge`
      }
      if (!is.null(self$`destination_country`)) {
        ShippingRateObject[["destination_country"]] <-
          self$`destination_country`
      }
      if (!is.null(self$`estimated_days`)) {
        ShippingRateObject[["estimated_days"]] <-
          self$`estimated_days`
      }
      if (!is.null(self$`from_api`)) {
        ShippingRateObject[["from_api"]] <-
          self$`from_api`
      }
      if (!is.null(self$`insured_value`)) {
        ShippingRateObject[["insured_value"]] <-
          self$`insured_value`
      }
      if (!is.null(self$`island_surcharge`)) {
        ShippingRateObject[["island_surcharge"]] <-
          self$`island_surcharge`
      }
      if (!is.null(self$`origin_country`)) {
        ShippingRateObject[["origin_country"]] <-
          self$`origin_country`
      }
      if (!is.null(self$`rate`)) {
        ShippingRateObject[["rate"]] <-
          self$`rate`
      }
      if (!is.null(self$`service`)) {
        ShippingRateObject[["service"]] <-
          self$`service`
      }
      if (!is.null(self$`volume_discount`)) {
        ShippingRateObject[["volume_discount"]] <-
          self$`volume_discount`
      }
      if (!is.null(self$`weight_kg`)) {
        ShippingRateObject[["weight_kg"]] <-
          self$`weight_kg`
      }
      return(ShippingRateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ShippingRate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShippingRate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`breakdown`)) {
        self$`breakdown` <- this_object$`breakdown`
      }
      if (!is.null(this_object$`carrier`)) {
        self$`carrier` <- this_object$`carrier`
      }
      if (!is.null(this_object$`cross_border_surcharge`)) {
        self$`cross_border_surcharge` <- this_object$`cross_border_surcharge`
      }
      if (!is.null(this_object$`destination_country`)) {
        self$`destination_country` <- this_object$`destination_country`
      }
      if (!is.null(this_object$`estimated_days`)) {
        self$`estimated_days` <- this_object$`estimated_days`
      }
      if (!is.null(this_object$`from_api`)) {
        self$`from_api` <- this_object$`from_api`
      }
      if (!is.null(this_object$`insured_value`)) {
        self$`insured_value` <- this_object$`insured_value`
      }
      if (!is.null(this_object$`island_surcharge`)) {
        self$`island_surcharge` <- this_object$`island_surcharge`
      }
      if (!is.null(this_object$`origin_country`)) {
        self$`origin_country` <- this_object$`origin_country`
      }
      if (!is.null(this_object$`rate`)) {
        self$`rate` <- this_object$`rate`
      }
      if (!is.null(this_object$`service`)) {
        self$`service` <- this_object$`service`
      }
      if (!is.null(this_object$`volume_discount`)) {
        self$`volume_discount` <- this_object$`volume_discount`
      }
      if (!is.null(this_object$`weight_kg`)) {
        self$`weight_kg` <- this_object$`weight_kg`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ShippingRate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ShippingRate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShippingRate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`breakdown` <- this_object$`breakdown`
      self$`carrier` <- this_object$`carrier`
      self$`cross_border_surcharge` <- this_object$`cross_border_surcharge`
      self$`destination_country` <- this_object$`destination_country`
      self$`estimated_days` <- this_object$`estimated_days`
      self$`from_api` <- this_object$`from_api`
      self$`insured_value` <- this_object$`insured_value`
      self$`island_surcharge` <- this_object$`island_surcharge`
      self$`origin_country` <- this_object$`origin_country`
      self$`rate` <- this_object$`rate`
      self$`service` <- this_object$`service`
      self$`volume_discount` <- this_object$`volume_discount`
      self$`weight_kg` <- this_object$`weight_kg`
      self
    },

    #' @description
    #' Validate JSON input with respect to ShippingRate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `carrier`
      if (!is.null(input_json$`carrier`)) {
        if (!(is.character(input_json$`carrier`) && length(input_json$`carrier`) == 1)) {
          stop(paste("Error! Invalid data for `carrier`. Must be a string:", input_json$`carrier`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShippingRate: the required field `carrier` is missing."))
      }
      # check the required field `destination_country`
      if (!is.null(input_json$`destination_country`)) {
        if (!(is.character(input_json$`destination_country`) && length(input_json$`destination_country`) == 1)) {
          stop(paste("Error! Invalid data for `destination_country`. Must be a string:", input_json$`destination_country`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShippingRate: the required field `destination_country` is missing."))
      }
      # check the required field `from_api`
      if (!is.null(input_json$`from_api`)) {
        if (!(is.logical(input_json$`from_api`) && length(input_json$`from_api`) == 1)) {
          stop(paste("Error! Invalid data for `from_api`. Must be a boolean:", input_json$`from_api`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShippingRate: the required field `from_api` is missing."))
      }
      # check the required field `origin_country`
      if (!is.null(input_json$`origin_country`)) {
        if (!(is.character(input_json$`origin_country`) && length(input_json$`origin_country`) == 1)) {
          stop(paste("Error! Invalid data for `origin_country`. Must be a string:", input_json$`origin_country`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShippingRate: the required field `origin_country` is missing."))
      }
      # check the required field `rate`
      if (!is.null(input_json$`rate`)) {
        if (!(is.character(input_json$`rate`) && length(input_json$`rate`) == 1)) {
          stop(paste("Error! Invalid data for `rate`. Must be a string:", input_json$`rate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShippingRate: the required field `rate` is missing."))
      }
      # check the required field `service`
      if (!is.null(input_json$`service`)) {
        if (!(is.character(input_json$`service`) && length(input_json$`service`) == 1)) {
          stop(paste("Error! Invalid data for `service`. Must be a string:", input_json$`service`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShippingRate: the required field `service` is missing."))
      }
      # check the required field `weight_kg`
      if (!is.null(input_json$`weight_kg`)) {
        if (!(is.numeric(input_json$`weight_kg`) && length(input_json$`weight_kg`) == 1)) {
          stop(paste("Error! Invalid data for `weight_kg`. Must be a number:", input_json$`weight_kg`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShippingRate: the required field `weight_kg` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ShippingRate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `carrier` is null
      if (is.null(self$`carrier`)) {
        return(FALSE)
      }

      # check if the required `destination_country` is null
      if (is.null(self$`destination_country`)) {
        return(FALSE)
      }

      if (self$`estimated_days` < 0) {
        return(FALSE)
      }

      # check if the required `from_api` is null
      if (is.null(self$`from_api`)) {
        return(FALSE)
      }

      # check if the required `origin_country` is null
      if (is.null(self$`origin_country`)) {
        return(FALSE)
      }

      # check if the required `rate` is null
      if (is.null(self$`rate`)) {
        return(FALSE)
      }

      # check if the required `service` is null
      if (is.null(self$`service`)) {
        return(FALSE)
      }

      # check if the required `weight_kg` is null
      if (is.null(self$`weight_kg`)) {
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
      # check if the required `carrier` is null
      if (is.null(self$`carrier`)) {
        invalid_fields["carrier"] <- "Non-nullable required field `carrier` cannot be null."
      }

      # check if the required `destination_country` is null
      if (is.null(self$`destination_country`)) {
        invalid_fields["destination_country"] <- "Non-nullable required field `destination_country` cannot be null."
      }

      if (self$`estimated_days` < 0) {
        invalid_fields["estimated_days"] <- "Invalid value for `estimated_days`, must be bigger than or equal to 0."
      }

      # check if the required `from_api` is null
      if (is.null(self$`from_api`)) {
        invalid_fields["from_api"] <- "Non-nullable required field `from_api` cannot be null."
      }

      # check if the required `origin_country` is null
      if (is.null(self$`origin_country`)) {
        invalid_fields["origin_country"] <- "Non-nullable required field `origin_country` cannot be null."
      }

      # check if the required `rate` is null
      if (is.null(self$`rate`)) {
        invalid_fields["rate"] <- "Non-nullable required field `rate` cannot be null."
      }

      # check if the required `service` is null
      if (is.null(self$`service`)) {
        invalid_fields["service"] <- "Non-nullable required field `service` cannot be null."
      }

      # check if the required `weight_kg` is null
      if (is.null(self$`weight_kg`)) {
        invalid_fields["weight_kg"] <- "Non-nullable required field `weight_kg` cannot be null."
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
# ShippingRate$unlock()
#
## Below is an example to define the print function
# ShippingRate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ShippingRate$lock()

