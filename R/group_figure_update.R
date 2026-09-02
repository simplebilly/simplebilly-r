#' Create a new GroupFigureUpdate
#'
#' @description
#' GroupFigureUpdate Class
#'
#' @docType class
#' @title GroupFigureUpdate
#' @description GroupFigureUpdate Class
#' @format An \code{R6Class} generator object
#' @field bilanzsumme Bilanzsumme in EUR (§ 293 Abs. 1 Nr. 1 HGB). character [optional]
#' @field exemptionClaimed § 291-Befreiung in Anspruch genommen. character [optional]
#' @field mitarbeiter Durchschnittliche Arbeitnehmerzahl (§ 293 Abs. 1 Nr. 3 HGB). integer [optional]
#' @field nettoUmsatz Netto-Umsatzerlöse in EUR (§ 293 Abs. 1 Nr. 2 HGB). character [optional]
#' @field parentName Name des Mutterunternehmens (§ 291 HGB, Zwischenholding). character [optional]
#' @field parentSitus Sitz des Mutterunternehmens, z. B. \"EU/EWR\" (§ 291 HGB). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GroupFigureUpdate <- R6::R6Class(
  "GroupFigureUpdate",
  public = list(
    `bilanzsumme` = NULL,
    `exemptionClaimed` = NULL,
    `mitarbeiter` = NULL,
    `nettoUmsatz` = NULL,
    `parentName` = NULL,
    `parentSitus` = NULL,

    #' @description
    #' Initialize a new GroupFigureUpdate class.
    #'
    #' @param bilanzsumme Bilanzsumme in EUR (§ 293 Abs. 1 Nr. 1 HGB).
    #' @param exemptionClaimed § 291-Befreiung in Anspruch genommen.
    #' @param mitarbeiter Durchschnittliche Arbeitnehmerzahl (§ 293 Abs. 1 Nr. 3 HGB).
    #' @param nettoUmsatz Netto-Umsatzerlöse in EUR (§ 293 Abs. 1 Nr. 2 HGB).
    #' @param parentName Name des Mutterunternehmens (§ 291 HGB, Zwischenholding).
    #' @param parentSitus Sitz des Mutterunternehmens, z. B. \"EU/EWR\" (§ 291 HGB).
    #' @param ... Other optional arguments.
    initialize = function(`bilanzsumme` = NULL, `exemptionClaimed` = NULL, `mitarbeiter` = NULL, `nettoUmsatz` = NULL, `parentName` = NULL, `parentSitus` = NULL, ...) {
      if (!is.null(`bilanzsumme`)) {
        if (!(is.character(`bilanzsumme`) && length(`bilanzsumme`) == 1)) {
          stop(paste("Error! Invalid data for `bilanzsumme`. Must be a string:", `bilanzsumme`))
        }
        self$`bilanzsumme` <- `bilanzsumme`
      }
      if (!is.null(`exemptionClaimed`)) {
        if (!(is.logical(`exemptionClaimed`) && length(`exemptionClaimed`) == 1)) {
          stop(paste("Error! Invalid data for `exemptionClaimed`. Must be a boolean:", `exemptionClaimed`))
        }
        self$`exemptionClaimed` <- `exemptionClaimed`
      }
      if (!is.null(`mitarbeiter`)) {
        if (!(is.numeric(`mitarbeiter`) && length(`mitarbeiter`) == 1)) {
          stop(paste("Error! Invalid data for `mitarbeiter`. Must be an integer:", `mitarbeiter`))
        }
        self$`mitarbeiter` <- `mitarbeiter`
      }
      if (!is.null(`nettoUmsatz`)) {
        if (!(is.character(`nettoUmsatz`) && length(`nettoUmsatz`) == 1)) {
          stop(paste("Error! Invalid data for `nettoUmsatz`. Must be a string:", `nettoUmsatz`))
        }
        self$`nettoUmsatz` <- `nettoUmsatz`
      }
      if (!is.null(`parentName`)) {
        if (!(is.character(`parentName`) && length(`parentName`) == 1)) {
          stop(paste("Error! Invalid data for `parentName`. Must be a string:", `parentName`))
        }
        self$`parentName` <- `parentName`
      }
      if (!is.null(`parentSitus`)) {
        if (!(is.character(`parentSitus`) && length(`parentSitus`) == 1)) {
          stop(paste("Error! Invalid data for `parentSitus`. Must be a string:", `parentSitus`))
        }
        self$`parentSitus` <- `parentSitus`
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
    #' @return GroupFigureUpdate as a base R list.
    #' @examples
    #' # convert array of GroupFigureUpdate (x) to a data frame
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
    #' Convert GroupFigureUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GroupFigureUpdateObject <- list()
      if (!is.null(self$`bilanzsumme`)) {
        GroupFigureUpdateObject[["bilanzsumme"]] <-
          self$`bilanzsumme`
      }
      if (!is.null(self$`exemptionClaimed`)) {
        GroupFigureUpdateObject[["exemptionClaimed"]] <-
          self$`exemptionClaimed`
      }
      if (!is.null(self$`mitarbeiter`)) {
        GroupFigureUpdateObject[["mitarbeiter"]] <-
          self$`mitarbeiter`
      }
      if (!is.null(self$`nettoUmsatz`)) {
        GroupFigureUpdateObject[["nettoUmsatz"]] <-
          self$`nettoUmsatz`
      }
      if (!is.null(self$`parentName`)) {
        GroupFigureUpdateObject[["parentName"]] <-
          self$`parentName`
      }
      if (!is.null(self$`parentSitus`)) {
        GroupFigureUpdateObject[["parentSitus"]] <-
          self$`parentSitus`
      }
      return(GroupFigureUpdateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GroupFigureUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of GroupFigureUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bilanzsumme`)) {
        self$`bilanzsumme` <- this_object$`bilanzsumme`
      }
      if (!is.null(this_object$`exemptionClaimed`)) {
        self$`exemptionClaimed` <- this_object$`exemptionClaimed`
      }
      if (!is.null(this_object$`mitarbeiter`)) {
        self$`mitarbeiter` <- this_object$`mitarbeiter`
      }
      if (!is.null(this_object$`nettoUmsatz`)) {
        self$`nettoUmsatz` <- this_object$`nettoUmsatz`
      }
      if (!is.null(this_object$`parentName`)) {
        self$`parentName` <- this_object$`parentName`
      }
      if (!is.null(this_object$`parentSitus`)) {
        self$`parentSitus` <- this_object$`parentSitus`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GroupFigureUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GroupFigureUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of GroupFigureUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bilanzsumme` <- this_object$`bilanzsumme`
      self$`exemptionClaimed` <- this_object$`exemptionClaimed`
      self$`mitarbeiter` <- this_object$`mitarbeiter`
      self$`nettoUmsatz` <- this_object$`nettoUmsatz`
      self$`parentName` <- this_object$`parentName`
      self$`parentSitus` <- this_object$`parentSitus`
      self
    },

    #' @description
    #' Validate JSON input with respect to GroupFigureUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GroupFigureUpdate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`parentName`) > 200) {
        return(FALSE)
      }

      if (nchar(self$`parentSitus`) > 100) {
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
      if (nchar(self$`parentName`) > 200) {
        invalid_fields["parentName"] <- "Invalid length for `parentName`, must be smaller than or equal to 200."
      }

      if (nchar(self$`parentSitus`) > 100) {
        invalid_fields["parentSitus"] <- "Invalid length for `parentSitus`, must be smaller than or equal to 100."
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
# GroupFigureUpdate$unlock()
#
## Below is an example to define the print function
# GroupFigureUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GroupFigureUpdate$lock()

