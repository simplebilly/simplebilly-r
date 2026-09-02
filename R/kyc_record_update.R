#' Create a new KycRecordUpdate
#'
#' @description
#' KycRecordUpdate Class
#'
#' @docType class
#' @title KycRecordUpdate
#' @description KycRecordUpdate Class
#' @format An \code{R6Class} generator object
#' @field customerId Referenz auf den Kunden/Kontakt. character [optional]
#' @field customerName Name des Kunden (für die Suche). character [optional]
#' @field kycDate Datum der KYC-Prüfung (GwG § 8). character [optional]
#' @field notes Freitext-Notizen. character [optional]
#' @field retentionUntil Aufbewahrungsfrist (GwG § 8 Abs. 4: 5 Jahre). character [optional]
#' @field riskAssessment Risikoeinschätzung (z. B. Risikoklasse). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
KycRecordUpdate <- R6::R6Class(
  "KycRecordUpdate",
  public = list(
    `customerId` = NULL,
    `customerName` = NULL,
    `kycDate` = NULL,
    `notes` = NULL,
    `retentionUntil` = NULL,
    `riskAssessment` = NULL,

    #' @description
    #' Initialize a new KycRecordUpdate class.
    #'
    #' @param customerId Referenz auf den Kunden/Kontakt.
    #' @param customerName Name des Kunden (für die Suche).
    #' @param kycDate Datum der KYC-Prüfung (GwG § 8).
    #' @param notes Freitext-Notizen.
    #' @param retentionUntil Aufbewahrungsfrist (GwG § 8 Abs. 4: 5 Jahre).
    #' @param riskAssessment Risikoeinschätzung (z. B. Risikoklasse).
    #' @param ... Other optional arguments.
    initialize = function(`customerId` = NULL, `customerName` = NULL, `kycDate` = NULL, `notes` = NULL, `retentionUntil` = NULL, `riskAssessment` = NULL, ...) {
      if (!is.null(`customerId`)) {
        if (!(is.character(`customerId`) && length(`customerId`) == 1)) {
          stop(paste("Error! Invalid data for `customerId`. Must be a string:", `customerId`))
        }
        self$`customerId` <- `customerId`
      }
      if (!is.null(`customerName`)) {
        if (!(is.character(`customerName`) && length(`customerName`) == 1)) {
          stop(paste("Error! Invalid data for `customerName`. Must be a string:", `customerName`))
        }
        self$`customerName` <- `customerName`
      }
      if (!is.null(`kycDate`)) {
        if (!is.character(`kycDate`)) {
          stop(paste("Error! Invalid data for `kycDate`. Must be a string:", `kycDate`))
        }
        self$`kycDate` <- `kycDate`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`retentionUntil`)) {
        if (!is.character(`retentionUntil`)) {
          stop(paste("Error! Invalid data for `retentionUntil`. Must be a string:", `retentionUntil`))
        }
        self$`retentionUntil` <- `retentionUntil`
      }
      if (!is.null(`riskAssessment`)) {
        if (!(is.character(`riskAssessment`) && length(`riskAssessment`) == 1)) {
          stop(paste("Error! Invalid data for `riskAssessment`. Must be a string:", `riskAssessment`))
        }
        self$`riskAssessment` <- `riskAssessment`
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
    #' @return KycRecordUpdate as a base R list.
    #' @examples
    #' # convert array of KycRecordUpdate (x) to a data frame
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
    #' Convert KycRecordUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      KycRecordUpdateObject <- list()
      if (!is.null(self$`customerId`)) {
        KycRecordUpdateObject[["customerId"]] <-
          self$`customerId`
      }
      if (!is.null(self$`customerName`)) {
        KycRecordUpdateObject[["customerName"]] <-
          self$`customerName`
      }
      if (!is.null(self$`kycDate`)) {
        KycRecordUpdateObject[["kycDate"]] <-
          self$`kycDate`
      }
      if (!is.null(self$`notes`)) {
        KycRecordUpdateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`retentionUntil`)) {
        KycRecordUpdateObject[["retentionUntil"]] <-
          self$`retentionUntil`
      }
      if (!is.null(self$`riskAssessment`)) {
        KycRecordUpdateObject[["riskAssessment"]] <-
          self$`riskAssessment`
      }
      return(KycRecordUpdateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of KycRecordUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of KycRecordUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`customerId`)) {
        self$`customerId` <- this_object$`customerId`
      }
      if (!is.null(this_object$`customerName`)) {
        self$`customerName` <- this_object$`customerName`
      }
      if (!is.null(this_object$`kycDate`)) {
        self$`kycDate` <- this_object$`kycDate`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`retentionUntil`)) {
        self$`retentionUntil` <- this_object$`retentionUntil`
      }
      if (!is.null(this_object$`riskAssessment`)) {
        self$`riskAssessment` <- this_object$`riskAssessment`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return KycRecordUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of KycRecordUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of KycRecordUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`customerId` <- this_object$`customerId`
      self$`customerName` <- this_object$`customerName`
      self$`kycDate` <- this_object$`kycDate`
      self$`notes` <- this_object$`notes`
      self$`retentionUntil` <- this_object$`retentionUntil`
      self$`riskAssessment` <- this_object$`riskAssessment`
      self
    },

    #' @description
    #' Validate JSON input with respect to KycRecordUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of KycRecordUpdate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`customerName`) > 200) {
        return(FALSE)
      }
      if (nchar(self$`customerName`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`notes`) > 500) {
        return(FALSE)
      }

      if (nchar(self$`riskAssessment`) > 500) {
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
      if (nchar(self$`customerName`) > 200) {
        invalid_fields["customerName"] <- "Invalid length for `customerName`, must be smaller than or equal to 200."
      }
      if (nchar(self$`customerName`) < 1) {
        invalid_fields["customerName"] <- "Invalid length for `customerName`, must be bigger than or equal to 1."
      }

      if (nchar(self$`notes`) > 500) {
        invalid_fields["notes"] <- "Invalid length for `notes`, must be smaller than or equal to 500."
      }

      if (nchar(self$`riskAssessment`) > 500) {
        invalid_fields["riskAssessment"] <- "Invalid length for `riskAssessment`, must be smaller than or equal to 500."
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
# KycRecordUpdate$unlock()
#
## Below is an example to define the print function
# KycRecordUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# KycRecordUpdate$lock()

