#' Create a new VatDetail
#'
#' @description
#' VatDetail Class
#'
#' @docType class
#' @title VatDetail
#' @description VatDetail Class
#' @format An \code{R6Class} generator object
#' @field count  integer
#' @field net_amount  character
#' @field tax_amount  character
#' @field tax_rate  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VatDetail <- R6::R6Class(
  "VatDetail",
  public = list(
    `count` = NULL,
    `net_amount` = NULL,
    `tax_amount` = NULL,
    `tax_rate` = NULL,

    #' @description
    #' Initialize a new VatDetail class.
    #'
    #' @param count count
    #' @param net_amount net_amount
    #' @param tax_amount tax_amount
    #' @param tax_rate tax_rate
    #' @param ... Other optional arguments.
    initialize = function(`count`, `net_amount`, `tax_amount`, `tax_rate`, ...) {
      if (!missing(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
      }
      if (!missing(`net_amount`)) {
        if (!(is.character(`net_amount`) && length(`net_amount`) == 1)) {
          stop(paste("Error! Invalid data for `net_amount`. Must be a string:", `net_amount`))
        }
        self$`net_amount` <- `net_amount`
      }
      if (!missing(`tax_amount`)) {
        if (!(is.character(`tax_amount`) && length(`tax_amount`) == 1)) {
          stop(paste("Error! Invalid data for `tax_amount`. Must be a string:", `tax_amount`))
        }
        self$`tax_amount` <- `tax_amount`
      }
      if (!missing(`tax_rate`)) {
        if (!(is.character(`tax_rate`) && length(`tax_rate`) == 1)) {
          stop(paste("Error! Invalid data for `tax_rate`. Must be a string:", `tax_rate`))
        }
        self$`tax_rate` <- `tax_rate`
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
    #' @return VatDetail as a base R list.
    #' @examples
    #' # convert array of VatDetail (x) to a data frame
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
    #' Convert VatDetail to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VatDetailObject <- list()
      if (!is.null(self$`count`)) {
        VatDetailObject[["count"]] <-
          self$`count`
      }
      if (!is.null(self$`net_amount`)) {
        VatDetailObject[["net_amount"]] <-
          self$`net_amount`
      }
      if (!is.null(self$`tax_amount`)) {
        VatDetailObject[["tax_amount"]] <-
          self$`tax_amount`
      }
      if (!is.null(self$`tax_rate`)) {
        VatDetailObject[["tax_rate"]] <-
          self$`tax_rate`
      }
      return(VatDetailObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of VatDetail
    #'
    #' @param input_json the JSON input
    #' @return the instance of VatDetail
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      if (!is.null(this_object$`net_amount`)) {
        self$`net_amount` <- this_object$`net_amount`
      }
      if (!is.null(this_object$`tax_amount`)) {
        self$`tax_amount` <- this_object$`tax_amount`
      }
      if (!is.null(this_object$`tax_rate`)) {
        self$`tax_rate` <- this_object$`tax_rate`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VatDetail in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VatDetail
    #'
    #' @param input_json the JSON input
    #' @return the instance of VatDetail
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`count` <- this_object$`count`
      self$`net_amount` <- this_object$`net_amount`
      self$`tax_amount` <- this_object$`tax_amount`
      self$`tax_rate` <- this_object$`tax_rate`
      self
    },

    #' @description
    #' Validate JSON input with respect to VatDetail and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `count`
      if (!is.null(input_json$`count`)) {
        if (!(is.numeric(input_json$`count`) && length(input_json$`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", input_json$`count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VatDetail: the required field `count` is missing."))
      }
      # check the required field `net_amount`
      if (!is.null(input_json$`net_amount`)) {
        if (!(is.character(input_json$`net_amount`) && length(input_json$`net_amount`) == 1)) {
          stop(paste("Error! Invalid data for `net_amount`. Must be a string:", input_json$`net_amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VatDetail: the required field `net_amount` is missing."))
      }
      # check the required field `tax_amount`
      if (!is.null(input_json$`tax_amount`)) {
        if (!(is.character(input_json$`tax_amount`) && length(input_json$`tax_amount`) == 1)) {
          stop(paste("Error! Invalid data for `tax_amount`. Must be a string:", input_json$`tax_amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VatDetail: the required field `tax_amount` is missing."))
      }
      # check the required field `tax_rate`
      if (!is.null(input_json$`tax_rate`)) {
        if (!(is.character(input_json$`tax_rate`) && length(input_json$`tax_rate`) == 1)) {
          stop(paste("Error! Invalid data for `tax_rate`. Must be a string:", input_json$`tax_rate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VatDetail: the required field `tax_rate` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VatDetail
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `count` is null
      if (is.null(self$`count`)) {
        return(FALSE)
      }

      # check if the required `net_amount` is null
      if (is.null(self$`net_amount`)) {
        return(FALSE)
      }

      # check if the required `tax_amount` is null
      if (is.null(self$`tax_amount`)) {
        return(FALSE)
      }

      # check if the required `tax_rate` is null
      if (is.null(self$`tax_rate`)) {
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
      # check if the required `count` is null
      if (is.null(self$`count`)) {
        invalid_fields["count"] <- "Non-nullable required field `count` cannot be null."
      }

      # check if the required `net_amount` is null
      if (is.null(self$`net_amount`)) {
        invalid_fields["net_amount"] <- "Non-nullable required field `net_amount` cannot be null."
      }

      # check if the required `tax_amount` is null
      if (is.null(self$`tax_amount`)) {
        invalid_fields["tax_amount"] <- "Non-nullable required field `tax_amount` cannot be null."
      }

      # check if the required `tax_rate` is null
      if (is.null(self$`tax_rate`)) {
        invalid_fields["tax_rate"] <- "Non-nullable required field `tax_rate` cannot be null."
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
# VatDetail$unlock()
#
## Below is an example to define the print function
# VatDetail$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VatDetail$lock()

