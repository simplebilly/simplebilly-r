#' Create a new LaborCostRow
#'
#' @description
#' LaborCostRow Class
#'
#' @docType class
#' @title LaborCostRow
#' @description LaborCostRow Class
#' @format An \code{R6Class} generator object
#' @field cost  character
#' @field employeeId  character [optional]
#' @field groupKey  character
#' @field hours  character
#' @field name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LaborCostRow <- R6::R6Class(
  "LaborCostRow",
  public = list(
    `cost` = NULL,
    `employeeId` = NULL,
    `groupKey` = NULL,
    `hours` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new LaborCostRow class.
    #'
    #' @param cost cost
    #' @param groupKey groupKey
    #' @param hours hours
    #' @param employeeId employeeId
    #' @param name name
    #' @param ... Other optional arguments.
    initialize = function(`cost`, `groupKey`, `hours`, `employeeId` = NULL, `name` = NULL, ...) {
      if (!missing(`cost`)) {
        if (!(is.character(`cost`) && length(`cost`) == 1)) {
          stop(paste("Error! Invalid data for `cost`. Must be a string:", `cost`))
        }
        self$`cost` <- `cost`
      }
      if (!missing(`groupKey`)) {
        if (!(is.character(`groupKey`) && length(`groupKey`) == 1)) {
          stop(paste("Error! Invalid data for `groupKey`. Must be a string:", `groupKey`))
        }
        self$`groupKey` <- `groupKey`
      }
      if (!missing(`hours`)) {
        if (!(is.character(`hours`) && length(`hours`) == 1)) {
          stop(paste("Error! Invalid data for `hours`. Must be a string:", `hours`))
        }
        self$`hours` <- `hours`
      }
      if (!is.null(`employeeId`)) {
        if (!(is.character(`employeeId`) && length(`employeeId`) == 1)) {
          stop(paste("Error! Invalid data for `employeeId`. Must be a string:", `employeeId`))
        }
        self$`employeeId` <- `employeeId`
      }
      if (!is.null(`name`)) {
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
    #' @return LaborCostRow as a base R list.
    #' @examples
    #' # convert array of LaborCostRow (x) to a data frame
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
    #' Convert LaborCostRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LaborCostRowObject <- list()
      if (!is.null(self$`cost`)) {
        LaborCostRowObject[["cost"]] <-
          self$`cost`
      }
      if (!is.null(self$`employeeId`)) {
        LaborCostRowObject[["employeeId"]] <-
          self$`employeeId`
      }
      if (!is.null(self$`groupKey`)) {
        LaborCostRowObject[["groupKey"]] <-
          self$`groupKey`
      }
      if (!is.null(self$`hours`)) {
        LaborCostRowObject[["hours"]] <-
          self$`hours`
      }
      if (!is.null(self$`name`)) {
        LaborCostRowObject[["name"]] <-
          self$`name`
      }
      return(LaborCostRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LaborCostRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of LaborCostRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cost`)) {
        self$`cost` <- this_object$`cost`
      }
      if (!is.null(this_object$`employeeId`)) {
        self$`employeeId` <- this_object$`employeeId`
      }
      if (!is.null(this_object$`groupKey`)) {
        self$`groupKey` <- this_object$`groupKey`
      }
      if (!is.null(this_object$`hours`)) {
        self$`hours` <- this_object$`hours`
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
    #' @return LaborCostRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LaborCostRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of LaborCostRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`cost` <- this_object$`cost`
      self$`employeeId` <- this_object$`employeeId`
      self$`groupKey` <- this_object$`groupKey`
      self$`hours` <- this_object$`hours`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to LaborCostRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `cost`
      if (!is.null(input_json$`cost`)) {
        if (!(is.character(input_json$`cost`) && length(input_json$`cost`) == 1)) {
          stop(paste("Error! Invalid data for `cost`. Must be a string:", input_json$`cost`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LaborCostRow: the required field `cost` is missing."))
      }
      # check the required field `groupKey`
      if (!is.null(input_json$`groupKey`)) {
        if (!(is.character(input_json$`groupKey`) && length(input_json$`groupKey`) == 1)) {
          stop(paste("Error! Invalid data for `groupKey`. Must be a string:", input_json$`groupKey`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LaborCostRow: the required field `groupKey` is missing."))
      }
      # check the required field `hours`
      if (!is.null(input_json$`hours`)) {
        if (!(is.character(input_json$`hours`) && length(input_json$`hours`) == 1)) {
          stop(paste("Error! Invalid data for `hours`. Must be a string:", input_json$`hours`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LaborCostRow: the required field `hours` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LaborCostRow
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `cost` is null
      if (is.null(self$`cost`)) {
        return(FALSE)
      }

      # check if the required `groupKey` is null
      if (is.null(self$`groupKey`)) {
        return(FALSE)
      }

      # check if the required `hours` is null
      if (is.null(self$`hours`)) {
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
      # check if the required `cost` is null
      if (is.null(self$`cost`)) {
        invalid_fields["cost"] <- "Non-nullable required field `cost` cannot be null."
      }

      # check if the required `groupKey` is null
      if (is.null(self$`groupKey`)) {
        invalid_fields["groupKey"] <- "Non-nullable required field `groupKey` cannot be null."
      }

      # check if the required `hours` is null
      if (is.null(self$`hours`)) {
        invalid_fields["hours"] <- "Non-nullable required field `hours` cannot be null."
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
# LaborCostRow$unlock()
#
## Below is an example to define the print function
# LaborCostRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LaborCostRow$lock()

