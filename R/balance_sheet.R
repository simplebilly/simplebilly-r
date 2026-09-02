#' Create a new BalanceSheet
#'
#' @description
#' BalanceSheet Class
#'
#' @docType class
#' @title BalanceSheet
#' @description BalanceSheet Class
#' @format An \code{R6Class} generator object
#' @field assets  list(\link{BalanceItem})
#' @field balanced  character
#' @field equity_liabilities  list(\link{BalanceItem})
#' @field total_assets  character
#' @field total_equity_liabilities  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BalanceSheet <- R6::R6Class(
  "BalanceSheet",
  public = list(
    `assets` = NULL,
    `balanced` = NULL,
    `equity_liabilities` = NULL,
    `total_assets` = NULL,
    `total_equity_liabilities` = NULL,

    #' @description
    #' Initialize a new BalanceSheet class.
    #'
    #' @param assets assets
    #' @param balanced balanced
    #' @param equity_liabilities equity_liabilities
    #' @param total_assets total_assets
    #' @param total_equity_liabilities total_equity_liabilities
    #' @param ... Other optional arguments.
    initialize = function(`assets`, `balanced`, `equity_liabilities`, `total_assets`, `total_equity_liabilities`, ...) {
      if (!missing(`assets`)) {
        stopifnot(is.vector(`assets`), length(`assets`) != 0)
        sapply(`assets`, function(x) stopifnot(R6::is.R6(x)))
        self$`assets` <- `assets`
      }
      if (!missing(`balanced`)) {
        if (!(is.logical(`balanced`) && length(`balanced`) == 1)) {
          stop(paste("Error! Invalid data for `balanced`. Must be a boolean:", `balanced`))
        }
        self$`balanced` <- `balanced`
      }
      if (!missing(`equity_liabilities`)) {
        stopifnot(is.vector(`equity_liabilities`), length(`equity_liabilities`) != 0)
        sapply(`equity_liabilities`, function(x) stopifnot(R6::is.R6(x)))
        self$`equity_liabilities` <- `equity_liabilities`
      }
      if (!missing(`total_assets`)) {
        if (!(is.character(`total_assets`) && length(`total_assets`) == 1)) {
          stop(paste("Error! Invalid data for `total_assets`. Must be a string:", `total_assets`))
        }
        self$`total_assets` <- `total_assets`
      }
      if (!missing(`total_equity_liabilities`)) {
        if (!(is.character(`total_equity_liabilities`) && length(`total_equity_liabilities`) == 1)) {
          stop(paste("Error! Invalid data for `total_equity_liabilities`. Must be a string:", `total_equity_liabilities`))
        }
        self$`total_equity_liabilities` <- `total_equity_liabilities`
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
    #' @return BalanceSheet as a base R list.
    #' @examples
    #' # convert array of BalanceSheet (x) to a data frame
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
    #' Convert BalanceSheet to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BalanceSheetObject <- list()
      if (!is.null(self$`assets`)) {
        BalanceSheetObject[["assets"]] <-
          self$extractSimpleType(self$`assets`)
      }
      if (!is.null(self$`balanced`)) {
        BalanceSheetObject[["balanced"]] <-
          self$`balanced`
      }
      if (!is.null(self$`equity_liabilities`)) {
        BalanceSheetObject[["equity_liabilities"]] <-
          self$extractSimpleType(self$`equity_liabilities`)
      }
      if (!is.null(self$`total_assets`)) {
        BalanceSheetObject[["total_assets"]] <-
          self$`total_assets`
      }
      if (!is.null(self$`total_equity_liabilities`)) {
        BalanceSheetObject[["total_equity_liabilities"]] <-
          self$`total_equity_liabilities`
      }
      return(BalanceSheetObject)
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
    #' Deserialize JSON string into an instance of BalanceSheet
    #'
    #' @param input_json the JSON input
    #' @return the instance of BalanceSheet
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assets`)) {
        self$`assets` <- ApiClient$new()$deserializeObj(this_object$`assets`, "array[BalanceItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`balanced`)) {
        self$`balanced` <- this_object$`balanced`
      }
      if (!is.null(this_object$`equity_liabilities`)) {
        self$`equity_liabilities` <- ApiClient$new()$deserializeObj(this_object$`equity_liabilities`, "array[BalanceItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`total_assets`)) {
        self$`total_assets` <- this_object$`total_assets`
      }
      if (!is.null(this_object$`total_equity_liabilities`)) {
        self$`total_equity_liabilities` <- this_object$`total_equity_liabilities`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BalanceSheet in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BalanceSheet
    #'
    #' @param input_json the JSON input
    #' @return the instance of BalanceSheet
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assets` <- ApiClient$new()$deserializeObj(this_object$`assets`, "array[BalanceItem]", loadNamespace("openapi"))
      self$`balanced` <- this_object$`balanced`
      self$`equity_liabilities` <- ApiClient$new()$deserializeObj(this_object$`equity_liabilities`, "array[BalanceItem]", loadNamespace("openapi"))
      self$`total_assets` <- this_object$`total_assets`
      self$`total_equity_liabilities` <- this_object$`total_equity_liabilities`
      self
    },

    #' @description
    #' Validate JSON input with respect to BalanceSheet and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `assets`
      if (!is.null(input_json$`assets`)) {
        stopifnot(is.vector(input_json$`assets`), length(input_json$`assets`) != 0)
        tmp <- sapply(input_json$`assets`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BalanceSheet: the required field `assets` is missing."))
      }
      # check the required field `balanced`
      if (!is.null(input_json$`balanced`)) {
        if (!(is.logical(input_json$`balanced`) && length(input_json$`balanced`) == 1)) {
          stop(paste("Error! Invalid data for `balanced`. Must be a boolean:", input_json$`balanced`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BalanceSheet: the required field `balanced` is missing."))
      }
      # check the required field `equity_liabilities`
      if (!is.null(input_json$`equity_liabilities`)) {
        stopifnot(is.vector(input_json$`equity_liabilities`), length(input_json$`equity_liabilities`) != 0)
        tmp <- sapply(input_json$`equity_liabilities`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BalanceSheet: the required field `equity_liabilities` is missing."))
      }
      # check the required field `total_assets`
      if (!is.null(input_json$`total_assets`)) {
        if (!(is.character(input_json$`total_assets`) && length(input_json$`total_assets`) == 1)) {
          stop(paste("Error! Invalid data for `total_assets`. Must be a string:", input_json$`total_assets`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BalanceSheet: the required field `total_assets` is missing."))
      }
      # check the required field `total_equity_liabilities`
      if (!is.null(input_json$`total_equity_liabilities`)) {
        if (!(is.character(input_json$`total_equity_liabilities`) && length(input_json$`total_equity_liabilities`) == 1)) {
          stop(paste("Error! Invalid data for `total_equity_liabilities`. Must be a string:", input_json$`total_equity_liabilities`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BalanceSheet: the required field `total_equity_liabilities` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BalanceSheet
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `assets` is null
      if (is.null(self$`assets`)) {
        return(FALSE)
      }

      # check if the required `balanced` is null
      if (is.null(self$`balanced`)) {
        return(FALSE)
      }

      # check if the required `equity_liabilities` is null
      if (is.null(self$`equity_liabilities`)) {
        return(FALSE)
      }

      # check if the required `total_assets` is null
      if (is.null(self$`total_assets`)) {
        return(FALSE)
      }

      # check if the required `total_equity_liabilities` is null
      if (is.null(self$`total_equity_liabilities`)) {
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
      # check if the required `assets` is null
      if (is.null(self$`assets`)) {
        invalid_fields["assets"] <- "Non-nullable required field `assets` cannot be null."
      }

      # check if the required `balanced` is null
      if (is.null(self$`balanced`)) {
        invalid_fields["balanced"] <- "Non-nullable required field `balanced` cannot be null."
      }

      # check if the required `equity_liabilities` is null
      if (is.null(self$`equity_liabilities`)) {
        invalid_fields["equity_liabilities"] <- "Non-nullable required field `equity_liabilities` cannot be null."
      }

      # check if the required `total_assets` is null
      if (is.null(self$`total_assets`)) {
        invalid_fields["total_assets"] <- "Non-nullable required field `total_assets` cannot be null."
      }

      # check if the required `total_equity_liabilities` is null
      if (is.null(self$`total_equity_liabilities`)) {
        invalid_fields["total_equity_liabilities"] <- "Non-nullable required field `total_equity_liabilities` cannot be null."
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
# BalanceSheet$unlock()
#
## Below is an example to define the print function
# BalanceSheet$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BalanceSheet$lock()

