#' Create a new AttachmentCreate
#'
#' @description
#' AttachmentCreate Class
#'
#' @docType class
#' @title AttachmentCreate
#' @description AttachmentCreate Class
#' @format An \code{R6Class} generator object
#' @field contactId Contact this attachment belongs to (per-contact DMS). References the contact entity. character [optional]
#' @field fileName  character
#' @field fileSize  integer [optional]
#' @field mimeType  character [optional]
#' @field originalName  character
#' @field pdfaPath  character [optional]
#' @field sha256Hash  character [optional]
#' @field uploadedBy  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AttachmentCreate <- R6::R6Class(
  "AttachmentCreate",
  public = list(
    `contactId` = NULL,
    `fileName` = NULL,
    `fileSize` = NULL,
    `mimeType` = NULL,
    `originalName` = NULL,
    `pdfaPath` = NULL,
    `sha256Hash` = NULL,
    `uploadedBy` = NULL,

    #' @description
    #' Initialize a new AttachmentCreate class.
    #'
    #' @param fileName fileName
    #' @param originalName originalName
    #' @param contactId Contact this attachment belongs to (per-contact DMS). References the contact entity.
    #' @param fileSize fileSize
    #' @param mimeType mimeType
    #' @param pdfaPath pdfaPath
    #' @param sha256Hash sha256Hash
    #' @param uploadedBy uploadedBy
    #' @param ... Other optional arguments.
    initialize = function(`fileName`, `originalName`, `contactId` = NULL, `fileSize` = NULL, `mimeType` = NULL, `pdfaPath` = NULL, `sha256Hash` = NULL, `uploadedBy` = NULL, ...) {
      if (!missing(`fileName`)) {
        if (!(is.character(`fileName`) && length(`fileName`) == 1)) {
          stop(paste("Error! Invalid data for `fileName`. Must be a string:", `fileName`))
        }
        self$`fileName` <- `fileName`
      }
      if (!missing(`originalName`)) {
        if (!(is.character(`originalName`) && length(`originalName`) == 1)) {
          stop(paste("Error! Invalid data for `originalName`. Must be a string:", `originalName`))
        }
        self$`originalName` <- `originalName`
      }
      if (!is.null(`contactId`)) {
        if (!(is.character(`contactId`) && length(`contactId`) == 1)) {
          stop(paste("Error! Invalid data for `contactId`. Must be a string:", `contactId`))
        }
        self$`contactId` <- `contactId`
      }
      if (!is.null(`fileSize`)) {
        if (!(is.numeric(`fileSize`) && length(`fileSize`) == 1)) {
          stop(paste("Error! Invalid data for `fileSize`. Must be an integer:", `fileSize`))
        }
        self$`fileSize` <- `fileSize`
      }
      if (!is.null(`mimeType`)) {
        if (!(is.character(`mimeType`) && length(`mimeType`) == 1)) {
          stop(paste("Error! Invalid data for `mimeType`. Must be a string:", `mimeType`))
        }
        self$`mimeType` <- `mimeType`
      }
      if (!is.null(`pdfaPath`)) {
        if (!(is.character(`pdfaPath`) && length(`pdfaPath`) == 1)) {
          stop(paste("Error! Invalid data for `pdfaPath`. Must be a string:", `pdfaPath`))
        }
        self$`pdfaPath` <- `pdfaPath`
      }
      if (!is.null(`sha256Hash`)) {
        if (!(is.character(`sha256Hash`) && length(`sha256Hash`) == 1)) {
          stop(paste("Error! Invalid data for `sha256Hash`. Must be a string:", `sha256Hash`))
        }
        self$`sha256Hash` <- `sha256Hash`
      }
      if (!is.null(`uploadedBy`)) {
        if (!(is.character(`uploadedBy`) && length(`uploadedBy`) == 1)) {
          stop(paste("Error! Invalid data for `uploadedBy`. Must be a string:", `uploadedBy`))
        }
        self$`uploadedBy` <- `uploadedBy`
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
    #' @return AttachmentCreate as a base R list.
    #' @examples
    #' # convert array of AttachmentCreate (x) to a data frame
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
    #' Convert AttachmentCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AttachmentCreateObject <- list()
      if (!is.null(self$`contactId`)) {
        AttachmentCreateObject[["contactId"]] <-
          self$`contactId`
      }
      if (!is.null(self$`fileName`)) {
        AttachmentCreateObject[["fileName"]] <-
          self$`fileName`
      }
      if (!is.null(self$`fileSize`)) {
        AttachmentCreateObject[["fileSize"]] <-
          self$`fileSize`
      }
      if (!is.null(self$`mimeType`)) {
        AttachmentCreateObject[["mimeType"]] <-
          self$`mimeType`
      }
      if (!is.null(self$`originalName`)) {
        AttachmentCreateObject[["originalName"]] <-
          self$`originalName`
      }
      if (!is.null(self$`pdfaPath`)) {
        AttachmentCreateObject[["pdfaPath"]] <-
          self$`pdfaPath`
      }
      if (!is.null(self$`sha256Hash`)) {
        AttachmentCreateObject[["sha256Hash"]] <-
          self$`sha256Hash`
      }
      if (!is.null(self$`uploadedBy`)) {
        AttachmentCreateObject[["uploadedBy"]] <-
          self$`uploadedBy`
      }
      return(AttachmentCreateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AttachmentCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of AttachmentCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`contactId`)) {
        self$`contactId` <- this_object$`contactId`
      }
      if (!is.null(this_object$`fileName`)) {
        self$`fileName` <- this_object$`fileName`
      }
      if (!is.null(this_object$`fileSize`)) {
        self$`fileSize` <- this_object$`fileSize`
      }
      if (!is.null(this_object$`mimeType`)) {
        self$`mimeType` <- this_object$`mimeType`
      }
      if (!is.null(this_object$`originalName`)) {
        self$`originalName` <- this_object$`originalName`
      }
      if (!is.null(this_object$`pdfaPath`)) {
        self$`pdfaPath` <- this_object$`pdfaPath`
      }
      if (!is.null(this_object$`sha256Hash`)) {
        self$`sha256Hash` <- this_object$`sha256Hash`
      }
      if (!is.null(this_object$`uploadedBy`)) {
        self$`uploadedBy` <- this_object$`uploadedBy`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AttachmentCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AttachmentCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of AttachmentCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`contactId` <- this_object$`contactId`
      self$`fileName` <- this_object$`fileName`
      self$`fileSize` <- this_object$`fileSize`
      self$`mimeType` <- this_object$`mimeType`
      self$`originalName` <- this_object$`originalName`
      self$`pdfaPath` <- this_object$`pdfaPath`
      self$`sha256Hash` <- this_object$`sha256Hash`
      self$`uploadedBy` <- this_object$`uploadedBy`
      self
    },

    #' @description
    #' Validate JSON input with respect to AttachmentCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `fileName`
      if (!is.null(input_json$`fileName`)) {
        if (!(is.character(input_json$`fileName`) && length(input_json$`fileName`) == 1)) {
          stop(paste("Error! Invalid data for `fileName`. Must be a string:", input_json$`fileName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AttachmentCreate: the required field `fileName` is missing."))
      }
      # check the required field `originalName`
      if (!is.null(input_json$`originalName`)) {
        if (!(is.character(input_json$`originalName`) && length(input_json$`originalName`) == 1)) {
          stop(paste("Error! Invalid data for `originalName`. Must be a string:", input_json$`originalName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AttachmentCreate: the required field `originalName` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AttachmentCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `fileName` is null
      if (is.null(self$`fileName`)) {
        return(FALSE)
      }

      # check if the required `originalName` is null
      if (is.null(self$`originalName`)) {
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
      # check if the required `fileName` is null
      if (is.null(self$`fileName`)) {
        invalid_fields["fileName"] <- "Non-nullable required field `fileName` cannot be null."
      }

      # check if the required `originalName` is null
      if (is.null(self$`originalName`)) {
        invalid_fields["originalName"] <- "Non-nullable required field `originalName` cannot be null."
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
# AttachmentCreate$unlock()
#
## Below is an example to define the print function
# AttachmentCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AttachmentCreate$lock()

