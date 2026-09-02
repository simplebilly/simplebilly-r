#' Create a new Budget
#'
#' @description
#' Budget Class
#'
#' @docType class
#' @title Budget
#' @description Budget Class
#' @format An \code{R6Class} generator object
#' @field category Posting category key (matches `category` on journal entries). character
#' @field monthlyGoal Monthly goal amount (gross). 0 means \"no goal set\". character
#' @field updatedAt  character [optional]
#' @field year Budget year the goal applies to. integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Budget <- R6::R6Class(
  "Budget",
  public = list(
    `category` = NULL,
    `monthlyGoal` = NULL,
    `updatedAt` = NULL,
    `year` = NULL,

    #' @description
    #' Initialize a new Budget class.
    #'
    #' @param category Posting category key (matches `category` on journal entries).
    #' @param monthlyGoal Monthly goal amount (gross). 0 means \"no goal set\".
    #' @param year Budget year the goal applies to.
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    initialize = function(`category`, `monthlyGoal`, `year`, `updatedAt` = NULL, ...) {
      if (!missing(`category`)) {
        if (!(is.character(`category`) && length(`category`) == 1)) {
          stop(paste("Error! Invalid data for `category`. Must be a string:", `category`))
        }
        self$`category` <- `category`
      }
      if (!missing(`monthlyGoal`)) {
        if (!(is.character(`monthlyGoal`) && length(`monthlyGoal`) == 1)) {
          stop(paste("Error! Invalid data for `monthlyGoal`. Must be a string:", `monthlyGoal`))
        }
        self$`monthlyGoal` <- `monthlyGoal`
      }
      if (!missing(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
      }
      if (!is.null(`updatedAt`)) {
        if (!is.character(`updatedAt`)) {
          stop(paste("Error! Invalid data for `updatedAt`. Must be a string:", `updatedAt`))
        }
        self$`updatedAt` <- `updatedAt`
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
    #' @return Budget as a base R list.
    #' @examples
    #' # convert array of Budget (x) to a data frame
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
    #' Convert Budget to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BudgetObject <- list()
      if (!is.null(self$`category`)) {
        BudgetObject[["category"]] <-
          self$`category`
      }
      if (!is.null(self$`monthlyGoal`)) {
        BudgetObject[["monthlyGoal"]] <-
          self$`monthlyGoal`
      }
      if (!is.null(self$`updatedAt`)) {
        BudgetObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      if (!is.null(self$`year`)) {
        BudgetObject[["year"]] <-
          self$`year`
      }
      return(BudgetObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Budget
    #'
    #' @param input_json the JSON input
    #' @return the instance of Budget
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`category`)) {
        self$`category` <- this_object$`category`
      }
      if (!is.null(this_object$`monthlyGoal`)) {
        self$`monthlyGoal` <- this_object$`monthlyGoal`
      }
      if (!is.null(this_object$`updatedAt`)) {
        self$`updatedAt` <- this_object$`updatedAt`
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
    #' @return Budget in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Budget
    #'
    #' @param input_json the JSON input
    #' @return the instance of Budget
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`category` <- this_object$`category`
      self$`monthlyGoal` <- this_object$`monthlyGoal`
      self$`updatedAt` <- this_object$`updatedAt`
      self$`year` <- this_object$`year`
      self
    },

    #' @description
    #' Validate JSON input with respect to Budget and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `category`
      if (!is.null(input_json$`category`)) {
        if (!(is.character(input_json$`category`) && length(input_json$`category`) == 1)) {
          stop(paste("Error! Invalid data for `category`. Must be a string:", input_json$`category`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Budget: the required field `category` is missing."))
      }
      # check the required field `monthlyGoal`
      if (!is.null(input_json$`monthlyGoal`)) {
        if (!(is.character(input_json$`monthlyGoal`) && length(input_json$`monthlyGoal`) == 1)) {
          stop(paste("Error! Invalid data for `monthlyGoal`. Must be a string:", input_json$`monthlyGoal`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Budget: the required field `monthlyGoal` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Budget: the required field `year` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Budget
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `category` is null
      if (is.null(self$`category`)) {
        return(FALSE)
      }

      # check if the required `monthlyGoal` is null
      if (is.null(self$`monthlyGoal`)) {
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
      # check if the required `category` is null
      if (is.null(self$`category`)) {
        invalid_fields["category"] <- "Non-nullable required field `category` cannot be null."
      }

      # check if the required `monthlyGoal` is null
      if (is.null(self$`monthlyGoal`)) {
        invalid_fields["monthlyGoal"] <- "Non-nullable required field `monthlyGoal` cannot be null."
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
# Budget$unlock()
#
## Below is an example to define the print function
# Budget$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Budget$lock()

