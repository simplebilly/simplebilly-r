#' Create a new CreateChannelDto
#'
#' @description
#' CreateChannelDto Class
#'
#' @docType class
#' @title CreateChannelDto
#' @description CreateChannelDto Class
#' @format An \code{R6Class} generator object
#' @field channel_type  character
#' @field config  \link{AnyType}
#' @field name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateChannelDto <- R6::R6Class(
  "CreateChannelDto",
  public = list(
    `channel_type` = NULL,
    `config` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new CreateChannelDto class.
    #'
    #' @param channel_type channel_type
    #' @param config config
    #' @param name name
    #' @param ... Other optional arguments.
    initialize = function(`channel_type`, `config`, `name`, ...) {
      if (!missing(`channel_type`)) {
        if (!(is.character(`channel_type`) && length(`channel_type`) == 1)) {
          stop(paste("Error! Invalid data for `channel_type`. Must be a string:", `channel_type`))
        }
        self$`channel_type` <- `channel_type`
      }
      if (!missing(`config`)) {
        stopifnot(R6::is.R6(`config`))
        self$`config` <- `config`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return CreateChannelDto as a base R list.
    #' @examples
    #' # convert array of CreateChannelDto (x) to a data frame
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
    #' Convert CreateChannelDto to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateChannelDtoObject <- list()
      if (!is.null(self$`channel_type`)) {
        CreateChannelDtoObject[["channel_type"]] <-
          self$`channel_type`
      }
      if (!is.null(self$`config`)) {
        CreateChannelDtoObject[["config"]] <-
          self$extractSimpleType(self$`config`)
      }
      if (!is.null(self$`name`)) {
        CreateChannelDtoObject[["name"]] <-
          self$`name`
      }
      return(CreateChannelDtoObject)
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
    #' Deserialize JSON string into an instance of CreateChannelDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateChannelDto
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`channel_type`)) {
        self$`channel_type` <- this_object$`channel_type`
      }
      if (!is.null(this_object$`config`)) {
        `config_object` <- AnyType$new()
        `config_object`$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
        self$`config` <- `config_object`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateChannelDto in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateChannelDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateChannelDto
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`channel_type` <- this_object$`channel_type`
      self$`config` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateChannelDto and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `channel_type`
      if (!is.null(input_json$`channel_type`)) {
        if (!(is.character(input_json$`channel_type`) && length(input_json$`channel_type`) == 1)) {
          stop(paste("Error! Invalid data for `channel_type`. Must be a string:", input_json$`channel_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateChannelDto: the required field `channel_type` is missing."))
      }
      # check the required field `config`
      if (!is.null(input_json$`config`)) {
        stopifnot(R6::is.R6(input_json$`config`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateChannelDto: the required field `config` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateChannelDto: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateChannelDto
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `channel_type` is null
      if (is.null(self$`channel_type`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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
      # check if the required `channel_type` is null
      if (is.null(self$`channel_type`)) {
        invalid_fields["channel_type"] <- "Non-nullable required field `channel_type` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# CreateChannelDto$unlock()
#
## Below is an example to define the print function
# CreateChannelDto$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateChannelDto$lock()

