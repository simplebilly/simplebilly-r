#' Create a new JobPostingCreate
#'
#' @description
#' JobPostingCreate Class
#'
#' @docType class
#' @title JobPostingCreate
#' @description JobPostingCreate Class
#' @format An \code{R6Class} generator object
#' @field currency  character [optional]
#' @field department  character [optional]
#' @field description What the job is; markdown/HTML. character
#' @field employmentType full_time | part_time | contract | internship | temporary \link{EmploymentType} [optional]
#' @field location  character [optional]
#' @field remote  character
#' @field requiredSkills List of required skill names (JSON array of strings). \link{AnyType}
#' @field requirements Structured profile of the required candidate (skills, experience). character [optional]
#' @field salaryMax  integer [optional]
#' @field salaryMin  integer [optional]
#' @field status draft | published | closed \link{JobPostingStatus}
#' @field title  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobPostingCreate <- R6::R6Class(
  "JobPostingCreate",
  public = list(
    `currency` = NULL,
    `department` = NULL,
    `description` = NULL,
    `employmentType` = NULL,
    `location` = NULL,
    `remote` = NULL,
    `requiredSkills` = NULL,
    `requirements` = NULL,
    `salaryMax` = NULL,
    `salaryMin` = NULL,
    `status` = NULL,
    `title` = NULL,

    #' @description
    #' Initialize a new JobPostingCreate class.
    #'
    #' @param description What the job is; markdown/HTML.
    #' @param remote remote
    #' @param requiredSkills List of required skill names (JSON array of strings).
    #' @param status draft | published | closed
    #' @param title title
    #' @param currency currency
    #' @param department department
    #' @param employmentType full_time | part_time | contract | internship | temporary
    #' @param location location
    #' @param requirements Structured profile of the required candidate (skills, experience).
    #' @param salaryMax salaryMax
    #' @param salaryMin salaryMin
    #' @param ... Other optional arguments.
    initialize = function(`description`, `remote`, `requiredSkills`, `status`, `title`, `currency` = NULL, `department` = NULL, `employmentType` = NULL, `location` = NULL, `requirements` = NULL, `salaryMax` = NULL, `salaryMin` = NULL, ...) {
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`remote`)) {
        if (!(is.logical(`remote`) && length(`remote`) == 1)) {
          stop(paste("Error! Invalid data for `remote`. Must be a boolean:", `remote`))
        }
        self$`remote` <- `remote`
      }
      if (!missing(`requiredSkills`)) {
        stopifnot(R6::is.R6(`requiredSkills`))
        self$`requiredSkills` <- `requiredSkills`
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
      if (!is.null(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!is.null(`department`)) {
        if (!(is.character(`department`) && length(`department`) == 1)) {
          stop(paste("Error! Invalid data for `department`. Must be a string:", `department`))
        }
        self$`department` <- `department`
      }
      if (!is.null(`employmentType`)) {
        if (!(`employmentType` %in% c())) {
          stop(paste("Error! \"", `employmentType`, "\" cannot be assigned to `employmentType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`employmentType`))
        self$`employmentType` <- `employmentType`
      }
      if (!is.null(`location`)) {
        if (!(is.character(`location`) && length(`location`) == 1)) {
          stop(paste("Error! Invalid data for `location`. Must be a string:", `location`))
        }
        self$`location` <- `location`
      }
      if (!is.null(`requirements`)) {
        if (!(is.character(`requirements`) && length(`requirements`) == 1)) {
          stop(paste("Error! Invalid data for `requirements`. Must be a string:", `requirements`))
        }
        self$`requirements` <- `requirements`
      }
      if (!is.null(`salaryMax`)) {
        if (!(is.numeric(`salaryMax`) && length(`salaryMax`) == 1)) {
          stop(paste("Error! Invalid data for `salaryMax`. Must be an integer:", `salaryMax`))
        }
        self$`salaryMax` <- `salaryMax`
      }
      if (!is.null(`salaryMin`)) {
        if (!(is.numeric(`salaryMin`) && length(`salaryMin`) == 1)) {
          stop(paste("Error! Invalid data for `salaryMin`. Must be an integer:", `salaryMin`))
        }
        self$`salaryMin` <- `salaryMin`
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
    #' @return JobPostingCreate as a base R list.
    #' @examples
    #' # convert array of JobPostingCreate (x) to a data frame
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
    #' Convert JobPostingCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      JobPostingCreateObject <- list()
      if (!is.null(self$`currency`)) {
        JobPostingCreateObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`department`)) {
        JobPostingCreateObject[["department"]] <-
          self$`department`
      }
      if (!is.null(self$`description`)) {
        JobPostingCreateObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`employmentType`)) {
        JobPostingCreateObject[["employmentType"]] <-
          self$extractSimpleType(self$`employmentType`)
      }
      if (!is.null(self$`location`)) {
        JobPostingCreateObject[["location"]] <-
          self$`location`
      }
      if (!is.null(self$`remote`)) {
        JobPostingCreateObject[["remote"]] <-
          self$`remote`
      }
      if (!is.null(self$`requiredSkills`)) {
        JobPostingCreateObject[["requiredSkills"]] <-
          self$extractSimpleType(self$`requiredSkills`)
      }
      if (!is.null(self$`requirements`)) {
        JobPostingCreateObject[["requirements"]] <-
          self$`requirements`
      }
      if (!is.null(self$`salaryMax`)) {
        JobPostingCreateObject[["salaryMax"]] <-
          self$`salaryMax`
      }
      if (!is.null(self$`salaryMin`)) {
        JobPostingCreateObject[["salaryMin"]] <-
          self$`salaryMin`
      }
      if (!is.null(self$`status`)) {
        JobPostingCreateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`title`)) {
        JobPostingCreateObject[["title"]] <-
          self$`title`
      }
      return(JobPostingCreateObject)
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
    #' Deserialize JSON string into an instance of JobPostingCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobPostingCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`department`)) {
        self$`department` <- this_object$`department`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`employmentType`)) {
        `employmenttype_object` <- EmploymentType$new()
        `employmenttype_object`$fromJSON(jsonlite::toJSON(this_object$`employmentType`, auto_unbox = TRUE, digits = NA))
        self$`employmentType` <- `employmenttype_object`
      }
      if (!is.null(this_object$`location`)) {
        self$`location` <- this_object$`location`
      }
      if (!is.null(this_object$`remote`)) {
        self$`remote` <- this_object$`remote`
      }
      if (!is.null(this_object$`requiredSkills`)) {
        `requiredskills_object` <- AnyType$new()
        `requiredskills_object`$fromJSON(jsonlite::toJSON(this_object$`requiredSkills`, auto_unbox = TRUE, digits = NA))
        self$`requiredSkills` <- `requiredskills_object`
      }
      if (!is.null(this_object$`requirements`)) {
        self$`requirements` <- this_object$`requirements`
      }
      if (!is.null(this_object$`salaryMax`)) {
        self$`salaryMax` <- this_object$`salaryMax`
      }
      if (!is.null(this_object$`salaryMin`)) {
        self$`salaryMin` <- this_object$`salaryMin`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- JobPostingStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JobPostingCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of JobPostingCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of JobPostingCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`currency` <- this_object$`currency`
      self$`department` <- this_object$`department`
      self$`description` <- this_object$`description`
      self$`employmentType` <- EmploymentType$new()$fromJSON(jsonlite::toJSON(this_object$`employmentType`, auto_unbox = TRUE, digits = NA))
      self$`location` <- this_object$`location`
      self$`remote` <- this_object$`remote`
      self$`requiredSkills` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`requiredSkills`, auto_unbox = TRUE, digits = NA))
      self$`requirements` <- this_object$`requirements`
      self$`salaryMax` <- this_object$`salaryMax`
      self$`salaryMin` <- this_object$`salaryMin`
      self$`status` <- JobPostingStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`title` <- this_object$`title`
      self
    },

    #' @description
    #' Validate JSON input with respect to JobPostingCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JobPostingCreate: the required field `description` is missing."))
      }
      # check the required field `remote`
      if (!is.null(input_json$`remote`)) {
        if (!(is.logical(input_json$`remote`) && length(input_json$`remote`) == 1)) {
          stop(paste("Error! Invalid data for `remote`. Must be a boolean:", input_json$`remote`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JobPostingCreate: the required field `remote` is missing."))
      }
      # check the required field `requiredSkills`
      if (!is.null(input_json$`requiredSkills`)) {
        stopifnot(R6::is.R6(input_json$`requiredSkills`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JobPostingCreate: the required field `requiredSkills` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JobPostingCreate: the required field `status` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JobPostingCreate: the required field `title` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of JobPostingCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `description` is null
      if (is.null(self$`description`)) {
        return(FALSE)
      }

      if (nchar(self$`description`) < 1) {
        return(FALSE)
      }

      # check if the required `remote` is null
      if (is.null(self$`remote`)) {
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

      if (nchar(self$`title`) < 1) {
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
      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      if (nchar(self$`description`) < 1) {
        invalid_fields["description"] <- "Invalid length for `description`, must be bigger than or equal to 1."
      }

      # check if the required `remote` is null
      if (is.null(self$`remote`)) {
        invalid_fields["remote"] <- "Non-nullable required field `remote` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      if (nchar(self$`title`) < 1) {
        invalid_fields["title"] <- "Invalid length for `title`, must be bigger than or equal to 1."
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
# JobPostingCreate$unlock()
#
## Below is an example to define the print function
# JobPostingCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# JobPostingCreate$lock()

