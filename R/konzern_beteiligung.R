#' Create a new KonzernBeteiligung
#'
#' @description
#' KonzernBeteiligung Class
#'
#' @docType class
#' @title KonzernBeteiligung
#' @description KonzernBeteiligung Class
#' @format An \code{R6Class} generator object
#' @field company_name  character
#' @field control_basis Erfüllte Kontroll-Indikatoren (§ 290 Abs. 2 HGB) als deutsche Bezeichnungen. list(character)
#' @field controlled  character
#' @field ownership_pct  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
KonzernBeteiligung <- R6::R6Class(
  "KonzernBeteiligung",
  public = list(
    `company_name` = NULL,
    `control_basis` = NULL,
    `controlled` = NULL,
    `ownership_pct` = NULL,

    #' @description
    #' Initialize a new KonzernBeteiligung class.
    #'
    #' @param company_name company_name
    #' @param control_basis Erfüllte Kontroll-Indikatoren (§ 290 Abs. 2 HGB) als deutsche Bezeichnungen.
    #' @param controlled controlled
    #' @param ownership_pct ownership_pct
    #' @param ... Other optional arguments.
    initialize = function(`company_name`, `control_basis`, `controlled`, `ownership_pct`, ...) {
      if (!missing(`company_name`)) {
        if (!(is.character(`company_name`) && length(`company_name`) == 1)) {
          stop(paste("Error! Invalid data for `company_name`. Must be a string:", `company_name`))
        }
        self$`company_name` <- `company_name`
      }
      if (!missing(`control_basis`)) {
        stopifnot(is.vector(`control_basis`), length(`control_basis`) != 0)
        sapply(`control_basis`, function(x) stopifnot(is.character(x)))
        self$`control_basis` <- `control_basis`
      }
      if (!missing(`controlled`)) {
        if (!(is.logical(`controlled`) && length(`controlled`) == 1)) {
          stop(paste("Error! Invalid data for `controlled`. Must be a boolean:", `controlled`))
        }
        self$`controlled` <- `controlled`
      }
      if (!missing(`ownership_pct`)) {
        if (!(is.character(`ownership_pct`) && length(`ownership_pct`) == 1)) {
          stop(paste("Error! Invalid data for `ownership_pct`. Must be a string:", `ownership_pct`))
        }
        self$`ownership_pct` <- `ownership_pct`
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
    #' @return KonzernBeteiligung as a base R list.
    #' @examples
    #' # convert array of KonzernBeteiligung (x) to a data frame
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
    #' Convert KonzernBeteiligung to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      KonzernBeteiligungObject <- list()
      if (!is.null(self$`company_name`)) {
        KonzernBeteiligungObject[["company_name"]] <-
          self$`company_name`
      }
      if (!is.null(self$`control_basis`)) {
        KonzernBeteiligungObject[["control_basis"]] <-
          self$`control_basis`
      }
      if (!is.null(self$`controlled`)) {
        KonzernBeteiligungObject[["controlled"]] <-
          self$`controlled`
      }
      if (!is.null(self$`ownership_pct`)) {
        KonzernBeteiligungObject[["ownership_pct"]] <-
          self$`ownership_pct`
      }
      return(KonzernBeteiligungObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of KonzernBeteiligung
    #'
    #' @param input_json the JSON input
    #' @return the instance of KonzernBeteiligung
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`company_name`)) {
        self$`company_name` <- this_object$`company_name`
      }
      if (!is.null(this_object$`control_basis`)) {
        self$`control_basis` <- ApiClient$new()$deserializeObj(this_object$`control_basis`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`controlled`)) {
        self$`controlled` <- this_object$`controlled`
      }
      if (!is.null(this_object$`ownership_pct`)) {
        self$`ownership_pct` <- this_object$`ownership_pct`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return KonzernBeteiligung in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of KonzernBeteiligung
    #'
    #' @param input_json the JSON input
    #' @return the instance of KonzernBeteiligung
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`company_name` <- this_object$`company_name`
      self$`control_basis` <- ApiClient$new()$deserializeObj(this_object$`control_basis`, "array[character]", loadNamespace("openapi"))
      self$`controlled` <- this_object$`controlled`
      self$`ownership_pct` <- this_object$`ownership_pct`
      self
    },

    #' @description
    #' Validate JSON input with respect to KonzernBeteiligung and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `company_name`
      if (!is.null(input_json$`company_name`)) {
        if (!(is.character(input_json$`company_name`) && length(input_json$`company_name`) == 1)) {
          stop(paste("Error! Invalid data for `company_name`. Must be a string:", input_json$`company_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernBeteiligung: the required field `company_name` is missing."))
      }
      # check the required field `control_basis`
      if (!is.null(input_json$`control_basis`)) {
        stopifnot(is.vector(input_json$`control_basis`), length(input_json$`control_basis`) != 0)
        tmp <- sapply(input_json$`control_basis`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernBeteiligung: the required field `control_basis` is missing."))
      }
      # check the required field `controlled`
      if (!is.null(input_json$`controlled`)) {
        if (!(is.logical(input_json$`controlled`) && length(input_json$`controlled`) == 1)) {
          stop(paste("Error! Invalid data for `controlled`. Must be a boolean:", input_json$`controlled`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernBeteiligung: the required field `controlled` is missing."))
      }
      # check the required field `ownership_pct`
      if (!is.null(input_json$`ownership_pct`)) {
        if (!(is.character(input_json$`ownership_pct`) && length(input_json$`ownership_pct`) == 1)) {
          stop(paste("Error! Invalid data for `ownership_pct`. Must be a string:", input_json$`ownership_pct`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernBeteiligung: the required field `ownership_pct` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of KonzernBeteiligung
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `company_name` is null
      if (is.null(self$`company_name`)) {
        return(FALSE)
      }

      # check if the required `control_basis` is null
      if (is.null(self$`control_basis`)) {
        return(FALSE)
      }

      # check if the required `controlled` is null
      if (is.null(self$`controlled`)) {
        return(FALSE)
      }

      # check if the required `ownership_pct` is null
      if (is.null(self$`ownership_pct`)) {
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
      # check if the required `company_name` is null
      if (is.null(self$`company_name`)) {
        invalid_fields["company_name"] <- "Non-nullable required field `company_name` cannot be null."
      }

      # check if the required `control_basis` is null
      if (is.null(self$`control_basis`)) {
        invalid_fields["control_basis"] <- "Non-nullable required field `control_basis` cannot be null."
      }

      # check if the required `controlled` is null
      if (is.null(self$`controlled`)) {
        invalid_fields["controlled"] <- "Non-nullable required field `controlled` cannot be null."
      }

      # check if the required `ownership_pct` is null
      if (is.null(self$`ownership_pct`)) {
        invalid_fields["ownership_pct"] <- "Non-nullable required field `ownership_pct` cannot be null."
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
# KonzernBeteiligung$unlock()
#
## Below is an example to define the print function
# KonzernBeteiligung$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# KonzernBeteiligung$lock()

