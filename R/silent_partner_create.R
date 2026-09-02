#' Create a new SilentPartnerCreate
#'
#' @description
#' SilentPartnerCreate Class
#'
#' @docType class
#' @title SilentPartnerCreate
#' @description SilentPartnerCreate Class
#' @format An \code{R6Class} generator object
#' @field contractDate Datum des Vertragsabschlusses. character [optional]
#' @field einlage Einlage (§ 230 HGB). character [optional]
#' @field gewinnquotePct Gewinnbeteiligungsquote in Prozent (§ 231 HGB). character [optional]
#' @field gewinnvortrag Nicht erhobene Gewinne (§ 232 Abs. 3 HGB). character [optional]
#' @field instrumentType Instrument: \"typisch\" | \"atypisch\" | \"partiarisches_darlehen\" | \"genussrecht\". \link{InstrumentType}
#' @field kestPflichtig 25 \% Kapitalertragsteuer einbehalten (§ 43 Abs. 1 Nr. 3 EStG; typisch + partiarisches Darlehen). character [optional]
#' @field name Name des stillen Gesellschafters. character [optional]
#' @field notes Freitext-Notizen. character [optional]
#' @field verlustVerrechnungskonto Kumulierte Verluste gegen die Einlage (§ 232 Abs. 2 HGB, ≤ Einlage). character [optional]
#' @field verlustbeteiligung Verlustbeteiligung (§ 231 Abs. 2 HGB; kann ausgeschlossen werden). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SilentPartnerCreate <- R6::R6Class(
  "SilentPartnerCreate",
  public = list(
    `contractDate` = NULL,
    `einlage` = NULL,
    `gewinnquotePct` = NULL,
    `gewinnvortrag` = NULL,
    `instrumentType` = NULL,
    `kestPflichtig` = NULL,
    `name` = NULL,
    `notes` = NULL,
    `verlustVerrechnungskonto` = NULL,
    `verlustbeteiligung` = NULL,

    #' @description
    #' Initialize a new SilentPartnerCreate class.
    #'
    #' @param instrumentType Instrument: \"typisch\" | \"atypisch\" | \"partiarisches_darlehen\" | \"genussrecht\".
    #' @param contractDate Datum des Vertragsabschlusses.
    #' @param einlage Einlage (§ 230 HGB).
    #' @param gewinnquotePct Gewinnbeteiligungsquote in Prozent (§ 231 HGB).
    #' @param gewinnvortrag Nicht erhobene Gewinne (§ 232 Abs. 3 HGB).
    #' @param kestPflichtig 25 \% Kapitalertragsteuer einbehalten (§ 43 Abs. 1 Nr. 3 EStG; typisch + partiarisches Darlehen).
    #' @param name Name des stillen Gesellschafters.
    #' @param notes Freitext-Notizen.
    #' @param verlustVerrechnungskonto Kumulierte Verluste gegen die Einlage (§ 232 Abs. 2 HGB, ≤ Einlage).
    #' @param verlustbeteiligung Verlustbeteiligung (§ 231 Abs. 2 HGB; kann ausgeschlossen werden).
    #' @param ... Other optional arguments.
    initialize = function(`instrumentType`, `contractDate` = NULL, `einlage` = NULL, `gewinnquotePct` = NULL, `gewinnvortrag` = NULL, `kestPflichtig` = NULL, `name` = NULL, `notes` = NULL, `verlustVerrechnungskonto` = NULL, `verlustbeteiligung` = NULL, ...) {
      if (!missing(`instrumentType`)) {
        if (!(`instrumentType` %in% c())) {
          stop(paste("Error! \"", `instrumentType`, "\" cannot be assigned to `instrumentType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`instrumentType`))
        self$`instrumentType` <- `instrumentType`
      }
      if (!is.null(`contractDate`)) {
        if (!is.character(`contractDate`)) {
          stop(paste("Error! Invalid data for `contractDate`. Must be a string:", `contractDate`))
        }
        self$`contractDate` <- `contractDate`
      }
      if (!is.null(`einlage`)) {
        if (!(is.character(`einlage`) && length(`einlage`) == 1)) {
          stop(paste("Error! Invalid data for `einlage`. Must be a string:", `einlage`))
        }
        self$`einlage` <- `einlage`
      }
      if (!is.null(`gewinnquotePct`)) {
        if (!(is.character(`gewinnquotePct`) && length(`gewinnquotePct`) == 1)) {
          stop(paste("Error! Invalid data for `gewinnquotePct`. Must be a string:", `gewinnquotePct`))
        }
        self$`gewinnquotePct` <- `gewinnquotePct`
      }
      if (!is.null(`gewinnvortrag`)) {
        if (!(is.character(`gewinnvortrag`) && length(`gewinnvortrag`) == 1)) {
          stop(paste("Error! Invalid data for `gewinnvortrag`. Must be a string:", `gewinnvortrag`))
        }
        self$`gewinnvortrag` <- `gewinnvortrag`
      }
      if (!is.null(`kestPflichtig`)) {
        if (!(is.logical(`kestPflichtig`) && length(`kestPflichtig`) == 1)) {
          stop(paste("Error! Invalid data for `kestPflichtig`. Must be a boolean:", `kestPflichtig`))
        }
        self$`kestPflichtig` <- `kestPflichtig`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`verlustVerrechnungskonto`)) {
        if (!(is.character(`verlustVerrechnungskonto`) && length(`verlustVerrechnungskonto`) == 1)) {
          stop(paste("Error! Invalid data for `verlustVerrechnungskonto`. Must be a string:", `verlustVerrechnungskonto`))
        }
        self$`verlustVerrechnungskonto` <- `verlustVerrechnungskonto`
      }
      if (!is.null(`verlustbeteiligung`)) {
        if (!(is.logical(`verlustbeteiligung`) && length(`verlustbeteiligung`) == 1)) {
          stop(paste("Error! Invalid data for `verlustbeteiligung`. Must be a boolean:", `verlustbeteiligung`))
        }
        self$`verlustbeteiligung` <- `verlustbeteiligung`
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
    #' @return SilentPartnerCreate as a base R list.
    #' @examples
    #' # convert array of SilentPartnerCreate (x) to a data frame
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
    #' Convert SilentPartnerCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SilentPartnerCreateObject <- list()
      if (!is.null(self$`contractDate`)) {
        SilentPartnerCreateObject[["contractDate"]] <-
          self$`contractDate`
      }
      if (!is.null(self$`einlage`)) {
        SilentPartnerCreateObject[["einlage"]] <-
          self$`einlage`
      }
      if (!is.null(self$`gewinnquotePct`)) {
        SilentPartnerCreateObject[["gewinnquotePct"]] <-
          self$`gewinnquotePct`
      }
      if (!is.null(self$`gewinnvortrag`)) {
        SilentPartnerCreateObject[["gewinnvortrag"]] <-
          self$`gewinnvortrag`
      }
      if (!is.null(self$`instrumentType`)) {
        SilentPartnerCreateObject[["instrumentType"]] <-
          self$extractSimpleType(self$`instrumentType`)
      }
      if (!is.null(self$`kestPflichtig`)) {
        SilentPartnerCreateObject[["kestPflichtig"]] <-
          self$`kestPflichtig`
      }
      if (!is.null(self$`name`)) {
        SilentPartnerCreateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`notes`)) {
        SilentPartnerCreateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`verlustVerrechnungskonto`)) {
        SilentPartnerCreateObject[["verlustVerrechnungskonto"]] <-
          self$`verlustVerrechnungskonto`
      }
      if (!is.null(self$`verlustbeteiligung`)) {
        SilentPartnerCreateObject[["verlustbeteiligung"]] <-
          self$`verlustbeteiligung`
      }
      return(SilentPartnerCreateObject)
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
    #' Deserialize JSON string into an instance of SilentPartnerCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of SilentPartnerCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`contractDate`)) {
        self$`contractDate` <- this_object$`contractDate`
      }
      if (!is.null(this_object$`einlage`)) {
        self$`einlage` <- this_object$`einlage`
      }
      if (!is.null(this_object$`gewinnquotePct`)) {
        self$`gewinnquotePct` <- this_object$`gewinnquotePct`
      }
      if (!is.null(this_object$`gewinnvortrag`)) {
        self$`gewinnvortrag` <- this_object$`gewinnvortrag`
      }
      if (!is.null(this_object$`instrumentType`)) {
        `instrumenttype_object` <- InstrumentType$new()
        `instrumenttype_object`$fromJSON(jsonlite::toJSON(this_object$`instrumentType`, auto_unbox = TRUE, digits = NA))
        self$`instrumentType` <- `instrumenttype_object`
      }
      if (!is.null(this_object$`kestPflichtig`)) {
        self$`kestPflichtig` <- this_object$`kestPflichtig`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`verlustVerrechnungskonto`)) {
        self$`verlustVerrechnungskonto` <- this_object$`verlustVerrechnungskonto`
      }
      if (!is.null(this_object$`verlustbeteiligung`)) {
        self$`verlustbeteiligung` <- this_object$`verlustbeteiligung`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SilentPartnerCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SilentPartnerCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of SilentPartnerCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`contractDate` <- this_object$`contractDate`
      self$`einlage` <- this_object$`einlage`
      self$`gewinnquotePct` <- this_object$`gewinnquotePct`
      self$`gewinnvortrag` <- this_object$`gewinnvortrag`
      self$`instrumentType` <- InstrumentType$new()$fromJSON(jsonlite::toJSON(this_object$`instrumentType`, auto_unbox = TRUE, digits = NA))
      self$`kestPflichtig` <- this_object$`kestPflichtig`
      self$`name` <- this_object$`name`
      self$`notes` <- this_object$`notes`
      self$`verlustVerrechnungskonto` <- this_object$`verlustVerrechnungskonto`
      self$`verlustbeteiligung` <- this_object$`verlustbeteiligung`
      self
    },

    #' @description
    #' Validate JSON input with respect to SilentPartnerCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `instrumentType`
      if (!is.null(input_json$`instrumentType`)) {
        stopifnot(R6::is.R6(input_json$`instrumentType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SilentPartnerCreate: the required field `instrumentType` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SilentPartnerCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `instrumentType` is null
      if (is.null(self$`instrumentType`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 200) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`notes`) > 500) {
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
      # check if the required `instrumentType` is null
      if (is.null(self$`instrumentType`)) {
        invalid_fields["instrumentType"] <- "Non-nullable required field `instrumentType` cannot be null."
      }

      if (nchar(self$`name`) > 200) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 200."
      }
      if (nchar(self$`name`) < 1) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 1."
      }

      if (nchar(self$`notes`) > 500) {
        invalid_fields["notes"] <- "Invalid length for `notes`, must be smaller than or equal to 500."
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
# SilentPartnerCreate$unlock()
#
## Below is an example to define the print function
# SilentPartnerCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SilentPartnerCreate$lock()

