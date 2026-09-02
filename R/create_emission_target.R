#' Create a new CreateEmissionTarget
#'
#' @description
#' CreateEmissionTarget Class
#'
#' @docType class
#' @title CreateEmissionTarget
#' @description CreateEmissionTarget Class
#' @format An \code{R6Class} generator object
#' @field base_value  character
#' @field base_year  integer
#' @field description  character
#' @field scope  character
#' @field target_value  character
#' @field target_year  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateEmissionTarget <- R6::R6Class(
  "CreateEmissionTarget",
  public = list(
    `base_value` = NULL,
    `base_year` = NULL,
    `description` = NULL,
    `scope` = NULL,
    `target_value` = NULL,
    `target_year` = NULL,

    #' @description
    #' Initialize a new CreateEmissionTarget class.
    #'
    #' @param base_value base_value
    #' @param base_year base_year
    #' @param description description
    #' @param scope scope
    #' @param target_value target_value
    #' @param target_year target_year
    #' @param ... Other optional arguments.
    initialize = function(`base_value`, `base_year`, `description`, `scope`, `target_value`, `target_year`, ...) {
      if (!missing(`base_value`)) {
        if (!(is.character(`base_value`) && length(`base_value`) == 1)) {
          stop(paste("Error! Invalid data for `base_value`. Must be a string:", `base_value`))
        }
        self$`base_value` <- `base_value`
      }
      if (!missing(`base_year`)) {
        if (!(is.numeric(`base_year`) && length(`base_year`) == 1)) {
          stop(paste("Error! Invalid data for `base_year`. Must be an integer:", `base_year`))
        }
        self$`base_year` <- `base_year`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`scope`)) {
        if (!(is.character(`scope`) && length(`scope`) == 1)) {
          stop(paste("Error! Invalid data for `scope`. Must be a string:", `scope`))
        }
        self$`scope` <- `scope`
      }
      if (!missing(`target_value`)) {
        if (!(is.character(`target_value`) && length(`target_value`) == 1)) {
          stop(paste("Error! Invalid data for `target_value`. Must be a string:", `target_value`))
        }
        self$`target_value` <- `target_value`
      }
      if (!missing(`target_year`)) {
        if (!(is.numeric(`target_year`) && length(`target_year`) == 1)) {
          stop(paste("Error! Invalid data for `target_year`. Must be an integer:", `target_year`))
        }
        self$`target_year` <- `target_year`
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
    #' @return CreateEmissionTarget as a base R list.
    #' @examples
    #' # convert array of CreateEmissionTarget (x) to a data frame
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
    #' Convert CreateEmissionTarget to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateEmissionTargetObject <- list()
      if (!is.null(self$`base_value`)) {
        CreateEmissionTargetObject[["base_value"]] <-
          self$`base_value`
      }
      if (!is.null(self$`base_year`)) {
        CreateEmissionTargetObject[["base_year"]] <-
          self$`base_year`
      }
      if (!is.null(self$`description`)) {
        CreateEmissionTargetObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`scope`)) {
        CreateEmissionTargetObject[["scope"]] <-
          self$`scope`
      }
      if (!is.null(self$`target_value`)) {
        CreateEmissionTargetObject[["target_value"]] <-
          self$`target_value`
      }
      if (!is.null(self$`target_year`)) {
        CreateEmissionTargetObject[["target_year"]] <-
          self$`target_year`
      }
      return(CreateEmissionTargetObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateEmissionTarget
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateEmissionTarget
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`base_value`)) {
        self$`base_value` <- this_object$`base_value`
      }
      if (!is.null(this_object$`base_year`)) {
        self$`base_year` <- this_object$`base_year`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`scope`)) {
        self$`scope` <- this_object$`scope`
      }
      if (!is.null(this_object$`target_value`)) {
        self$`target_value` <- this_object$`target_value`
      }
      if (!is.null(this_object$`target_year`)) {
        self$`target_year` <- this_object$`target_year`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateEmissionTarget in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateEmissionTarget
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateEmissionTarget
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`base_value` <- this_object$`base_value`
      self$`base_year` <- this_object$`base_year`
      self$`description` <- this_object$`description`
      self$`scope` <- this_object$`scope`
      self$`target_value` <- this_object$`target_value`
      self$`target_year` <- this_object$`target_year`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateEmissionTarget and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `base_value`
      if (!is.null(input_json$`base_value`)) {
        if (!(is.character(input_json$`base_value`) && length(input_json$`base_value`) == 1)) {
          stop(paste("Error! Invalid data for `base_value`. Must be a string:", input_json$`base_value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateEmissionTarget: the required field `base_value` is missing."))
      }
      # check the required field `base_year`
      if (!is.null(input_json$`base_year`)) {
        if (!(is.numeric(input_json$`base_year`) && length(input_json$`base_year`) == 1)) {
          stop(paste("Error! Invalid data for `base_year`. Must be an integer:", input_json$`base_year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateEmissionTarget: the required field `base_year` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateEmissionTarget: the required field `description` is missing."))
      }
      # check the required field `scope`
      if (!is.null(input_json$`scope`)) {
        if (!(is.character(input_json$`scope`) && length(input_json$`scope`) == 1)) {
          stop(paste("Error! Invalid data for `scope`. Must be a string:", input_json$`scope`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateEmissionTarget: the required field `scope` is missing."))
      }
      # check the required field `target_value`
      if (!is.null(input_json$`target_value`)) {
        if (!(is.character(input_json$`target_value`) && length(input_json$`target_value`) == 1)) {
          stop(paste("Error! Invalid data for `target_value`. Must be a string:", input_json$`target_value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateEmissionTarget: the required field `target_value` is missing."))
      }
      # check the required field `target_year`
      if (!is.null(input_json$`target_year`)) {
        if (!(is.numeric(input_json$`target_year`) && length(input_json$`target_year`) == 1)) {
          stop(paste("Error! Invalid data for `target_year`. Must be an integer:", input_json$`target_year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateEmissionTarget: the required field `target_year` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateEmissionTarget
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `base_value` is null
      if (is.null(self$`base_value`)) {
        return(FALSE)
      }

      # check if the required `base_year` is null
      if (is.null(self$`base_year`)) {
        return(FALSE)
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        return(FALSE)
      }

      # check if the required `scope` is null
      if (is.null(self$`scope`)) {
        return(FALSE)
      }

      # check if the required `target_value` is null
      if (is.null(self$`target_value`)) {
        return(FALSE)
      }

      # check if the required `target_year` is null
      if (is.null(self$`target_year`)) {
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
      # check if the required `base_value` is null
      if (is.null(self$`base_value`)) {
        invalid_fields["base_value"] <- "Non-nullable required field `base_value` cannot be null."
      }

      # check if the required `base_year` is null
      if (is.null(self$`base_year`)) {
        invalid_fields["base_year"] <- "Non-nullable required field `base_year` cannot be null."
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      # check if the required `scope` is null
      if (is.null(self$`scope`)) {
        invalid_fields["scope"] <- "Non-nullable required field `scope` cannot be null."
      }

      # check if the required `target_value` is null
      if (is.null(self$`target_value`)) {
        invalid_fields["target_value"] <- "Non-nullable required field `target_value` cannot be null."
      }

      # check if the required `target_year` is null
      if (is.null(self$`target_year`)) {
        invalid_fields["target_year"] <- "Non-nullable required field `target_year` cannot be null."
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
# CreateEmissionTarget$unlock()
#
## Below is an example to define the print function
# CreateEmissionTarget$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateEmissionTarget$lock()

