#' Create a new BudgetKategorie
#'
#' @description
#' BudgetKategorie Class
#'
#' @docType class
#' @title BudgetKategorie
#' @description BudgetKategorie Class
#' @format An \code{R6Class} generator object
#' @field budget  character
#' @field differenz  character
#' @field goal User-set monthly goal for the category, if any. character [optional]
#' @field ist  character
#' @field kategorie  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BudgetKategorie <- R6::R6Class(
  "BudgetKategorie",
  public = list(
    `budget` = NULL,
    `differenz` = NULL,
    `goal` = NULL,
    `ist` = NULL,
    `kategorie` = NULL,

    #' @description
    #' Initialize a new BudgetKategorie class.
    #'
    #' @param budget budget
    #' @param differenz differenz
    #' @param ist ist
    #' @param kategorie kategorie
    #' @param goal User-set monthly goal for the category, if any.
    #' @param ... Other optional arguments.
    initialize = function(`budget`, `differenz`, `ist`, `kategorie`, `goal` = NULL, ...) {
      if (!missing(`budget`)) {
        if (!(is.character(`budget`) && length(`budget`) == 1)) {
          stop(paste("Error! Invalid data for `budget`. Must be a string:", `budget`))
        }
        self$`budget` <- `budget`
      }
      if (!missing(`differenz`)) {
        if (!(is.character(`differenz`) && length(`differenz`) == 1)) {
          stop(paste("Error! Invalid data for `differenz`. Must be a string:", `differenz`))
        }
        self$`differenz` <- `differenz`
      }
      if (!missing(`ist`)) {
        if (!(is.character(`ist`) && length(`ist`) == 1)) {
          stop(paste("Error! Invalid data for `ist`. Must be a string:", `ist`))
        }
        self$`ist` <- `ist`
      }
      if (!missing(`kategorie`)) {
        if (!(is.character(`kategorie`) && length(`kategorie`) == 1)) {
          stop(paste("Error! Invalid data for `kategorie`. Must be a string:", `kategorie`))
        }
        self$`kategorie` <- `kategorie`
      }
      if (!is.null(`goal`)) {
        if (!(is.character(`goal`) && length(`goal`) == 1)) {
          stop(paste("Error! Invalid data for `goal`. Must be a string:", `goal`))
        }
        self$`goal` <- `goal`
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
    #' @return BudgetKategorie as a base R list.
    #' @examples
    #' # convert array of BudgetKategorie (x) to a data frame
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
    #' Convert BudgetKategorie to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BudgetKategorieObject <- list()
      if (!is.null(self$`budget`)) {
        BudgetKategorieObject[["budget"]] <-
          self$`budget`
      }
      if (!is.null(self$`differenz`)) {
        BudgetKategorieObject[["differenz"]] <-
          self$`differenz`
      }
      if (!is.null(self$`goal`)) {
        BudgetKategorieObject[["goal"]] <-
          self$`goal`
      }
      if (!is.null(self$`ist`)) {
        BudgetKategorieObject[["ist"]] <-
          self$`ist`
      }
      if (!is.null(self$`kategorie`)) {
        BudgetKategorieObject[["kategorie"]] <-
          self$`kategorie`
      }
      return(BudgetKategorieObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BudgetKategorie
    #'
    #' @param input_json the JSON input
    #' @return the instance of BudgetKategorie
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`budget`)) {
        self$`budget` <- this_object$`budget`
      }
      if (!is.null(this_object$`differenz`)) {
        self$`differenz` <- this_object$`differenz`
      }
      if (!is.null(this_object$`goal`)) {
        self$`goal` <- this_object$`goal`
      }
      if (!is.null(this_object$`ist`)) {
        self$`ist` <- this_object$`ist`
      }
      if (!is.null(this_object$`kategorie`)) {
        self$`kategorie` <- this_object$`kategorie`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BudgetKategorie in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BudgetKategorie
    #'
    #' @param input_json the JSON input
    #' @return the instance of BudgetKategorie
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`budget` <- this_object$`budget`
      self$`differenz` <- this_object$`differenz`
      self$`goal` <- this_object$`goal`
      self$`ist` <- this_object$`ist`
      self$`kategorie` <- this_object$`kategorie`
      self
    },

    #' @description
    #' Validate JSON input with respect to BudgetKategorie and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `budget`
      if (!is.null(input_json$`budget`)) {
        if (!(is.character(input_json$`budget`) && length(input_json$`budget`) == 1)) {
          stop(paste("Error! Invalid data for `budget`. Must be a string:", input_json$`budget`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BudgetKategorie: the required field `budget` is missing."))
      }
      # check the required field `differenz`
      if (!is.null(input_json$`differenz`)) {
        if (!(is.character(input_json$`differenz`) && length(input_json$`differenz`) == 1)) {
          stop(paste("Error! Invalid data for `differenz`. Must be a string:", input_json$`differenz`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BudgetKategorie: the required field `differenz` is missing."))
      }
      # check the required field `ist`
      if (!is.null(input_json$`ist`)) {
        if (!(is.character(input_json$`ist`) && length(input_json$`ist`) == 1)) {
          stop(paste("Error! Invalid data for `ist`. Must be a string:", input_json$`ist`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BudgetKategorie: the required field `ist` is missing."))
      }
      # check the required field `kategorie`
      if (!is.null(input_json$`kategorie`)) {
        if (!(is.character(input_json$`kategorie`) && length(input_json$`kategorie`) == 1)) {
          stop(paste("Error! Invalid data for `kategorie`. Must be a string:", input_json$`kategorie`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BudgetKategorie: the required field `kategorie` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BudgetKategorie
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `budget` is null
      if (is.null(self$`budget`)) {
        return(FALSE)
      }

      # check if the required `differenz` is null
      if (is.null(self$`differenz`)) {
        return(FALSE)
      }

      # check if the required `ist` is null
      if (is.null(self$`ist`)) {
        return(FALSE)
      }

      # check if the required `kategorie` is null
      if (is.null(self$`kategorie`)) {
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
      # check if the required `budget` is null
      if (is.null(self$`budget`)) {
        invalid_fields["budget"] <- "Non-nullable required field `budget` cannot be null."
      }

      # check if the required `differenz` is null
      if (is.null(self$`differenz`)) {
        invalid_fields["differenz"] <- "Non-nullable required field `differenz` cannot be null."
      }

      # check if the required `ist` is null
      if (is.null(self$`ist`)) {
        invalid_fields["ist"] <- "Non-nullable required field `ist` cannot be null."
      }

      # check if the required `kategorie` is null
      if (is.null(self$`kategorie`)) {
        invalid_fields["kategorie"] <- "Non-nullable required field `kategorie` cannot be null."
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
# BudgetKategorie$unlock()
#
## Below is an example to define the print function
# BudgetKategorie$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BudgetKategorie$lock()

