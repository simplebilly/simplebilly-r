#' Create a new CustomerInfo
#'
#' @description
#' Additional information about the customer placing the shipment.
#'
#' @docType class
#' @title CustomerInfo
#' @description CustomerInfo Class
#' @format An \code{R6Class} generator object
#' @field annual_volume  integer
#' @field is_registered  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomerInfo <- R6::R6Class(
  "CustomerInfo",
  public = list(
    `annual_volume` = NULL,
    `is_registered` = NULL,

    #' @description
    #' Initialize a new CustomerInfo class.
    #'
    #' @param annual_volume annual_volume
    #' @param is_registered is_registered
    #' @param ... Other optional arguments.
    initialize = function(`annual_volume`, `is_registered`, ...) {
      if (!missing(`annual_volume`)) {
        if (!(is.numeric(`annual_volume`) && length(`annual_volume`) == 1)) {
          stop(paste("Error! Invalid data for `annual_volume`. Must be an integer:", `annual_volume`))
        }
        self$`annual_volume` <- `annual_volume`
      }
      if (!missing(`is_registered`)) {
        if (!(is.logical(`is_registered`) && length(`is_registered`) == 1)) {
          stop(paste("Error! Invalid data for `is_registered`. Must be a boolean:", `is_registered`))
        }
        self$`is_registered` <- `is_registered`
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
    #' @return CustomerInfo as a base R list.
    #' @examples
    #' # convert array of CustomerInfo (x) to a data frame
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
    #' Convert CustomerInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomerInfoObject <- list()
      if (!is.null(self$`annual_volume`)) {
        CustomerInfoObject[["annual_volume"]] <-
          self$`annual_volume`
      }
      if (!is.null(self$`is_registered`)) {
        CustomerInfoObject[["is_registered"]] <-
          self$`is_registered`
      }
      return(CustomerInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomerInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomerInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`annual_volume`)) {
        self$`annual_volume` <- this_object$`annual_volume`
      }
      if (!is.null(this_object$`is_registered`)) {
        self$`is_registered` <- this_object$`is_registered`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CustomerInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomerInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomerInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`annual_volume` <- this_object$`annual_volume`
      self$`is_registered` <- this_object$`is_registered`
      self
    },

    #' @description
    #' Validate JSON input with respect to CustomerInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `annual_volume`
      if (!is.null(input_json$`annual_volume`)) {
        if (!(is.numeric(input_json$`annual_volume`) && length(input_json$`annual_volume`) == 1)) {
          stop(paste("Error! Invalid data for `annual_volume`. Must be an integer:", input_json$`annual_volume`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomerInfo: the required field `annual_volume` is missing."))
      }
      # check the required field `is_registered`
      if (!is.null(input_json$`is_registered`)) {
        if (!(is.logical(input_json$`is_registered`) && length(input_json$`is_registered`) == 1)) {
          stop(paste("Error! Invalid data for `is_registered`. Must be a boolean:", input_json$`is_registered`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomerInfo: the required field `is_registered` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomerInfo
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `annual_volume` is null
      if (is.null(self$`annual_volume`)) {
        return(FALSE)
      }

      if (self$`annual_volume` < 0) {
        return(FALSE)
      }

      # check if the required `is_registered` is null
      if (is.null(self$`is_registered`)) {
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
      # check if the required `annual_volume` is null
      if (is.null(self$`annual_volume`)) {
        invalid_fields["annual_volume"] <- "Non-nullable required field `annual_volume` cannot be null."
      }

      if (self$`annual_volume` < 0) {
        invalid_fields["annual_volume"] <- "Invalid value for `annual_volume`, must be bigger than or equal to 0."
      }

      # check if the required `is_registered` is null
      if (is.null(self$`is_registered`)) {
        invalid_fields["is_registered"] <- "Non-nullable required field `is_registered` cannot be null."
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
# CustomerInfo$unlock()
#
## Below is an example to define the print function
# CustomerInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomerInfo$lock()

