#' Create a new CreateEmissionEntry
#'
#' @description
#' CreateEmissionEntry Class
#'
#' @docType class
#' @title CreateEmissionEntry
#' @description CreateEmissionEntry Class
#' @format An \code{R6Class} generator object
#' @field activity_value  character
#' @field category_id  character
#' @field description  character
#' @field method  character
#' @field scope  character
#' @field unit  character
#' @field year  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateEmissionEntry <- R6::R6Class(
  "CreateEmissionEntry",
  public = list(
    `activity_value` = NULL,
    `category_id` = NULL,
    `description` = NULL,
    `method` = NULL,
    `scope` = NULL,
    `unit` = NULL,
    `year` = NULL,

    #' @description
    #' Initialize a new CreateEmissionEntry class.
    #'
    #' @param activity_value activity_value
    #' @param category_id category_id
    #' @param description description
    #' @param method method
    #' @param scope scope
    #' @param unit unit
    #' @param year year
    #' @param ... Other optional arguments.
    initialize = function(`activity_value`, `category_id`, `description`, `method`, `scope`, `unit`, `year`, ...) {
      if (!missing(`activity_value`)) {
        if (!(is.character(`activity_value`) && length(`activity_value`) == 1)) {
          stop(paste("Error! Invalid data for `activity_value`. Must be a string:", `activity_value`))
        }
        self$`activity_value` <- `activity_value`
      }
      if (!missing(`category_id`)) {
        if (!(is.character(`category_id`) && length(`category_id`) == 1)) {
          stop(paste("Error! Invalid data for `category_id`. Must be a string:", `category_id`))
        }
        self$`category_id` <- `category_id`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!missing(`scope`)) {
        if (!(is.character(`scope`) && length(`scope`) == 1)) {
          stop(paste("Error! Invalid data for `scope`. Must be a string:", `scope`))
        }
        self$`scope` <- `scope`
      }
      if (!missing(`unit`)) {
        if (!(is.character(`unit`) && length(`unit`) == 1)) {
          stop(paste("Error! Invalid data for `unit`. Must be a string:", `unit`))
        }
        self$`unit` <- `unit`
      }
      if (!missing(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
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
    #' @return CreateEmissionEntry as a base R list.
    #' @examples
    #' # convert array of CreateEmissionEntry (x) to a data frame
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
    #' Convert CreateEmissionEntry to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateEmissionEntryObject <- list()
      if (!is.null(self$`activity_value`)) {
        CreateEmissionEntryObject[["activity_value"]] <-
          self$`activity_value`
      }
      if (!is.null(self$`category_id`)) {
        CreateEmissionEntryObject[["category_id"]] <-
          self$`category_id`
      }
      if (!is.null(self$`description`)) {
        CreateEmissionEntryObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`method`)) {
        CreateEmissionEntryObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`scope`)) {
        CreateEmissionEntryObject[["scope"]] <-
          self$`scope`
      }
      if (!is.null(self$`unit`)) {
        CreateEmissionEntryObject[["unit"]] <-
          self$`unit`
      }
      if (!is.null(self$`year`)) {
        CreateEmissionEntryObject[["year"]] <-
          self$`year`
      }
      return(CreateEmissionEntryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateEmissionEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateEmissionEntry
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`activity_value`)) {
        self$`activity_value` <- this_object$`activity_value`
      }
      if (!is.null(this_object$`category_id`)) {
        self$`category_id` <- this_object$`category_id`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`scope`)) {
        self$`scope` <- this_object$`scope`
      }
      if (!is.null(this_object$`unit`)) {
        self$`unit` <- this_object$`unit`
      }
      if (!is.null(this_object$`year`)) {
        self$`year` <- this_object$`year`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateEmissionEntry in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateEmissionEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateEmissionEntry
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`activity_value` <- this_object$`activity_value`
      self$`category_id` <- this_object$`category_id`
      self$`description` <- this_object$`description`
      self$`method` <- this_object$`method`
      self$`scope` <- this_object$`scope`
      self$`unit` <- this_object$`unit`
      self$`year` <- this_object$`year`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateEmissionEntry and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `activity_value`
      if (!is.null(input_json$`activity_value`)) {
        if (!(is.character(input_json$`activity_value`) && length(input_json$`activity_value`) == 1)) {
          stop(paste("Error! Invalid data for `activity_value`. Must be a string:", input_json$`activity_value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateEmissionEntry: the required field `activity_value` is missing."))
      }
      # check the required field `category_id`
      if (!is.null(input_json$`category_id`)) {
        if (!(is.character(input_json$`category_id`) && length(input_json$`category_id`) == 1)) {
          stop(paste("Error! Invalid data for `category_id`. Must be a string:", input_json$`category_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateEmissionEntry: the required field `category_id` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateEmissionEntry: the required field `description` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        if (!(is.character(input_json$`method`) && length(input_json$`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", input_json$`method`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateEmissionEntry: the required field `method` is missing."))
      }
      # check the required field `scope`
      if (!is.null(input_json$`scope`)) {
        if (!(is.character(input_json$`scope`) && length(input_json$`scope`) == 1)) {
          stop(paste("Error! Invalid data for `scope`. Must be a string:", input_json$`scope`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateEmissionEntry: the required field `scope` is missing."))
      }
      # check the required field `unit`
      if (!is.null(input_json$`unit`)) {
        if (!(is.character(input_json$`unit`) && length(input_json$`unit`) == 1)) {
          stop(paste("Error! Invalid data for `unit`. Must be a string:", input_json$`unit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateEmissionEntry: the required field `unit` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateEmissionEntry: the required field `year` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateEmissionEntry
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `activity_value` is null
      if (is.null(self$`activity_value`)) {
        return(FALSE)
      }

      # check if the required `category_id` is null
      if (is.null(self$`category_id`)) {
        return(FALSE)
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        return(FALSE)
      }

      # check if the required `method` is null
      if (is.null(self$`method`)) {
        return(FALSE)
      }

      # check if the required `scope` is null
      if (is.null(self$`scope`)) {
        return(FALSE)
      }

      # check if the required `unit` is null
      if (is.null(self$`unit`)) {
        return(FALSE)
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
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
      # check if the required `activity_value` is null
      if (is.null(self$`activity_value`)) {
        invalid_fields["activity_value"] <- "Non-nullable required field `activity_value` cannot be null."
      }

      # check if the required `category_id` is null
      if (is.null(self$`category_id`)) {
        invalid_fields["category_id"] <- "Non-nullable required field `category_id` cannot be null."
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      # check if the required `method` is null
      if (is.null(self$`method`)) {
        invalid_fields["method"] <- "Non-nullable required field `method` cannot be null."
      }

      # check if the required `scope` is null
      if (is.null(self$`scope`)) {
        invalid_fields["scope"] <- "Non-nullable required field `scope` cannot be null."
      }

      # check if the required `unit` is null
      if (is.null(self$`unit`)) {
        invalid_fields["unit"] <- "Non-nullable required field `unit` cannot be null."
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
        invalid_fields["year"] <- "Non-nullable required field `year` cannot be null."
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
# CreateEmissionEntry$unlock()
#
## Below is an example to define the print function
# CreateEmissionEntry$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateEmissionEntry$lock()

