#' Create a new BudgetErgebnis
#'
#' @description
#' BudgetErgebnis Class
#'
#' @docType class
#' @title BudgetErgebnis
#' @description BudgetErgebnis Class
#' @format An \code{R6Class} generator object
#' @field jahr  integer
#' @field monat  integer
#' @field monats_budget  list(\link{BudgetKategorie})
#' @field prognose_restjahr  list(\link{BudgetKategorie})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BudgetErgebnis <- R6::R6Class(
  "BudgetErgebnis",
  public = list(
    `jahr` = NULL,
    `monat` = NULL,
    `monats_budget` = NULL,
    `prognose_restjahr` = NULL,

    #' @description
    #' Initialize a new BudgetErgebnis class.
    #'
    #' @param jahr jahr
    #' @param monat monat
    #' @param monats_budget monats_budget
    #' @param prognose_restjahr prognose_restjahr
    #' @param ... Other optional arguments.
    initialize = function(`jahr`, `monat`, `monats_budget`, `prognose_restjahr`, ...) {
      if (!missing(`jahr`)) {
        if (!(is.numeric(`jahr`) && length(`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", `jahr`))
        }
        self$`jahr` <- `jahr`
      }
      if (!missing(`monat`)) {
        if (!(is.numeric(`monat`) && length(`monat`) == 1)) {
          stop(paste("Error! Invalid data for `monat`. Must be an integer:", `monat`))
        }
        self$`monat` <- `monat`
      }
      if (!missing(`monats_budget`)) {
        stopifnot(is.vector(`monats_budget`), length(`monats_budget`) != 0)
        sapply(`monats_budget`, function(x) stopifnot(R6::is.R6(x)))
        self$`monats_budget` <- `monats_budget`
      }
      if (!missing(`prognose_restjahr`)) {
        stopifnot(is.vector(`prognose_restjahr`), length(`prognose_restjahr`) != 0)
        sapply(`prognose_restjahr`, function(x) stopifnot(R6::is.R6(x)))
        self$`prognose_restjahr` <- `prognose_restjahr`
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
    #' @return BudgetErgebnis as a base R list.
    #' @examples
    #' # convert array of BudgetErgebnis (x) to a data frame
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
    #' Convert BudgetErgebnis to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BudgetErgebnisObject <- list()
      if (!is.null(self$`jahr`)) {
        BudgetErgebnisObject[["jahr"]] <-
          self$`jahr`
      }
      if (!is.null(self$`monat`)) {
        BudgetErgebnisObject[["monat"]] <-
          self$`monat`
      }
      if (!is.null(self$`monats_budget`)) {
        BudgetErgebnisObject[["monats_budget"]] <-
          self$extractSimpleType(self$`monats_budget`)
      }
      if (!is.null(self$`prognose_restjahr`)) {
        BudgetErgebnisObject[["prognose_restjahr"]] <-
          self$extractSimpleType(self$`prognose_restjahr`)
      }
      return(BudgetErgebnisObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of BudgetErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of BudgetErgebnis
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`jahr`)) {
        self$`jahr` <- this_object$`jahr`
      }
      if (!is.null(this_object$`monat`)) {
        self$`monat` <- this_object$`monat`
      }
      if (!is.null(this_object$`monats_budget`)) {
        self$`monats_budget` <- ApiClient$new()$deserializeObj(this_object$`monats_budget`, "array[BudgetKategorie]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`prognose_restjahr`)) {
        self$`prognose_restjahr` <- ApiClient$new()$deserializeObj(this_object$`prognose_restjahr`, "array[BudgetKategorie]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BudgetErgebnis in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BudgetErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of BudgetErgebnis
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`jahr` <- this_object$`jahr`
      self$`monat` <- this_object$`monat`
      self$`monats_budget` <- ApiClient$new()$deserializeObj(this_object$`monats_budget`, "array[BudgetKategorie]", loadNamespace("openapi"))
      self$`prognose_restjahr` <- ApiClient$new()$deserializeObj(this_object$`prognose_restjahr`, "array[BudgetKategorie]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to BudgetErgebnis and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `jahr`
      if (!is.null(input_json$`jahr`)) {
        if (!(is.numeric(input_json$`jahr`) && length(input_json$`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", input_json$`jahr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BudgetErgebnis: the required field `jahr` is missing."))
      }
      # check the required field `monat`
      if (!is.null(input_json$`monat`)) {
        if (!(is.numeric(input_json$`monat`) && length(input_json$`monat`) == 1)) {
          stop(paste("Error! Invalid data for `monat`. Must be an integer:", input_json$`monat`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BudgetErgebnis: the required field `monat` is missing."))
      }
      # check the required field `monats_budget`
      if (!is.null(input_json$`monats_budget`)) {
        stopifnot(is.vector(input_json$`monats_budget`), length(input_json$`monats_budget`) != 0)
        tmp <- sapply(input_json$`monats_budget`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BudgetErgebnis: the required field `monats_budget` is missing."))
      }
      # check the required field `prognose_restjahr`
      if (!is.null(input_json$`prognose_restjahr`)) {
        stopifnot(is.vector(input_json$`prognose_restjahr`), length(input_json$`prognose_restjahr`) != 0)
        tmp <- sapply(input_json$`prognose_restjahr`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BudgetErgebnis: the required field `prognose_restjahr` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BudgetErgebnis
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        return(FALSE)
      }

      # check if the required `monat` is null
      if (is.null(self$`monat`)) {
        return(FALSE)
      }

      if (self$`monat` < 0) {
        return(FALSE)
      }

      # check if the required `monats_budget` is null
      if (is.null(self$`monats_budget`)) {
        return(FALSE)
      }

      # check if the required `prognose_restjahr` is null
      if (is.null(self$`prognose_restjahr`)) {
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
      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        invalid_fields["jahr"] <- "Non-nullable required field `jahr` cannot be null."
      }

      # check if the required `monat` is null
      if (is.null(self$`monat`)) {
        invalid_fields["monat"] <- "Non-nullable required field `monat` cannot be null."
      }

      if (self$`monat` < 0) {
        invalid_fields["monat"] <- "Invalid value for `monat`, must be bigger than or equal to 0."
      }

      # check if the required `monats_budget` is null
      if (is.null(self$`monats_budget`)) {
        invalid_fields["monats_budget"] <- "Non-nullable required field `monats_budget` cannot be null."
      }

      # check if the required `prognose_restjahr` is null
      if (is.null(self$`prognose_restjahr`)) {
        invalid_fields["prognose_restjahr"] <- "Non-nullable required field `prognose_restjahr` cannot be null."
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
# BudgetErgebnis$unlock()
#
## Below is an example to define the print function
# BudgetErgebnis$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BudgetErgebnis$lock()

