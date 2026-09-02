#' Create a new EmissionTarget
#'
#' @description
#' EmissionTarget Class
#'
#' @docType class
#' @title EmissionTarget
#' @description EmissionTarget Class
#' @format An \code{R6Class} generator object
#' @field baseValue  character
#' @field baseYear tCO2e in the base year (actuals). integer
#' @field description Transition-plan narrative (ESRS E1-1 light), may be empty. character
#' @field scope \"total\" | \"1\" | \"2\" | \"3\". \link{EmissionTargetScope}
#' @field targetValue  character
#' @field targetYear tCO2e target for the target year. integer
#' @field updatedAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EmissionTarget <- R6::R6Class(
  "EmissionTarget",
  public = list(
    `baseValue` = NULL,
    `baseYear` = NULL,
    `description` = NULL,
    `scope` = NULL,
    `targetValue` = NULL,
    `targetYear` = NULL,
    `updatedAt` = NULL,

    #' @description
    #' Initialize a new EmissionTarget class.
    #'
    #' @param baseValue baseValue
    #' @param baseYear tCO2e in the base year (actuals).
    #' @param description Transition-plan narrative (ESRS E1-1 light), may be empty.
    #' @param scope \"total\" | \"1\" | \"2\" | \"3\".
    #' @param targetValue targetValue
    #' @param targetYear tCO2e target for the target year.
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    initialize = function(`baseValue`, `baseYear`, `description`, `scope`, `targetValue`, `targetYear`, `updatedAt` = NULL, ...) {
      if (!missing(`baseValue`)) {
        if (!(is.character(`baseValue`) && length(`baseValue`) == 1)) {
          stop(paste("Error! Invalid data for `baseValue`. Must be a string:", `baseValue`))
        }
        self$`baseValue` <- `baseValue`
      }
      if (!missing(`baseYear`)) {
        if (!(is.numeric(`baseYear`) && length(`baseYear`) == 1)) {
          stop(paste("Error! Invalid data for `baseYear`. Must be an integer:", `baseYear`))
        }
        self$`baseYear` <- `baseYear`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`scope`)) {
        if (!(`scope` %in% c())) {
          stop(paste("Error! \"", `scope`, "\" cannot be assigned to `scope`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`scope`))
        self$`scope` <- `scope`
      }
      if (!missing(`targetValue`)) {
        if (!(is.character(`targetValue`) && length(`targetValue`) == 1)) {
          stop(paste("Error! Invalid data for `targetValue`. Must be a string:", `targetValue`))
        }
        self$`targetValue` <- `targetValue`
      }
      if (!missing(`targetYear`)) {
        if (!(is.numeric(`targetYear`) && length(`targetYear`) == 1)) {
          stop(paste("Error! Invalid data for `targetYear`. Must be an integer:", `targetYear`))
        }
        self$`targetYear` <- `targetYear`
      }
      if (!is.null(`updatedAt`)) {
        if (!is.character(`updatedAt`)) {
          stop(paste("Error! Invalid data for `updatedAt`. Must be a string:", `updatedAt`))
        }
        self$`updatedAt` <- `updatedAt`
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
    #' @return EmissionTarget as a base R list.
    #' @examples
    #' # convert array of EmissionTarget (x) to a data frame
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
    #' Convert EmissionTarget to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EmissionTargetObject <- list()
      if (!is.null(self$`baseValue`)) {
        EmissionTargetObject[["baseValue"]] <-
          self$`baseValue`
      }
      if (!is.null(self$`baseYear`)) {
        EmissionTargetObject[["baseYear"]] <-
          self$`baseYear`
      }
      if (!is.null(self$`description`)) {
        EmissionTargetObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`scope`)) {
        EmissionTargetObject[["scope"]] <-
          self$extractSimpleType(self$`scope`)
      }
      if (!is.null(self$`targetValue`)) {
        EmissionTargetObject[["targetValue"]] <-
          self$`targetValue`
      }
      if (!is.null(self$`targetYear`)) {
        EmissionTargetObject[["targetYear"]] <-
          self$`targetYear`
      }
      if (!is.null(self$`updatedAt`)) {
        EmissionTargetObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      return(EmissionTargetObject)
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
    #' Deserialize JSON string into an instance of EmissionTarget
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmissionTarget
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`baseValue`)) {
        self$`baseValue` <- this_object$`baseValue`
      }
      if (!is.null(this_object$`baseYear`)) {
        self$`baseYear` <- this_object$`baseYear`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`scope`)) {
        `scope_object` <- EmissionTargetScope$new()
        `scope_object`$fromJSON(jsonlite::toJSON(this_object$`scope`, auto_unbox = TRUE, digits = NA))
        self$`scope` <- `scope_object`
      }
      if (!is.null(this_object$`targetValue`)) {
        self$`targetValue` <- this_object$`targetValue`
      }
      if (!is.null(this_object$`targetYear`)) {
        self$`targetYear` <- this_object$`targetYear`
      }
      if (!is.null(this_object$`updatedAt`)) {
        self$`updatedAt` <- this_object$`updatedAt`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EmissionTarget in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EmissionTarget
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmissionTarget
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`baseValue` <- this_object$`baseValue`
      self$`baseYear` <- this_object$`baseYear`
      self$`description` <- this_object$`description`
      self$`scope` <- EmissionTargetScope$new()$fromJSON(jsonlite::toJSON(this_object$`scope`, auto_unbox = TRUE, digits = NA))
      self$`targetValue` <- this_object$`targetValue`
      self$`targetYear` <- this_object$`targetYear`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },

    #' @description
    #' Validate JSON input with respect to EmissionTarget and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `baseValue`
      if (!is.null(input_json$`baseValue`)) {
        if (!(is.character(input_json$`baseValue`) && length(input_json$`baseValue`) == 1)) {
          stop(paste("Error! Invalid data for `baseValue`. Must be a string:", input_json$`baseValue`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionTarget: the required field `baseValue` is missing."))
      }
      # check the required field `baseYear`
      if (!is.null(input_json$`baseYear`)) {
        if (!(is.numeric(input_json$`baseYear`) && length(input_json$`baseYear`) == 1)) {
          stop(paste("Error! Invalid data for `baseYear`. Must be an integer:", input_json$`baseYear`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionTarget: the required field `baseYear` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionTarget: the required field `description` is missing."))
      }
      # check the required field `scope`
      if (!is.null(input_json$`scope`)) {
        stopifnot(R6::is.R6(input_json$`scope`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionTarget: the required field `scope` is missing."))
      }
      # check the required field `targetValue`
      if (!is.null(input_json$`targetValue`)) {
        if (!(is.character(input_json$`targetValue`) && length(input_json$`targetValue`) == 1)) {
          stop(paste("Error! Invalid data for `targetValue`. Must be a string:", input_json$`targetValue`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionTarget: the required field `targetValue` is missing."))
      }
      # check the required field `targetYear`
      if (!is.null(input_json$`targetYear`)) {
        if (!(is.numeric(input_json$`targetYear`) && length(input_json$`targetYear`) == 1)) {
          stop(paste("Error! Invalid data for `targetYear`. Must be an integer:", input_json$`targetYear`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionTarget: the required field `targetYear` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EmissionTarget
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `baseValue` is null
      if (is.null(self$`baseValue`)) {
        return(FALSE)
      }

      # check if the required `baseYear` is null
      if (is.null(self$`baseYear`)) {
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

      # check if the required `targetValue` is null
      if (is.null(self$`targetValue`)) {
        return(FALSE)
      }

      # check if the required `targetYear` is null
      if (is.null(self$`targetYear`)) {
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
      # check if the required `baseValue` is null
      if (is.null(self$`baseValue`)) {
        invalid_fields["baseValue"] <- "Non-nullable required field `baseValue` cannot be null."
      }

      # check if the required `baseYear` is null
      if (is.null(self$`baseYear`)) {
        invalid_fields["baseYear"] <- "Non-nullable required field `baseYear` cannot be null."
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      # check if the required `scope` is null
      if (is.null(self$`scope`)) {
        invalid_fields["scope"] <- "Non-nullable required field `scope` cannot be null."
      }

      # check if the required `targetValue` is null
      if (is.null(self$`targetValue`)) {
        invalid_fields["targetValue"] <- "Non-nullable required field `targetValue` cannot be null."
      }

      # check if the required `targetYear` is null
      if (is.null(self$`targetYear`)) {
        invalid_fields["targetYear"] <- "Non-nullable required field `targetYear` cannot be null."
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
# EmissionTarget$unlock()
#
## Below is an example to define the print function
# EmissionTarget$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EmissionTarget$lock()

