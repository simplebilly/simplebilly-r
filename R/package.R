#' Create a new Package
#'
#' @description
#' Package Class
#'
#' @docType class
#' @title Package
#' @description Package Class
#' @format An \code{R6Class} generator object
#' @field description  character [optional]
#' @field height_cm  numeric [optional]
#' @field length_cm  numeric [optional]
#' @field reference  character [optional]
#' @field weight_kg  numeric
#' @field width_cm  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Package <- R6::R6Class(
  "Package",
  public = list(
    `description` = NULL,
    `height_cm` = NULL,
    `length_cm` = NULL,
    `reference` = NULL,
    `weight_kg` = NULL,
    `width_cm` = NULL,

    #' @description
    #' Initialize a new Package class.
    #'
    #' @param weight_kg weight_kg
    #' @param description description
    #' @param height_cm height_cm
    #' @param length_cm length_cm
    #' @param reference reference
    #' @param width_cm width_cm
    #' @param ... Other optional arguments.
    initialize = function(`weight_kg`, `description` = NULL, `height_cm` = NULL, `length_cm` = NULL, `reference` = NULL, `width_cm` = NULL, ...) {
      if (!missing(`weight_kg`)) {
        if (!(is.numeric(`weight_kg`) && length(`weight_kg`) == 1)) {
          stop(paste("Error! Invalid data for `weight_kg`. Must be a number:", `weight_kg`))
        }
        self$`weight_kg` <- `weight_kg`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`height_cm`)) {
        if (!(is.numeric(`height_cm`) && length(`height_cm`) == 1)) {
          stop(paste("Error! Invalid data for `height_cm`. Must be a number:", `height_cm`))
        }
        self$`height_cm` <- `height_cm`
      }
      if (!is.null(`length_cm`)) {
        if (!(is.numeric(`length_cm`) && length(`length_cm`) == 1)) {
          stop(paste("Error! Invalid data for `length_cm`. Must be a number:", `length_cm`))
        }
        self$`length_cm` <- `length_cm`
      }
      if (!is.null(`reference`)) {
        if (!(is.character(`reference`) && length(`reference`) == 1)) {
          stop(paste("Error! Invalid data for `reference`. Must be a string:", `reference`))
        }
        self$`reference` <- `reference`
      }
      if (!is.null(`width_cm`)) {
        if (!(is.numeric(`width_cm`) && length(`width_cm`) == 1)) {
          stop(paste("Error! Invalid data for `width_cm`. Must be a number:", `width_cm`))
        }
        self$`width_cm` <- `width_cm`
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
    #' @return Package as a base R list.
    #' @examples
    #' # convert array of Package (x) to a data frame
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
    #' Convert Package to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PackageObject <- list()
      if (!is.null(self$`description`)) {
        PackageObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`height_cm`)) {
        PackageObject[["height_cm"]] <-
          self$`height_cm`
      }
      if (!is.null(self$`length_cm`)) {
        PackageObject[["length_cm"]] <-
          self$`length_cm`
      }
      if (!is.null(self$`reference`)) {
        PackageObject[["reference"]] <-
          self$`reference`
      }
      if (!is.null(self$`weight_kg`)) {
        PackageObject[["weight_kg"]] <-
          self$`weight_kg`
      }
      if (!is.null(self$`width_cm`)) {
        PackageObject[["width_cm"]] <-
          self$`width_cm`
      }
      return(PackageObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Package
    #'
    #' @param input_json the JSON input
    #' @return the instance of Package
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`height_cm`)) {
        self$`height_cm` <- this_object$`height_cm`
      }
      if (!is.null(this_object$`length_cm`)) {
        self$`length_cm` <- this_object$`length_cm`
      }
      if (!is.null(this_object$`reference`)) {
        self$`reference` <- this_object$`reference`
      }
      if (!is.null(this_object$`weight_kg`)) {
        self$`weight_kg` <- this_object$`weight_kg`
      }
      if (!is.null(this_object$`width_cm`)) {
        self$`width_cm` <- this_object$`width_cm`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Package in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Package
    #'
    #' @param input_json the JSON input
    #' @return the instance of Package
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`height_cm` <- this_object$`height_cm`
      self$`length_cm` <- this_object$`length_cm`
      self$`reference` <- this_object$`reference`
      self$`weight_kg` <- this_object$`weight_kg`
      self$`width_cm` <- this_object$`width_cm`
      self
    },

    #' @description
    #' Validate JSON input with respect to Package and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `weight_kg`
      if (!is.null(input_json$`weight_kg`)) {
        if (!(is.numeric(input_json$`weight_kg`) && length(input_json$`weight_kg`) == 1)) {
          stop(paste("Error! Invalid data for `weight_kg`. Must be a number:", input_json$`weight_kg`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Package: the required field `weight_kg` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Package
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
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
# Package$unlock()
#
## Below is an example to define the print function
# Package$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Package$lock()

