#' Create a new BudgetGoalRequest
#'
#' @description
#' BudgetGoalRequest Class
#'
#' @docType class
#' @title BudgetGoalRequest
#' @description BudgetGoalRequest Class
#' @format An \code{R6Class} generator object
#' @field monthly_goal Monthly goal amount (gross). 0 means \"no goal\" (fallback to default). character
#' @field year Budget year the goal applies to. integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BudgetGoalRequest <- R6::R6Class(
  "BudgetGoalRequest",
  public = list(
    `monthly_goal` = NULL,
    `year` = NULL,

    #' @description
    #' Initialize a new BudgetGoalRequest class.
    #'
    #' @param monthly_goal Monthly goal amount (gross). 0 means \"no goal\" (fallback to default).
    #' @param year Budget year the goal applies to.
    #' @param ... Other optional arguments.
    initialize = function(`monthly_goal`, `year`, ...) {
      if (!missing(`monthly_goal`)) {
        if (!(is.character(`monthly_goal`) && length(`monthly_goal`) == 1)) {
          stop(paste("Error! Invalid data for `monthly_goal`. Must be a string:", `monthly_goal`))
        }
        self$`monthly_goal` <- `monthly_goal`
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
    #' @return BudgetGoalRequest as a base R list.
    #' @examples
    #' # convert array of BudgetGoalRequest (x) to a data frame
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
    #' Convert BudgetGoalRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BudgetGoalRequestObject <- list()
      if (!is.null(self$`monthly_goal`)) {
        BudgetGoalRequestObject[["monthly_goal"]] <-
          self$`monthly_goal`
      }
      if (!is.null(self$`year`)) {
        BudgetGoalRequestObject[["year"]] <-
          self$`year`
      }
      return(BudgetGoalRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BudgetGoalRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BudgetGoalRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`monthly_goal`)) {
        self$`monthly_goal` <- this_object$`monthly_goal`
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
    #' @return BudgetGoalRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BudgetGoalRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BudgetGoalRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`monthly_goal` <- this_object$`monthly_goal`
      self$`year` <- this_object$`year`
      self
    },

    #' @description
    #' Validate JSON input with respect to BudgetGoalRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `monthly_goal`
      if (!is.null(input_json$`monthly_goal`)) {
        if (!(is.character(input_json$`monthly_goal`) && length(input_json$`monthly_goal`) == 1)) {
          stop(paste("Error! Invalid data for `monthly_goal`. Must be a string:", input_json$`monthly_goal`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BudgetGoalRequest: the required field `monthly_goal` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BudgetGoalRequest: the required field `year` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BudgetGoalRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `monthly_goal` is null
      if (is.null(self$`monthly_goal`)) {
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
      # check if the required `monthly_goal` is null
      if (is.null(self$`monthly_goal`)) {
        invalid_fields["monthly_goal"] <- "Non-nullable required field `monthly_goal` cannot be null."
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
# BudgetGoalRequest$unlock()
#
## Below is an example to define the print function
# BudgetGoalRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BudgetGoalRequest$lock()

