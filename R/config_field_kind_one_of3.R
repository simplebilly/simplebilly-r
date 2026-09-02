#' Create a new ConfigFieldKindOneOf3
#'
#' @description
#' ConfigFieldKindOneOf3 Class
#'
#' @docType class
#' @title ConfigFieldKindOneOf3
#' @description ConfigFieldKindOneOf3 Class
#' @format An \code{R6Class} generator object
#' @field options  list(character)
#' @field type  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConfigFieldKindOneOf3 <- R6::R6Class(
  "ConfigFieldKindOneOf3",
  public = list(
    `options` = NULL,
    `type` = NULL,

    #' @description
    #' Initialize a new ConfigFieldKindOneOf3 class.
    #'
    #' @param options options
    #' @param type type
    #' @param ... Other optional arguments.
    initialize = function(`options`, `type`, ...) {
      if (!missing(`options`)) {
        stopifnot(is.vector(`options`), length(`options`) != 0)
        sapply(`options`, function(x) stopifnot(is.character(x)))
        self$`options` <- `options`
      }
      if (!missing(`type`)) {
        if (!(`type` %in% c("select"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"select\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
    #' @return ConfigFieldKindOneOf3 as a base R list.
    #' @examples
    #' # convert array of ConfigFieldKindOneOf3 (x) to a data frame
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
    #' Convert ConfigFieldKindOneOf3 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConfigFieldKindOneOf3Object <- list()
      if (!is.null(self$`options`)) {
        ConfigFieldKindOneOf3Object[["options"]] <-
          self$`options`
      }
      if (!is.null(self$`type`)) {
        ConfigFieldKindOneOf3Object[["type"]] <-
          self$`type`
      }
      return(ConfigFieldKindOneOf3Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of ConfigFieldKindOneOf3
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConfigFieldKindOneOf3
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`options`)) {
        self$`options` <- ApiClient$new()$deserializeObj(this_object$`options`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("select"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"select\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ConfigFieldKindOneOf3 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConfigFieldKindOneOf3
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConfigFieldKindOneOf3
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`options` <- ApiClient$new()$deserializeObj(this_object$`options`, "array[character]", loadNamespace("openapi"))
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("select"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"select\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self
    },

    #' @description
    #' Validate JSON input with respect to ConfigFieldKindOneOf3 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `options`
      if (!is.null(input_json$`options`)) {
        stopifnot(is.vector(input_json$`options`), length(input_json$`options`) != 0)
        tmp <- sapply(input_json$`options`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConfigFieldKindOneOf3: the required field `options` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConfigFieldKindOneOf3: the required field `type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConfigFieldKindOneOf3
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `options` is null
      if (is.null(self$`options`)) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
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
      # check if the required `options` is null
      if (is.null(self$`options`)) {
        invalid_fields["options"] <- "Non-nullable required field `options` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
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
# ConfigFieldKindOneOf3$unlock()
#
## Below is an example to define the print function
# ConfigFieldKindOneOf3$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConfigFieldKindOneOf3$lock()

