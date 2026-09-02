#' Create a new JobApplication
#'
#' @description
#' JobApplication Class
#'
#' @docType class
#' @title JobApplication
#' @description JobApplication Class
#' @format An \code{R6Class} generator object
#' @field cvFile Relative path of the stored CV file under the upload dir. character [optional]
#' @field cvText Extracted CV text, used for match-scoring. character [optional]
#' @field email  character [optional]
#' @field matchReason  character [optional]
#' @field matchScore 0-100 LLM match score against the posting's required profile. integer [optional]
#' @field name  character [optional]
#' @field phone  character [optional]
#' @field postingId References the job_posting entity. character [optional]
#' @field source website | email | board character
#' @field status new | reviewing | interview | hired | rejected \link{ApplicationStatus}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobApplication <- R6::R6Class(
  "JobApplication",
  public = list(
    `cvFile` = NULL,
    `cvText` = NULL,
    `email` = NULL,
    `matchReason` = NULL,
    `matchScore` = NULL,
    `name` = NULL,
    `phone` = NULL,
    `postingId` = NULL,
    `source` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new JobApplication class.
    #'
    #' @param source website | email | board
    #' @param status new | reviewing | interview | hired | rejected
    #' @param cvFile Relative path of the stored CV file under the upload dir.
    #' @param cvText Extracted CV text, used for match-scoring.
    #' @param email email
    #' @param matchReason matchReason
    #' @param matchScore 0-100 LLM match score against the posting's required profile.
    #' @param name name
    #' @param phone phone
    #' @param postingId References the job_posting entity.
    #' @param ... Other optional arguments.
    initialize = function(`source`, `status`, `cvFile` = NULL, `cvText` = NULL, `email` = NULL, `matchReason` = NULL, `matchScore` = NULL, `name` = NULL, `phone` = NULL, `postingId` = NULL, ...) {
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`cvFile`)) {
        if (!(is.character(`cvFile`) && length(`cvFile`) == 1)) {
          stop(paste("Error! Invalid data for `cvFile`. Must be a string:", `cvFile`))
        }
        self$`cvFile` <- `cvFile`
      }
      if (!is.null(`cvText`)) {
        if (!(is.character(`cvText`) && length(`cvText`) == 1)) {
          stop(paste("Error! Invalid data for `cvText`. Must be a string:", `cvText`))
        }
        self$`cvText` <- `cvText`
      }
      if (!is.null(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`matchReason`)) {
        if (!(is.character(`matchReason`) && length(`matchReason`) == 1)) {
          stop(paste("Error! Invalid data for `matchReason`. Must be a string:", `matchReason`))
        }
        self$`matchReason` <- `matchReason`
      }
      if (!is.null(`matchScore`)) {
        if (!(is.numeric(`matchScore`) && length(`matchScore`) == 1)) {
          stop(paste("Error! Invalid data for `matchScore`. Must be an integer:", `matchScore`))
        }
        self$`matchScore` <- `matchScore`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`phone`)) {
        if (!(is.character(`phone`) && length(`phone`) == 1)) {
          stop(paste("Error! Invalid data for `phone`. Must be a string:", `phone`))
        }
        self$`phone` <- `phone`
      }
      if (!is.null(`postingId`)) {
        if (!(is.character(`postingId`) && length(`postingId`) == 1)) {
          stop(paste("Error! Invalid data for `postingId`. Must be a string:", `postingId`))
        }
        self$`postingId` <- `postingId`
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
    #' @return JobApplication as a base R list.
    #' @examples
    #' # convert array of JobApplication (x) to a data frame
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
    #' Convert JobApplication to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      JobApplicationObject <- list()
      if (!is.null(self$`cvFile`)) {
        JobApplicationObject[["cvFile"]] <-
          self$`cvFile`
      }
      if (!is.null(self$`cvText`)) {
        JobApplicationObject[["cvText"]] <-
          self$`cvText`
      }
      if (!is.null(self$`email`)) {
        JobApplicationObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`matchReason`)) {
        JobApplicationObject[["matchReason"]] <-
          self$`matchReason`
      }
      if (!is.null(self$`matchScore`)) {
        JobApplicationObject[["matchScore"]] <-
          self$`matchScore`
      }
      if (!is.null(self$`name`)) {
        JobApplicationObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`phone`)) {
        JobApplicationObject[["phone"]] <-
          self$`phone`
      }
      if (!is.null(self$`postingId`)) {
        JobApplicationObject[["postingId"]] <-
          self$`postingId`
      }
      if (!is.null(self$`source`)) {
        JobApplicationObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`status`)) {
        JobApplicationObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      return(JobApplicationObject)
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
    #' Deserialize JSON string into an instance of JobApplication
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobApplication
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cvFile`)) {
        self$`cvFile` <- this_object$`cvFile`
      }
      if (!is.null(this_object$`cvText`)) {
        self$`cvText` <- this_object$`cvText`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`matchReason`)) {
        self$`matchReason` <- this_object$`matchReason`
      }
      if (!is.null(this_object$`matchScore`)) {
        self$`matchScore` <- this_object$`matchScore`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`phone`)) {
        self$`phone` <- this_object$`phone`
      }
      if (!is.null(this_object$`postingId`)) {
        self$`postingId` <- this_object$`postingId`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- ApplicationStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JobApplication in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of JobApplication
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobApplication
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`cvFile` <- this_object$`cvFile`
      self$`cvText` <- this_object$`cvText`
      self$`email` <- this_object$`email`
      self$`matchReason` <- this_object$`matchReason`
      self$`matchScore` <- this_object$`matchScore`
      self$`name` <- this_object$`name`
      self$`phone` <- this_object$`phone`
      self$`postingId` <- this_object$`postingId`
      self$`source` <- this_object$`source`
      self$`status` <- ApplicationStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to JobApplication and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JobApplication: the required field `source` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JobApplication: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of JobApplication
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
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
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# JobApplication$unlock()
#
## Below is an example to define the print function
# JobApplication$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# JobApplication$lock()

