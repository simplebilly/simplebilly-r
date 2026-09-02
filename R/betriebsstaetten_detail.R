#' Create a new BetriebsstaettenDetail
#'
#' @description
#' BetriebsstaettenDetail Class
#'
#' @docType class
#' @title BetriebsstaettenDetail
#' @description BetriebsstaettenDetail Class
#' @format An \code{R6Class} generator object
#' @field beschaefigte  integer
#' @field monatlicher_beitrag  character
#' @field name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BetriebsstaettenDetail <- R6::R6Class(
  "BetriebsstaettenDetail",
  public = list(
    `beschaefigte` = NULL,
    `monatlicher_beitrag` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new BetriebsstaettenDetail class.
    #'
    #' @param beschaefigte beschaefigte
    #' @param monatlicher_beitrag monatlicher_beitrag
    #' @param name name
    #' @param ... Other optional arguments.
    initialize = function(`beschaefigte`, `monatlicher_beitrag`, `name`, ...) {
      if (!missing(`beschaefigte`)) {
        if (!(is.numeric(`beschaefigte`) && length(`beschaefigte`) == 1)) {
          stop(paste("Error! Invalid data for `beschaefigte`. Must be an integer:", `beschaefigte`))
        }
        self$`beschaefigte` <- `beschaefigte`
      }
      if (!missing(`monatlicher_beitrag`)) {
        if (!(is.character(`monatlicher_beitrag`) && length(`monatlicher_beitrag`) == 1)) {
          stop(paste("Error! Invalid data for `monatlicher_beitrag`. Must be a string:", `monatlicher_beitrag`))
        }
        self$`monatlicher_beitrag` <- `monatlicher_beitrag`
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
    #' @return BetriebsstaettenDetail as a base R list.
    #' @examples
    #' # convert array of BetriebsstaettenDetail (x) to a data frame
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
    #' Convert BetriebsstaettenDetail to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BetriebsstaettenDetailObject <- list()
      if (!is.null(self$`beschaefigte`)) {
        BetriebsstaettenDetailObject[["beschaefigte"]] <-
          self$`beschaefigte`
      }
      if (!is.null(self$`monatlicher_beitrag`)) {
        BetriebsstaettenDetailObject[["monatlicher_beitrag"]] <-
          self$`monatlicher_beitrag`
      }
      if (!is.null(self$`name`)) {
        BetriebsstaettenDetailObject[["name"]] <-
          self$`name`
      }
      return(BetriebsstaettenDetailObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BetriebsstaettenDetail
    #'
    #' @param input_json the JSON input
    #' @return the instance of BetriebsstaettenDetail
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`beschaefigte`)) {
        self$`beschaefigte` <- this_object$`beschaefigte`
      }
      if (!is.null(this_object$`monatlicher_beitrag`)) {
        self$`monatlicher_beitrag` <- this_object$`monatlicher_beitrag`
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
    #' @return BetriebsstaettenDetail in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BetriebsstaettenDetail
    #'
    #' @param input_json the JSON input
    #' @return the instance of BetriebsstaettenDetail
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`beschaefigte` <- this_object$`beschaefigte`
      self$`monatlicher_beitrag` <- this_object$`monatlicher_beitrag`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to BetriebsstaettenDetail and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `beschaefigte`
      if (!is.null(input_json$`beschaefigte`)) {
        if (!(is.numeric(input_json$`beschaefigte`) && length(input_json$`beschaefigte`) == 1)) {
          stop(paste("Error! Invalid data for `beschaefigte`. Must be an integer:", input_json$`beschaefigte`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BetriebsstaettenDetail: the required field `beschaefigte` is missing."))
      }
      # check the required field `monatlicher_beitrag`
      if (!is.null(input_json$`monatlicher_beitrag`)) {
        if (!(is.character(input_json$`monatlicher_beitrag`) && length(input_json$`monatlicher_beitrag`) == 1)) {
          stop(paste("Error! Invalid data for `monatlicher_beitrag`. Must be a string:", input_json$`monatlicher_beitrag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BetriebsstaettenDetail: the required field `monatlicher_beitrag` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BetriebsstaettenDetail: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BetriebsstaettenDetail
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `beschaefigte` is null
      if (is.null(self$`beschaefigte`)) {
        return(FALSE)
      }

      if (self$`beschaefigte` < 0) {
        return(FALSE)
      }

      # check if the required `monatlicher_beitrag` is null
      if (is.null(self$`monatlicher_beitrag`)) {
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
      # check if the required `beschaefigte` is null
      if (is.null(self$`beschaefigte`)) {
        invalid_fields["beschaefigte"] <- "Non-nullable required field `beschaefigte` cannot be null."
      }

      if (self$`beschaefigte` < 0) {
        invalid_fields["beschaefigte"] <- "Invalid value for `beschaefigte`, must be bigger than or equal to 0."
      }

      # check if the required `monatlicher_beitrag` is null
      if (is.null(self$`monatlicher_beitrag`)) {
        invalid_fields["monatlicher_beitrag"] <- "Non-nullable required field `monatlicher_beitrag` cannot be null."
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
# BetriebsstaettenDetail$unlock()
#
## Below is an example to define the print function
# BetriebsstaettenDetail$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BetriebsstaettenDetail$lock()

