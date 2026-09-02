#' Create a new ParticipationCreate
#'
#' @description
#' ParticipationCreate Class
#'
#' @docType class
#' @title ParticipationCreate
#' @description ParticipationCreate Class
#' @format An \code{R6Class} generator object
#' @field acquiredAt Datum des Erwerbs der Beteiligung. character [optional]
#' @field boardAppointment Bestellungsrecht für Geschäftsführung/Aufsichtsrat (§ 290 Abs. 2 Nr. 2 HGB). character [optional]
#' @field companyName Name des Beteiligungsunternehmens (§ 271 HGB). character [optional]
#' @field controlAgreement Beherrschungsvertrag (§ 290 Abs. 2 Nr. 3 HGB). character [optional]
#' @field legalForm Rechtsform, z. B. \"GmbH\". character [optional]
#' @field ownershipPct Anteilsquote in Prozent (§ 271 HGB; > 20 \% widerlegbare Vermutung). character [optional]
#' @field purposeVehicle Zweckgesellschaft (§ 290 Abs. 2 Nr. 4 HGB). character [optional]
#' @field votingMajority Stimmrechtsmehrheit (§ 290 Abs. 2 Nr. 1 HGB). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ParticipationCreate <- R6::R6Class(
  "ParticipationCreate",
  public = list(
    `acquiredAt` = NULL,
    `boardAppointment` = NULL,
    `companyName` = NULL,
    `controlAgreement` = NULL,
    `legalForm` = NULL,
    `ownershipPct` = NULL,
    `purposeVehicle` = NULL,
    `votingMajority` = NULL,

    #' @description
    #' Initialize a new ParticipationCreate class.
    #'
    #' @param acquiredAt Datum des Erwerbs der Beteiligung.
    #' @param boardAppointment Bestellungsrecht für Geschäftsführung/Aufsichtsrat (§ 290 Abs. 2 Nr. 2 HGB).
    #' @param companyName Name des Beteiligungsunternehmens (§ 271 HGB).
    #' @param controlAgreement Beherrschungsvertrag (§ 290 Abs. 2 Nr. 3 HGB).
    #' @param legalForm Rechtsform, z. B. \"GmbH\".
    #' @param ownershipPct Anteilsquote in Prozent (§ 271 HGB; > 20 \% widerlegbare Vermutung).
    #' @param purposeVehicle Zweckgesellschaft (§ 290 Abs. 2 Nr. 4 HGB).
    #' @param votingMajority Stimmrechtsmehrheit (§ 290 Abs. 2 Nr. 1 HGB).
    #' @param ... Other optional arguments.
    initialize = function(`acquiredAt` = NULL, `boardAppointment` = NULL, `companyName` = NULL, `controlAgreement` = NULL, `legalForm` = NULL, `ownershipPct` = NULL, `purposeVehicle` = NULL, `votingMajority` = NULL, ...) {
      if (!is.null(`acquiredAt`)) {
        if (!is.character(`acquiredAt`)) {
          stop(paste("Error! Invalid data for `acquiredAt`. Must be a string:", `acquiredAt`))
        }
        self$`acquiredAt` <- `acquiredAt`
      }
      if (!is.null(`boardAppointment`)) {
        if (!(is.logical(`boardAppointment`) && length(`boardAppointment`) == 1)) {
          stop(paste("Error! Invalid data for `boardAppointment`. Must be a boolean:", `boardAppointment`))
        }
        self$`boardAppointment` <- `boardAppointment`
      }
      if (!is.null(`companyName`)) {
        if (!(is.character(`companyName`) && length(`companyName`) == 1)) {
          stop(paste("Error! Invalid data for `companyName`. Must be a string:", `companyName`))
        }
        self$`companyName` <- `companyName`
      }
      if (!is.null(`controlAgreement`)) {
        if (!(is.logical(`controlAgreement`) && length(`controlAgreement`) == 1)) {
          stop(paste("Error! Invalid data for `controlAgreement`. Must be a boolean:", `controlAgreement`))
        }
        self$`controlAgreement` <- `controlAgreement`
      }
      if (!is.null(`legalForm`)) {
        if (!(is.character(`legalForm`) && length(`legalForm`) == 1)) {
          stop(paste("Error! Invalid data for `legalForm`. Must be a string:", `legalForm`))
        }
        self$`legalForm` <- `legalForm`
      }
      if (!is.null(`ownershipPct`)) {
        if (!(is.character(`ownershipPct`) && length(`ownershipPct`) == 1)) {
          stop(paste("Error! Invalid data for `ownershipPct`. Must be a string:", `ownershipPct`))
        }
        self$`ownershipPct` <- `ownershipPct`
      }
      if (!is.null(`purposeVehicle`)) {
        if (!(is.logical(`purposeVehicle`) && length(`purposeVehicle`) == 1)) {
          stop(paste("Error! Invalid data for `purposeVehicle`. Must be a boolean:", `purposeVehicle`))
        }
        self$`purposeVehicle` <- `purposeVehicle`
      }
      if (!is.null(`votingMajority`)) {
        if (!(is.logical(`votingMajority`) && length(`votingMajority`) == 1)) {
          stop(paste("Error! Invalid data for `votingMajority`. Must be a boolean:", `votingMajority`))
        }
        self$`votingMajority` <- `votingMajority`
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
    #' @return ParticipationCreate as a base R list.
    #' @examples
    #' # convert array of ParticipationCreate (x) to a data frame
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
    #' Convert ParticipationCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ParticipationCreateObject <- list()
      if (!is.null(self$`acquiredAt`)) {
        ParticipationCreateObject[["acquiredAt"]] <-
          self$`acquiredAt`
      }
      if (!is.null(self$`boardAppointment`)) {
        ParticipationCreateObject[["boardAppointment"]] <-
          self$`boardAppointment`
      }
      if (!is.null(self$`companyName`)) {
        ParticipationCreateObject[["companyName"]] <-
          self$`companyName`
      }
      if (!is.null(self$`controlAgreement`)) {
        ParticipationCreateObject[["controlAgreement"]] <-
          self$`controlAgreement`
      }
      if (!is.null(self$`legalForm`)) {
        ParticipationCreateObject[["legalForm"]] <-
          self$`legalForm`
      }
      if (!is.null(self$`ownershipPct`)) {
        ParticipationCreateObject[["ownershipPct"]] <-
          self$`ownershipPct`
      }
      if (!is.null(self$`purposeVehicle`)) {
        ParticipationCreateObject[["purposeVehicle"]] <-
          self$`purposeVehicle`
      }
      if (!is.null(self$`votingMajority`)) {
        ParticipationCreateObject[["votingMajority"]] <-
          self$`votingMajority`
      }
      return(ParticipationCreateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ParticipationCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ParticipationCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`acquiredAt`)) {
        self$`acquiredAt` <- this_object$`acquiredAt`
      }
      if (!is.null(this_object$`boardAppointment`)) {
        self$`boardAppointment` <- this_object$`boardAppointment`
      }
      if (!is.null(this_object$`companyName`)) {
        self$`companyName` <- this_object$`companyName`
      }
      if (!is.null(this_object$`controlAgreement`)) {
        self$`controlAgreement` <- this_object$`controlAgreement`
      }
      if (!is.null(this_object$`legalForm`)) {
        self$`legalForm` <- this_object$`legalForm`
      }
      if (!is.null(this_object$`ownershipPct`)) {
        self$`ownershipPct` <- this_object$`ownershipPct`
      }
      if (!is.null(this_object$`purposeVehicle`)) {
        self$`purposeVehicle` <- this_object$`purposeVehicle`
      }
      if (!is.null(this_object$`votingMajority`)) {
        self$`votingMajority` <- this_object$`votingMajority`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ParticipationCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ParticipationCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ParticipationCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`acquiredAt` <- this_object$`acquiredAt`
      self$`boardAppointment` <- this_object$`boardAppointment`
      self$`companyName` <- this_object$`companyName`
      self$`controlAgreement` <- this_object$`controlAgreement`
      self$`legalForm` <- this_object$`legalForm`
      self$`ownershipPct` <- this_object$`ownershipPct`
      self$`purposeVehicle` <- this_object$`purposeVehicle`
      self$`votingMajority` <- this_object$`votingMajority`
      self
    },

    #' @description
    #' Validate JSON input with respect to ParticipationCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ParticipationCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`companyName`) > 200) {
        return(FALSE)
      }
      if (nchar(self$`companyName`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`legalForm`) > 100) {
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
      if (nchar(self$`companyName`) > 200) {
        invalid_fields["companyName"] <- "Invalid length for `companyName`, must be smaller than or equal to 200."
      }
      if (nchar(self$`companyName`) < 1) {
        invalid_fields["companyName"] <- "Invalid length for `companyName`, must be bigger than or equal to 1."
      }

      if (nchar(self$`legalForm`) > 100) {
        invalid_fields["legalForm"] <- "Invalid length for `legalForm`, must be smaller than or equal to 100."
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
# ParticipationCreate$unlock()
#
## Below is an example to define the print function
# ParticipationCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ParticipationCreate$lock()

