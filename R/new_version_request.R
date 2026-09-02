#' Create a new NewVersionRequest
#'
#' @description
#' Body for uploading a new version. Bytes must already be stored under `file_name` via the object storage API.
#'
#' @docType class
#' @title NewVersionRequest
#' @description NewVersionRequest Class
#' @format An \code{R6Class} generator object
#' @field fileName Storage key of the already-uploaded bytes. character
#' @field fileSize  integer [optional]
#' @field mimeType  character [optional]
#' @field originalName  character [optional]
#' @field sha256Hash  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NewVersionRequest <- R6::R6Class(
  "NewVersionRequest",
  public = list(
    `fileName` = NULL,
    `fileSize` = NULL,
    `mimeType` = NULL,
    `originalName` = NULL,
    `sha256Hash` = NULL,

    #' @description
    #' Initialize a new NewVersionRequest class.
    #'
    #' @param fileName Storage key of the already-uploaded bytes.
    #' @param fileSize fileSize
    #' @param mimeType mimeType
    #' @param originalName originalName
    #' @param sha256Hash sha256Hash
    #' @param ... Other optional arguments.
    initialize = function(`fileName`, `fileSize` = NULL, `mimeType` = NULL, `originalName` = NULL, `sha256Hash` = NULL, ...) {
      if (!missing(`fileName`)) {
        if (!(is.character(`fileName`) && length(`fileName`) == 1)) {
          stop(paste("Error! Invalid data for `fileName`. Must be a string:", `fileName`))
        }
        self$`fileName` <- `fileName`
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
    #' @return NewVersionRequest as a base R list.
    #' @examples
    #' # convert array of NewVersionRequest (x) to a data frame
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
    #' Convert NewVersionRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NewVersionRequestObject <- list()
      if (!is.null(self$`fileName`)) {
        NewVersionRequestObject[["fileName"]] <-
          self$`fileName`
      }
      if (!is.null(self$`fileSize`)) {
        NewVersionRequestObject[["fileSize"]] <-
          self$`fileSize`
      }
      if (!is.null(self$`mimeType`)) {
        NewVersionRequestObject[["mimeType"]] <-
          self$`mimeType`
      }
      if (!is.null(self$`originalName`)) {
        NewVersionRequestObject[["originalName"]] <-
          self$`originalName`
      }
      if (!is.null(self$`sha256Hash`)) {
        NewVersionRequestObject[["sha256Hash"]] <-
          self$`sha256Hash`
      }
      return(NewVersionRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of NewVersionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of NewVersionRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return NewVersionRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of NewVersionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of NewVersionRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`fileName` <- this_object$`fileName`
      self$`fileSize` <- this_object$`fileSize`
      self$`mimeType` <- this_object$`mimeType`
      self$`originalName` <- this_object$`originalName`
      self$`sha256Hash` <- this_object$`sha256Hash`
      self
    },

    #' @description
    #' Validate JSON input with respect to NewVersionRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for NewVersionRequest: the required field `fileName` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NewVersionRequest
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
# NewVersionRequest$unlock()
#
## Below is an example to define the print function
# NewVersionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NewVersionRequest$lock()

