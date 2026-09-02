#' Create a new InstituteProfile
#'
#' @description
#' InstituteProfile Class
#'
#' @docType class
#' @title InstituteProfile
#' @description InstituteProfile Class
#' @format An \code{R6Class} generator object
#' @field instituteType Institutsart: \"kein\" | \"kreditinstitut\" | \"finanzdienstleistungsinstitut\" | \"finanzunternehmen\" | \"versicherung\". \link{InstituteType} [optional]
#' @field kapitalmarktorientiert Kapitalmarktorientierung (§ 325 Abs. 4 HGB): Offenlegungsfrist 4 statt 12 Monate. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InstituteProfile <- R6::R6Class(
  "InstituteProfile",
  public = list(
    `instituteType` = NULL,
    `kapitalmarktorientiert` = NULL,

    #' @description
    #' Initialize a new InstituteProfile class.
    #'
    #' @param instituteType Institutsart: \"kein\" | \"kreditinstitut\" | \"finanzdienstleistungsinstitut\" | \"finanzunternehmen\" | \"versicherung\".
    #' @param kapitalmarktorientiert Kapitalmarktorientierung (§ 325 Abs. 4 HGB): Offenlegungsfrist 4 statt 12 Monate.
    #' @param ... Other optional arguments.
    initialize = function(`instituteType` = NULL, `kapitalmarktorientiert` = NULL, ...) {
      if (!is.null(`instituteType`)) {
        if (!(`instituteType` %in% c())) {
          stop(paste("Error! \"", `instituteType`, "\" cannot be assigned to `instituteType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`instituteType`))
        self$`instituteType` <- `instituteType`
      }
      if (!is.null(`kapitalmarktorientiert`)) {
        if (!(is.logical(`kapitalmarktorientiert`) && length(`kapitalmarktorientiert`) == 1)) {
          stop(paste("Error! Invalid data for `kapitalmarktorientiert`. Must be a boolean:", `kapitalmarktorientiert`))
        }
        self$`kapitalmarktorientiert` <- `kapitalmarktorientiert`
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
    #' @return InstituteProfile as a base R list.
    #' @examples
    #' # convert array of InstituteProfile (x) to a data frame
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
    #' Convert InstituteProfile to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      InstituteProfileObject <- list()
      if (!is.null(self$`instituteType`)) {
        InstituteProfileObject[["instituteType"]] <-
          self$extractSimpleType(self$`instituteType`)
      }
      if (!is.null(self$`kapitalmarktorientiert`)) {
        InstituteProfileObject[["kapitalmarktorientiert"]] <-
          self$`kapitalmarktorientiert`
      }
      return(InstituteProfileObject)
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
    #' Deserialize JSON string into an instance of InstituteProfile
    #'
    #' @param input_json the JSON input
    #' @return the instance of InstituteProfile
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`instituteType`)) {
        `institutetype_object` <- InstituteType$new()
        `institutetype_object`$fromJSON(jsonlite::toJSON(this_object$`instituteType`, auto_unbox = TRUE, digits = NA))
        self$`instituteType` <- `institutetype_object`
      }
      if (!is.null(this_object$`kapitalmarktorientiert`)) {
        self$`kapitalmarktorientiert` <- this_object$`kapitalmarktorientiert`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return InstituteProfile in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of InstituteProfile
    #'
    #' @param input_json the JSON input
    #' @return the instance of InstituteProfile
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`instituteType` <- InstituteType$new()$fromJSON(jsonlite::toJSON(this_object$`instituteType`, auto_unbox = TRUE, digits = NA))
      self$`kapitalmarktorientiert` <- this_object$`kapitalmarktorientiert`
      self
    },

    #' @description
    #' Validate JSON input with respect to InstituteProfile and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of InstituteProfile
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# InstituteProfile$unlock()
#
## Below is an example to define the print function
# InstituteProfile$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# InstituteProfile$lock()

