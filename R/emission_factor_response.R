#' Create a new EmissionFactorResponse
#'
#' @description
#' EmissionFactorResponse Class
#'
#' @docType class
#' @title EmissionFactorResponse
#' @description EmissionFactorResponse Class
#' @format An \code{R6Class} generator object
#' @field category_id  character
#' @field kg_co2e_per_unit  numeric
#' @field name_de  character
#' @field source  character
#' @field unit  character
#' @field version  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EmissionFactorResponse <- R6::R6Class(
  "EmissionFactorResponse",
  public = list(
    `category_id` = NULL,
    `kg_co2e_per_unit` = NULL,
    `name_de` = NULL,
    `source` = NULL,
    `unit` = NULL,
    `version` = NULL,

    #' @description
    #' Initialize a new EmissionFactorResponse class.
    #'
    #' @param category_id category_id
    #' @param kg_co2e_per_unit kg_co2e_per_unit
    #' @param name_de name_de
    #' @param source source
    #' @param unit unit
    #' @param version version
    #' @param ... Other optional arguments.
    initialize = function(`category_id`, `kg_co2e_per_unit`, `name_de`, `source`, `unit`, `version`, ...) {
      if (!missing(`category_id`)) {
        if (!(is.character(`category_id`) && length(`category_id`) == 1)) {
          stop(paste("Error! Invalid data for `category_id`. Must be a string:", `category_id`))
        }
        self$`category_id` <- `category_id`
      }
      if (!missing(`kg_co2e_per_unit`)) {
        if (!(is.numeric(`kg_co2e_per_unit`) && length(`kg_co2e_per_unit`) == 1)) {
          stop(paste("Error! Invalid data for `kg_co2e_per_unit`. Must be a number:", `kg_co2e_per_unit`))
        }
        self$`kg_co2e_per_unit` <- `kg_co2e_per_unit`
      }
      if (!missing(`name_de`)) {
        if (!(is.character(`name_de`) && length(`name_de`) == 1)) {
          stop(paste("Error! Invalid data for `name_de`. Must be a string:", `name_de`))
        }
        self$`name_de` <- `name_de`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`unit`)) {
        if (!(is.character(`unit`) && length(`unit`) == 1)) {
          stop(paste("Error! Invalid data for `unit`. Must be a string:", `unit`))
        }
        self$`unit` <- `unit`
      }
      if (!missing(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
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
    #' @return EmissionFactorResponse as a base R list.
    #' @examples
    #' # convert array of EmissionFactorResponse (x) to a data frame
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
    #' Convert EmissionFactorResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EmissionFactorResponseObject <- list()
      if (!is.null(self$`category_id`)) {
        EmissionFactorResponseObject[["category_id"]] <-
          self$`category_id`
      }
      if (!is.null(self$`kg_co2e_per_unit`)) {
        EmissionFactorResponseObject[["kg_co2e_per_unit"]] <-
          self$`kg_co2e_per_unit`
      }
      if (!is.null(self$`name_de`)) {
        EmissionFactorResponseObject[["name_de"]] <-
          self$`name_de`
      }
      if (!is.null(self$`source`)) {
        EmissionFactorResponseObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`unit`)) {
        EmissionFactorResponseObject[["unit"]] <-
          self$`unit`
      }
      if (!is.null(self$`version`)) {
        EmissionFactorResponseObject[["version"]] <-
          self$`version`
      }
      return(EmissionFactorResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of EmissionFactorResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmissionFactorResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`category_id`)) {
        self$`category_id` <- this_object$`category_id`
      }
      if (!is.null(this_object$`kg_co2e_per_unit`)) {
        self$`kg_co2e_per_unit` <- this_object$`kg_co2e_per_unit`
      }
      if (!is.null(this_object$`name_de`)) {
        self$`name_de` <- this_object$`name_de`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`unit`)) {
        self$`unit` <- this_object$`unit`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EmissionFactorResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EmissionFactorResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmissionFactorResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`category_id` <- this_object$`category_id`
      self$`kg_co2e_per_unit` <- this_object$`kg_co2e_per_unit`
      self$`name_de` <- this_object$`name_de`
      self$`source` <- this_object$`source`
      self$`unit` <- this_object$`unit`
      self$`version` <- this_object$`version`
      self
    },

    #' @description
    #' Validate JSON input with respect to EmissionFactorResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `category_id`
      if (!is.null(input_json$`category_id`)) {
        if (!(is.character(input_json$`category_id`) && length(input_json$`category_id`) == 1)) {
          stop(paste("Error! Invalid data for `category_id`. Must be a string:", input_json$`category_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionFactorResponse: the required field `category_id` is missing."))
      }
      # check the required field `kg_co2e_per_unit`
      if (!is.null(input_json$`kg_co2e_per_unit`)) {
        if (!(is.numeric(input_json$`kg_co2e_per_unit`) && length(input_json$`kg_co2e_per_unit`) == 1)) {
          stop(paste("Error! Invalid data for `kg_co2e_per_unit`. Must be a number:", input_json$`kg_co2e_per_unit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionFactorResponse: the required field `kg_co2e_per_unit` is missing."))
      }
      # check the required field `name_de`
      if (!is.null(input_json$`name_de`)) {
        if (!(is.character(input_json$`name_de`) && length(input_json$`name_de`) == 1)) {
          stop(paste("Error! Invalid data for `name_de`. Must be a string:", input_json$`name_de`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionFactorResponse: the required field `name_de` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionFactorResponse: the required field `source` is missing."))
      }
      # check the required field `unit`
      if (!is.null(input_json$`unit`)) {
        if (!(is.character(input_json$`unit`) && length(input_json$`unit`) == 1)) {
          stop(paste("Error! Invalid data for `unit`. Must be a string:", input_json$`unit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionFactorResponse: the required field `unit` is missing."))
      }
      # check the required field `version`
      if (!is.null(input_json$`version`)) {
        if (!(is.character(input_json$`version`) && length(input_json$`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", input_json$`version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionFactorResponse: the required field `version` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EmissionFactorResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `category_id` is null
      if (is.null(self$`category_id`)) {
        return(FALSE)
      }

      # check if the required `kg_co2e_per_unit` is null
      if (is.null(self$`kg_co2e_per_unit`)) {
        return(FALSE)
      }

      # check if the required `name_de` is null
      if (is.null(self$`name_de`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `unit` is null
      if (is.null(self$`unit`)) {
        return(FALSE)
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
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
      # check if the required `category_id` is null
      if (is.null(self$`category_id`)) {
        invalid_fields["category_id"] <- "Non-nullable required field `category_id` cannot be null."
      }

      # check if the required `kg_co2e_per_unit` is null
      if (is.null(self$`kg_co2e_per_unit`)) {
        invalid_fields["kg_co2e_per_unit"] <- "Non-nullable required field `kg_co2e_per_unit` cannot be null."
      }

      # check if the required `name_de` is null
      if (is.null(self$`name_de`)) {
        invalid_fields["name_de"] <- "Non-nullable required field `name_de` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `unit` is null
      if (is.null(self$`unit`)) {
        invalid_fields["unit"] <- "Non-nullable required field `unit` cannot be null."
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
        invalid_fields["version"] <- "Non-nullable required field `version` cannot be null."
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
# EmissionFactorResponse$unlock()
#
## Below is an example to define the print function
# EmissionFactorResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EmissionFactorResponse$lock()

