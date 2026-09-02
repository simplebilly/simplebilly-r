#' Create a new HrTrainingOverview
#'
#' @description
#' HrTrainingOverview Class
#'
#' @docType class
#' @title HrTrainingOverview
#' @description HrTrainingOverview Class
#' @format An \code{R6Class} generator object
#' @field assignedCount  integer
#' @field code  character
#' @field completedCount  integer
#' @field overdueCount  integer
#' @field title  character
#' @field trainingId  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
HrTrainingOverview <- R6::R6Class(
  "HrTrainingOverview",
  public = list(
    `assignedCount` = NULL,
    `code` = NULL,
    `completedCount` = NULL,
    `overdueCount` = NULL,
    `title` = NULL,
    `trainingId` = NULL,

    #' @description
    #' Initialize a new HrTrainingOverview class.
    #'
    #' @param assignedCount assignedCount
    #' @param code code
    #' @param completedCount completedCount
    #' @param overdueCount overdueCount
    #' @param title title
    #' @param trainingId trainingId
    #' @param ... Other optional arguments.
    initialize = function(`assignedCount`, `code`, `completedCount`, `overdueCount`, `title`, `trainingId`, ...) {
      if (!missing(`assignedCount`)) {
        if (!(is.numeric(`assignedCount`) && length(`assignedCount`) == 1)) {
          stop(paste("Error! Invalid data for `assignedCount`. Must be an integer:", `assignedCount`))
        }
        self$`assignedCount` <- `assignedCount`
      }
      if (!missing(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!missing(`completedCount`)) {
        if (!(is.numeric(`completedCount`) && length(`completedCount`) == 1)) {
          stop(paste("Error! Invalid data for `completedCount`. Must be an integer:", `completedCount`))
        }
        self$`completedCount` <- `completedCount`
      }
      if (!missing(`overdueCount`)) {
        if (!(is.numeric(`overdueCount`) && length(`overdueCount`) == 1)) {
          stop(paste("Error! Invalid data for `overdueCount`. Must be an integer:", `overdueCount`))
        }
        self$`overdueCount` <- `overdueCount`
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
    #' @return HrTrainingOverview as a base R list.
    #' @examples
    #' # convert array of HrTrainingOverview (x) to a data frame
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
    #' Convert HrTrainingOverview to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      HrTrainingOverviewObject <- list()
      if (!is.null(self$`assignedCount`)) {
        HrTrainingOverviewObject[["assignedCount"]] <-
          self$`assignedCount`
      }
      if (!is.null(self$`code`)) {
        HrTrainingOverviewObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`completedCount`)) {
        HrTrainingOverviewObject[["completedCount"]] <-
          self$`completedCount`
      }
      if (!is.null(self$`overdueCount`)) {
        HrTrainingOverviewObject[["overdueCount"]] <-
          self$`overdueCount`
      }
      if (!is.null(self$`title`)) {
        HrTrainingOverviewObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`trainingId`)) {
        HrTrainingOverviewObject[["trainingId"]] <-
          self$`trainingId`
      }
      return(HrTrainingOverviewObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of HrTrainingOverview
    #'
    #' @param input_json the JSON input
    #' @return the instance of HrTrainingOverview
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assignedCount`)) {
        self$`assignedCount` <- this_object$`assignedCount`
      }
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`completedCount`)) {
        self$`completedCount` <- this_object$`completedCount`
      }
      if (!is.null(this_object$`overdueCount`)) {
        self$`overdueCount` <- this_object$`overdueCount`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`trainingId`)) {
        self$`trainingId` <- this_object$`trainingId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return HrTrainingOverview in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of HrTrainingOverview
    #'
    #' @param input_json the JSON input
    #' @return the instance of HrTrainingOverview
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assignedCount` <- this_object$`assignedCount`
      self$`code` <- this_object$`code`
      self$`completedCount` <- this_object$`completedCount`
      self$`overdueCount` <- this_object$`overdueCount`
      self$`title` <- this_object$`title`
      self$`trainingId` <- this_object$`trainingId`
      self
    },

    #' @description
    #' Validate JSON input with respect to HrTrainingOverview and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `assignedCount`
      if (!is.null(input_json$`assignedCount`)) {
        if (!(is.numeric(input_json$`assignedCount`) && length(input_json$`assignedCount`) == 1)) {
          stop(paste("Error! Invalid data for `assignedCount`. Must be an integer:", input_json$`assignedCount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HrTrainingOverview: the required field `assignedCount` is missing."))
      }
      # check the required field `code`
      if (!is.null(input_json$`code`)) {
        if (!(is.character(input_json$`code`) && length(input_json$`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", input_json$`code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HrTrainingOverview: the required field `code` is missing."))
      }
      # check the required field `completedCount`
      if (!is.null(input_json$`completedCount`)) {
        if (!(is.numeric(input_json$`completedCount`) && length(input_json$`completedCount`) == 1)) {
          stop(paste("Error! Invalid data for `completedCount`. Must be an integer:", input_json$`completedCount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HrTrainingOverview: the required field `completedCount` is missing."))
      }
      # check the required field `overdueCount`
      if (!is.null(input_json$`overdueCount`)) {
        if (!(is.numeric(input_json$`overdueCount`) && length(input_json$`overdueCount`) == 1)) {
          stop(paste("Error! Invalid data for `overdueCount`. Must be an integer:", input_json$`overdueCount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HrTrainingOverview: the required field `overdueCount` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HrTrainingOverview: the required field `title` is missing."))
      }
      # check the required field `trainingId`
      if (!is.null(input_json$`trainingId`)) {
        if (!(is.character(input_json$`trainingId`) && length(input_json$`trainingId`) == 1)) {
          stop(paste("Error! Invalid data for `trainingId`. Must be a string:", input_json$`trainingId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HrTrainingOverview: the required field `trainingId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of HrTrainingOverview
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `assignedCount` is null
      if (is.null(self$`assignedCount`)) {
        return(FALSE)
      }

      # check if the required `code` is null
      if (is.null(self$`code`)) {
        return(FALSE)
      }

      # check if the required `completedCount` is null
      if (is.null(self$`completedCount`)) {
        return(FALSE)
      }

      # check if the required `overdueCount` is null
      if (is.null(self$`overdueCount`)) {
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
      # check if the required `assignedCount` is null
      if (is.null(self$`assignedCount`)) {
        invalid_fields["assignedCount"] <- "Non-nullable required field `assignedCount` cannot be null."
      }

      # check if the required `code` is null
      if (is.null(self$`code`)) {
        invalid_fields["code"] <- "Non-nullable required field `code` cannot be null."
      }

      # check if the required `completedCount` is null
      if (is.null(self$`completedCount`)) {
        invalid_fields["completedCount"] <- "Non-nullable required field `completedCount` cannot be null."
      }

      # check if the required `overdueCount` is null
      if (is.null(self$`overdueCount`)) {
        invalid_fields["overdueCount"] <- "Non-nullable required field `overdueCount` cannot be null."
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
# HrTrainingOverview$unlock()
#
## Below is an example to define the print function
# HrTrainingOverview$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# HrTrainingOverview$lock()

