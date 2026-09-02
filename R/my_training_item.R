#' Create a new MyTrainingItem
#'
#' @description
#' MyTrainingItem Class
#'
#' @docType class
#' @title MyTrainingItem
#' @description MyTrainingItem Class
#' @format An \code{R6Class} generator object
#' @field assignmentId  character
#' @field certificateId  character [optional]
#' @field code  character
#' @field description  character [optional]
#' @field dueDate  character [optional]
#' @field lastScore  integer [optional]
#' @field passScore  integer
#' @field passed  character [optional]
#' @field status  \link{AssignmentStatus}
#' @field title  character
#' @field trainingId  character
#' @field validUntil  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MyTrainingItem <- R6::R6Class(
  "MyTrainingItem",
  public = list(
    `assignmentId` = NULL,
    `certificateId` = NULL,
    `code` = NULL,
    `description` = NULL,
    `dueDate` = NULL,
    `lastScore` = NULL,
    `passScore` = NULL,
    `passed` = NULL,
    `status` = NULL,
    `title` = NULL,
    `trainingId` = NULL,
    `validUntil` = NULL,

    #' @description
    #' Initialize a new MyTrainingItem class.
    #'
    #' @param assignmentId assignmentId
    #' @param code code
    #' @param passScore passScore
    #' @param status status
    #' @param title title
    #' @param trainingId trainingId
    #' @param certificateId certificateId
    #' @param description description
    #' @param dueDate dueDate
    #' @param lastScore lastScore
    #' @param passed passed
    #' @param validUntil validUntil
    #' @param ... Other optional arguments.
    initialize = function(`assignmentId`, `code`, `passScore`, `status`, `title`, `trainingId`, `certificateId` = NULL, `description` = NULL, `dueDate` = NULL, `lastScore` = NULL, `passed` = NULL, `validUntil` = NULL, ...) {
      if (!missing(`assignmentId`)) {
        if (!(is.character(`assignmentId`) && length(`assignmentId`) == 1)) {
          stop(paste("Error! Invalid data for `assignmentId`. Must be a string:", `assignmentId`))
        }
        self$`assignmentId` <- `assignmentId`
      }
      if (!missing(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!missing(`passScore`)) {
        if (!(is.numeric(`passScore`) && length(`passScore`) == 1)) {
          stop(paste("Error! Invalid data for `passScore`. Must be an integer:", `passScore`))
        }
        self$`passScore` <- `passScore`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!missing(`trainingId`)) {
        if (!(is.character(`trainingId`) && length(`trainingId`) == 1)) {
          stop(paste("Error! Invalid data for `trainingId`. Must be a string:", `trainingId`))
        }
        self$`trainingId` <- `trainingId`
      }
      if (!is.null(`certificateId`)) {
        if (!(is.character(`certificateId`) && length(`certificateId`) == 1)) {
          stop(paste("Error! Invalid data for `certificateId`. Must be a string:", `certificateId`))
        }
        self$`certificateId` <- `certificateId`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`dueDate`)) {
        if (!is.character(`dueDate`)) {
          stop(paste("Error! Invalid data for `dueDate`. Must be a string:", `dueDate`))
        }
        self$`dueDate` <- `dueDate`
      }
      if (!is.null(`lastScore`)) {
        if (!(is.numeric(`lastScore`) && length(`lastScore`) == 1)) {
          stop(paste("Error! Invalid data for `lastScore`. Must be an integer:", `lastScore`))
        }
        self$`lastScore` <- `lastScore`
      }
      if (!is.null(`passed`)) {
        if (!(is.logical(`passed`) && length(`passed`) == 1)) {
          stop(paste("Error! Invalid data for `passed`. Must be a boolean:", `passed`))
        }
        self$`passed` <- `passed`
      }
      if (!is.null(`validUntil`)) {
        if (!is.character(`validUntil`)) {
          stop(paste("Error! Invalid data for `validUntil`. Must be a string:", `validUntil`))
        }
        self$`validUntil` <- `validUntil`
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
    #' @return MyTrainingItem as a base R list.
    #' @examples
    #' # convert array of MyTrainingItem (x) to a data frame
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
    #' Convert MyTrainingItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MyTrainingItemObject <- list()
      if (!is.null(self$`assignmentId`)) {
        MyTrainingItemObject[["assignmentId"]] <-
          self$`assignmentId`
      }
      if (!is.null(self$`certificateId`)) {
        MyTrainingItemObject[["certificateId"]] <-
          self$`certificateId`
      }
      if (!is.null(self$`code`)) {
        MyTrainingItemObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`description`)) {
        MyTrainingItemObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`dueDate`)) {
        MyTrainingItemObject[["dueDate"]] <-
          self$`dueDate`
      }
      if (!is.null(self$`lastScore`)) {
        MyTrainingItemObject[["lastScore"]] <-
          self$`lastScore`
      }
      if (!is.null(self$`passScore`)) {
        MyTrainingItemObject[["passScore"]] <-
          self$`passScore`
      }
      if (!is.null(self$`passed`)) {
        MyTrainingItemObject[["passed"]] <-
          self$`passed`
      }
      if (!is.null(self$`status`)) {
        MyTrainingItemObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`title`)) {
        MyTrainingItemObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`trainingId`)) {
        MyTrainingItemObject[["trainingId"]] <-
          self$`trainingId`
      }
      if (!is.null(self$`validUntil`)) {
        MyTrainingItemObject[["validUntil"]] <-
          self$`validUntil`
      }
      return(MyTrainingItemObject)
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
    #' Deserialize JSON string into an instance of MyTrainingItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of MyTrainingItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assignmentId`)) {
        self$`assignmentId` <- this_object$`assignmentId`
      }
      if (!is.null(this_object$`certificateId`)) {
        self$`certificateId` <- this_object$`certificateId`
      }
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`dueDate`)) {
        self$`dueDate` <- this_object$`dueDate`
      }
      if (!is.null(this_object$`lastScore`)) {
        self$`lastScore` <- this_object$`lastScore`
      }
      if (!is.null(this_object$`passScore`)) {
        self$`passScore` <- this_object$`passScore`
      }
      if (!is.null(this_object$`passed`)) {
        self$`passed` <- this_object$`passed`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- AssignmentStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`trainingId`)) {
        self$`trainingId` <- this_object$`trainingId`
      }
      if (!is.null(this_object$`validUntil`)) {
        self$`validUntil` <- this_object$`validUntil`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MyTrainingItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MyTrainingItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of MyTrainingItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assignmentId` <- this_object$`assignmentId`
      self$`certificateId` <- this_object$`certificateId`
      self$`code` <- this_object$`code`
      self$`description` <- this_object$`description`
      self$`dueDate` <- this_object$`dueDate`
      self$`lastScore` <- this_object$`lastScore`
      self$`passScore` <- this_object$`passScore`
      self$`passed` <- this_object$`passed`
      self$`status` <- AssignmentStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`title` <- this_object$`title`
      self$`trainingId` <- this_object$`trainingId`
      self$`validUntil` <- this_object$`validUntil`
      self
    },

    #' @description
    #' Validate JSON input with respect to MyTrainingItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `assignmentId`
      if (!is.null(input_json$`assignmentId`)) {
        if (!(is.character(input_json$`assignmentId`) && length(input_json$`assignmentId`) == 1)) {
          stop(paste("Error! Invalid data for `assignmentId`. Must be a string:", input_json$`assignmentId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MyTrainingItem: the required field `assignmentId` is missing."))
      }
      # check the required field `code`
      if (!is.null(input_json$`code`)) {
        if (!(is.character(input_json$`code`) && length(input_json$`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", input_json$`code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MyTrainingItem: the required field `code` is missing."))
      }
      # check the required field `passScore`
      if (!is.null(input_json$`passScore`)) {
        if (!(is.numeric(input_json$`passScore`) && length(input_json$`passScore`) == 1)) {
          stop(paste("Error! Invalid data for `passScore`. Must be an integer:", input_json$`passScore`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MyTrainingItem: the required field `passScore` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MyTrainingItem: the required field `status` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MyTrainingItem: the required field `title` is missing."))
      }
      # check the required field `trainingId`
      if (!is.null(input_json$`trainingId`)) {
        if (!(is.character(input_json$`trainingId`) && length(input_json$`trainingId`) == 1)) {
          stop(paste("Error! Invalid data for `trainingId`. Must be a string:", input_json$`trainingId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MyTrainingItem: the required field `trainingId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MyTrainingItem
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `assignmentId` is null
      if (is.null(self$`assignmentId`)) {
        return(FALSE)
      }

      # check if the required `code` is null
      if (is.null(self$`code`)) {
        return(FALSE)
      }

      # check if the required `passScore` is null
      if (is.null(self$`passScore`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      # check if the required `trainingId` is null
      if (is.null(self$`trainingId`)) {
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
      # check if the required `assignmentId` is null
      if (is.null(self$`assignmentId`)) {
        invalid_fields["assignmentId"] <- "Non-nullable required field `assignmentId` cannot be null."
      }

      # check if the required `code` is null
      if (is.null(self$`code`)) {
        invalid_fields["code"] <- "Non-nullable required field `code` cannot be null."
      }

      # check if the required `passScore` is null
      if (is.null(self$`passScore`)) {
        invalid_fields["passScore"] <- "Non-nullable required field `passScore` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      # check if the required `trainingId` is null
      if (is.null(self$`trainingId`)) {
        invalid_fields["trainingId"] <- "Non-nullable required field `trainingId` cannot be null."
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
# MyTrainingItem$unlock()
#
## Below is an example to define the print function
# MyTrainingItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MyTrainingItem$lock()

