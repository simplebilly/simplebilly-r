#' Create a new PluginPricingOneOf1
#'
#' @description
#' PluginPricingOneOf1 Class
#'
#' @docType class
#' @title PluginPricingOneOf1
#' @description PluginPricingOneOf1 Class
#' @format An \code{R6Class} generator object
#' @field price  numeric
#' @field type  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PluginPricingOneOf1 <- R6::R6Class(
  "PluginPricingOneOf1",
  public = list(
    `price` = NULL,
    `type` = NULL,

    #' @description
    #' Initialize a new PluginPricingOneOf1 class.
    #'
    #' @param price price
    #' @param type type
    #' @param ... Other optional arguments.
    initialize = function(`price`, `type`, ...) {
      if (!missing(`price`)) {
        if (!(is.numeric(`price`) && length(`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be a number:", `price`))
        }
        self$`price` <- `price`
      }
      if (!missing(`type`)) {
        if (!(`type` %in% c("one_time"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"one_time\".", sep = ""))
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
    #' @return PluginPricingOneOf1 as a base R list.
    #' @examples
    #' # convert array of PluginPricingOneOf1 (x) to a data frame
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
    #' Convert PluginPricingOneOf1 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PluginPricingOneOf1Object <- list()
      if (!is.null(self$`price`)) {
        PluginPricingOneOf1Object[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`type`)) {
        PluginPricingOneOf1Object[["type"]] <-
          self$`type`
      }
      return(PluginPricingOneOf1Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginPricingOneOf1
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginPricingOneOf1
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("one_time"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"one_time\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PluginPricingOneOf1 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginPricingOneOf1
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginPricingOneOf1
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`price` <- this_object$`price`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("one_time"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"one_time\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self
    },

    #' @description
    #' Validate JSON input with respect to PluginPricingOneOf1 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `price`
      if (!is.null(input_json$`price`)) {
        if (!(is.numeric(input_json$`price`) && length(input_json$`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be a number:", input_json$`price`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PluginPricingOneOf1: the required field `price` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PluginPricingOneOf1: the required field `type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PluginPricingOneOf1
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `price` is null
      if (is.null(self$`price`)) {
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
      # check if the required `price` is null
      if (is.null(self$`price`)) {
        invalid_fields["price"] <- "Non-nullable required field `price` cannot be null."
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
# PluginPricingOneOf1$unlock()
#
## Below is an example to define the print function
# PluginPricingOneOf1$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PluginPricingOneOf1$lock()

