#' Create a new PluginPricingOneOf2
#'
#' @description
#' PluginPricingOneOf2 Class
#'
#' @docType class
#' @title PluginPricingOneOf2
#' @description PluginPricingOneOf2 Class
#' @format An \code{R6Class} generator object
#' @field price_per_month  numeric
#' @field type  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PluginPricingOneOf2 <- R6::R6Class(
  "PluginPricingOneOf2",
  public = list(
    `price_per_month` = NULL,
    `type` = NULL,

    #' @description
    #' Initialize a new PluginPricingOneOf2 class.
    #'
    #' @param price_per_month price_per_month
    #' @param type type
    #' @param ... Other optional arguments.
    initialize = function(`price_per_month`, `type`, ...) {
      if (!missing(`price_per_month`)) {
        if (!(is.numeric(`price_per_month`) && length(`price_per_month`) == 1)) {
          stop(paste("Error! Invalid data for `price_per_month`. Must be a number:", `price_per_month`))
        }
        self$`price_per_month` <- `price_per_month`
      }
      if (!missing(`type`)) {
        if (!(`type` %in% c("recurring"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"recurring\".", sep = ""))
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
    #' @return PluginPricingOneOf2 as a base R list.
    #' @examples
    #' # convert array of PluginPricingOneOf2 (x) to a data frame
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
    #' Convert PluginPricingOneOf2 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PluginPricingOneOf2Object <- list()
      if (!is.null(self$`price_per_month`)) {
        PluginPricingOneOf2Object[["price_per_month"]] <-
          self$`price_per_month`
      }
      if (!is.null(self$`type`)) {
        PluginPricingOneOf2Object[["type"]] <-
          self$`type`
      }
      return(PluginPricingOneOf2Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginPricingOneOf2
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginPricingOneOf2
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`price_per_month`)) {
        self$`price_per_month` <- this_object$`price_per_month`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("recurring"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"recurring\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PluginPricingOneOf2 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginPricingOneOf2
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginPricingOneOf2
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`price_per_month` <- this_object$`price_per_month`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("recurring"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"recurring\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self
    },

    #' @description
    #' Validate JSON input with respect to PluginPricingOneOf2 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `price_per_month`
      if (!is.null(input_json$`price_per_month`)) {
        if (!(is.numeric(input_json$`price_per_month`) && length(input_json$`price_per_month`) == 1)) {
          stop(paste("Error! Invalid data for `price_per_month`. Must be a number:", input_json$`price_per_month`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PluginPricingOneOf2: the required field `price_per_month` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PluginPricingOneOf2: the required field `type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PluginPricingOneOf2
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `price_per_month` is null
      if (is.null(self$`price_per_month`)) {
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
      # check if the required `price_per_month` is null
      if (is.null(self$`price_per_month`)) {
        invalid_fields["price_per_month"] <- "Non-nullable required field `price_per_month` cannot be null."
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
# PluginPricingOneOf2$unlock()
#
## Below is an example to define the print function
# PluginPricingOneOf2$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PluginPricingOneOf2$lock()

