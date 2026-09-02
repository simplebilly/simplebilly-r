#' Create a new AttachmentVersion
#'
#' @description
#' AttachmentVersion Class
#'
#' @docType class
#' @title AttachmentVersion
#' @description AttachmentVersion Class
#' @format An \code{R6Class} generator object
#' @field attachmentId Parent attachment whose history this row records. character
#' @field fileName Storage key of this version's bytes. character
#' @field fileSize  integer [optional]
#' @field mimeType  character [optional]
#' @field originalName  character [optional]
#' @field sha256Hash  character [optional]
#' @field uploadedBy  character [optional]
#' @field versionNumber 1-based; ascending per attachment in upload order. integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AttachmentVersion <- R6::R6Class(
  "AttachmentVersion",
  public = list(
    `attachmentId` = NULL,
    `fileName` = NULL,
    `fileSize` = NULL,
    `mimeType` = NULL,
    `originalName` = NULL,
    `sha256Hash` = NULL,
    `uploadedBy` = NULL,
    `versionNumber` = NULL,

    #' @description
    #' Initialize a new AttachmentVersion class.
    #'
    #' @param attachmentId Parent attachment whose history this row records.
    #' @param fileName Storage key of this version's bytes.
    #' @param versionNumber 1-based; ascending per attachment in upload order.
    #' @param fileSize fileSize
    #' @param mimeType mimeType
    #' @param originalName originalName
    #' @param sha256Hash sha256Hash
    #' @param uploadedBy uploadedBy
    #' @param ... Other optional arguments.
    initialize = function(`attachmentId`, `fileName`, `versionNumber`, `fileSize` = NULL, `mimeType` = NULL, `originalName` = NULL, `sha256Hash` = NULL, `uploadedBy` = NULL, ...) {
      if (!missing(`attachmentId`)) {
        if (!(is.character(`attachmentId`) && length(`attachmentId`) == 1)) {
          stop(paste("Error! Invalid data for `attachmentId`. Must be a string:", `attachmentId`))
        }
        self$`attachmentId` <- `attachmentId`
      }
      if (!missing(`fileName`)) {
        if (!(is.character(`fileName`) && length(`fileName`) == 1)) {
          stop(paste("Error! Invalid data for `fileName`. Must be a string:", `fileName`))
        }
        self$`fileName` <- `fileName`
      }
      if (!missing(`versionNumber`)) {
        if (!(is.numeric(`versionNumber`) && length(`versionNumber`) == 1)) {
          stop(paste("Error! Invalid data for `versionNumber`. Must be an integer:", `versionNumber`))
        }
        self$`versionNumber` <- `versionNumber`
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
      if (!is.null(`originalName`)) {
        if (!(is.character(`originalName`) && length(`originalName`) == 1)) {
          stop(paste("Error! Invalid data for `originalName`. Must be a string:", `originalName`))
        }
        self$`originalName` <- `originalName`
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
    #' @return AttachmentVersion as a base R list.
    #' @examples
    #' # convert array of AttachmentVersion (x) to a data frame
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
    #' Convert AttachmentVersion to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AttachmentVersionObject <- list()
      if (!is.null(self$`attachmentId`)) {
        AttachmentVersionObject[["attachmentId"]] <-
          self$`attachmentId`
      }
      if (!is.null(self$`fileName`)) {
        AttachmentVersionObject[["fileName"]] <-
          self$`fileName`
      }
      if (!is.null(self$`fileSize`)) {
        AttachmentVersionObject[["fileSize"]] <-
          self$`fileSize`
      }
      if (!is.null(self$`mimeType`)) {
        AttachmentVersionObject[["mimeType"]] <-
          self$`mimeType`
      }
      if (!is.null(self$`originalName`)) {
        AttachmentVersionObject[["originalName"]] <-
          self$`originalName`
      }
      if (!is.null(self$`sha256Hash`)) {
        AttachmentVersionObject[["sha256Hash"]] <-
          self$`sha256Hash`
      }
      if (!is.null(self$`uploadedBy`)) {
        AttachmentVersionObject[["uploadedBy"]] <-
          self$`uploadedBy`
      }
      if (!is.null(self$`versionNumber`)) {
        AttachmentVersionObject[["versionNumber"]] <-
          self$`versionNumber`
      }
      return(AttachmentVersionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AttachmentVersion
    #'
    #' @param input_json the JSON input
    #' @return the instance of AttachmentVersion
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`attachmentId`)) {
        self$`attachmentId` <- this_object$`attachmentId`
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
      if (!is.null(this_object$`sha256Hash`)) {
        self$`sha256Hash` <- this_object$`sha256Hash`
      }
      if (!is.null(this_object$`uploadedBy`)) {
        self$`uploadedBy` <- this_object$`uploadedBy`
      }
      if (!is.null(this_object$`versionNumber`)) {
        self$`versionNumber` <- this_object$`versionNumber`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AttachmentVersion in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AttachmentVersion
    #'
    #' @param input_json the JSON input
    #' @return the instance of AttachmentVersion
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`attachmentId` <- this_object$`attachmentId`
      self$`fileName` <- this_object$`fileName`
      self$`fileSize` <- this_object$`fileSize`
      self$`mimeType` <- this_object$`mimeType`
      self$`originalName` <- this_object$`originalName`
      self$`sha256Hash` <- this_object$`sha256Hash`
      self$`uploadedBy` <- this_object$`uploadedBy`
      self$`versionNumber` <- this_object$`versionNumber`
      self
    },

    #' @description
    #' Validate JSON input with respect to AttachmentVersion and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `attachmentId`
      if (!is.null(input_json$`attachmentId`)) {
        if (!(is.character(input_json$`attachmentId`) && length(input_json$`attachmentId`) == 1)) {
          stop(paste("Error! Invalid data for `attachmentId`. Must be a string:", input_json$`attachmentId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AttachmentVersion: the required field `attachmentId` is missing."))
      }
      # check the required field `fileName`
      if (!is.null(input_json$`fileName`)) {
        if (!(is.character(input_json$`fileName`) && length(input_json$`fileName`) == 1)) {
          stop(paste("Error! Invalid data for `fileName`. Must be a string:", input_json$`fileName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AttachmentVersion: the required field `fileName` is missing."))
      }
      # check the required field `versionNumber`
      if (!is.null(input_json$`versionNumber`)) {
        if (!(is.numeric(input_json$`versionNumber`) && length(input_json$`versionNumber`) == 1)) {
          stop(paste("Error! Invalid data for `versionNumber`. Must be an integer:", input_json$`versionNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AttachmentVersion: the required field `versionNumber` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AttachmentVersion
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `attachmentId` is null
      if (is.null(self$`attachmentId`)) {
        return(FALSE)
      }

      # check if the required `fileName` is null
      if (is.null(self$`fileName`)) {
        return(FALSE)
      }

      # check if the required `versionNumber` is null
      if (is.null(self$`versionNumber`)) {
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
      # check if the required `attachmentId` is null
      if (is.null(self$`attachmentId`)) {
        invalid_fields["attachmentId"] <- "Non-nullable required field `attachmentId` cannot be null."
      }

      # check if the required `fileName` is null
      if (is.null(self$`fileName`)) {
        invalid_fields["fileName"] <- "Non-nullable required field `fileName` cannot be null."
      }

      # check if the required `versionNumber` is null
      if (is.null(self$`versionNumber`)) {
        invalid_fields["versionNumber"] <- "Non-nullable required field `versionNumber` cannot be null."
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
# AttachmentVersion$unlock()
#
## Below is an example to define the print function
# AttachmentVersion$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AttachmentVersion$lock()

