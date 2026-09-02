#' Create a new PublicPosting
#'
#' @description
#' Minimal shape for the public careers page (no tenant internals).
#'
#' @docType class
#' @title PublicPosting
#' @description PublicPosting Class
#' @format An \code{R6Class} generator object
#' @field currency  character [optional]
#' @field description  character
#' @field employmentType  character [optional]
#' @field id  character
#' @field location  character [optional]
#' @field remote  character
#' @field requiredSkills  list(character)
#' @field requirements  character [optional]
#' @field salaryMax  integer [optional]
#' @field salaryMin  integer [optional]
#' @field title  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PublicPosting <- R6::R6Class(
  "PublicPosting",
  public = list(
    `currency` = NULL,
    `description` = NULL,
    `employmentType` = NULL,
    `id` = NULL,
    `location` = NULL,
    `remote` = NULL,
    `requiredSkills` = NULL,
    `requirements` = NULL,
    `salaryMax` = NULL,
    `salaryMin` = NULL,
    `title` = NULL,

    #' @description
    #' Initialize a new PublicPosting class.
    #'
    #' @param description description
    #' @param id id
    #' @param remote remote
    #' @param requiredSkills requiredSkills
    #' @param title title
    #' @param currency currency
    #' @param employmentType employmentType
    #' @param location location
    #' @param requirements requirements
    #' @param salaryMax salaryMax
    #' @param salaryMin salaryMin
    #' @param ... Other optional arguments.
    initialize = function(`description`, `id`, `remote`, `requiredSkills`, `title`, `currency` = NULL, `employmentType` = NULL, `location` = NULL, `requirements` = NULL, `salaryMax` = NULL, `salaryMin` = NULL, ...) {
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`remote`)) {
        if (!(is.logical(`remote`) && length(`remote`) == 1)) {
          stop(paste("Error! Invalid data for `remote`. Must be a boolean:", `remote`))
        }
        self$`remote` <- `remote`
      }
      if (!missing(`requiredSkills`)) {
        stopifnot(is.vector(`requiredSkills`), length(`requiredSkills`) != 0)
        sapply(`requiredSkills`, function(x) stopifnot(is.character(x)))
        self$`requiredSkills` <- `requiredSkills`
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
      if (!is.null(`employmentType`)) {
        if (!(is.character(`employmentType`) && length(`employmentType`) == 1)) {
          stop(paste("Error! Invalid data for `employmentType`. Must be a string:", `employmentType`))
        }
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
    #' @return PublicPosting as a base R list.
    #' @examples
    #' # convert array of PublicPosting (x) to a data frame
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
    #' Convert PublicPosting to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PublicPostingObject <- list()
      if (!is.null(self$`currency`)) {
        PublicPostingObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`description`)) {
        PublicPostingObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`employmentType`)) {
        PublicPostingObject[["employmentType"]] <-
          self$`employmentType`
      }
      if (!is.null(self$`id`)) {
        PublicPostingObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`location`)) {
        PublicPostingObject[["location"]] <-
          self$`location`
      }
      if (!is.null(self$`remote`)) {
        PublicPostingObject[["remote"]] <-
          self$`remote`
      }
      if (!is.null(self$`requiredSkills`)) {
        PublicPostingObject[["requiredSkills"]] <-
          self$`requiredSkills`
      }
      if (!is.null(self$`requirements`)) {
        PublicPostingObject[["requirements"]] <-
          self$`requirements`
      }
      if (!is.null(self$`salaryMax`)) {
        PublicPostingObject[["salaryMax"]] <-
          self$`salaryMax`
      }
      if (!is.null(self$`salaryMin`)) {
        PublicPostingObject[["salaryMin"]] <-
          self$`salaryMin`
      }
      if (!is.null(self$`title`)) {
        PublicPostingObject[["title"]] <-
          self$`title`
      }
      return(PublicPostingObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PublicPosting
    #'
    #' @param input_json the JSON input
    #' @return the instance of PublicPosting
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`employmentType`)) {
        self$`employmentType` <- this_object$`employmentType`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`location`)) {
        self$`location` <- this_object$`location`
      }
      if (!is.null(this_object$`remote`)) {
        self$`remote` <- this_object$`remote`
      }
      if (!is.null(this_object$`requiredSkills`)) {
        self$`requiredSkills` <- ApiClient$new()$deserializeObj(this_object$`requiredSkills`, "array[character]", loadNamespace("openapi"))
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
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PublicPosting in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PublicPosting
    #'
    #' @param input_json the JSON input
    #' @return the instance of PublicPosting
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`currency` <- this_object$`currency`
      self$`description` <- this_object$`description`
      self$`employmentType` <- this_object$`employmentType`
      self$`id` <- this_object$`id`
      self$`location` <- this_object$`location`
      self$`remote` <- this_object$`remote`
      self$`requiredSkills` <- ApiClient$new()$deserializeObj(this_object$`requiredSkills`, "array[character]", loadNamespace("openapi"))
      self$`requirements` <- this_object$`requirements`
      self$`salaryMax` <- this_object$`salaryMax`
      self$`salaryMin` <- this_object$`salaryMin`
      self$`title` <- this_object$`title`
      self
    },

    #' @description
    #' Validate JSON input with respect to PublicPosting and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PublicPosting: the required field `description` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicPosting: the required field `id` is missing."))
      }
      # check the required field `remote`
      if (!is.null(input_json$`remote`)) {
        if (!(is.logical(input_json$`remote`) && length(input_json$`remote`) == 1)) {
          stop(paste("Error! Invalid data for `remote`. Must be a boolean:", input_json$`remote`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicPosting: the required field `remote` is missing."))
      }
      # check the required field `requiredSkills`
      if (!is.null(input_json$`requiredSkills`)) {
        stopifnot(is.vector(input_json$`requiredSkills`), length(input_json$`requiredSkills`) != 0)
        tmp <- sapply(input_json$`requiredSkills`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicPosting: the required field `requiredSkills` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicPosting: the required field `title` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PublicPosting
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

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `remote` is null
      if (is.null(self$`remote`)) {
        return(FALSE)
      }

      # check if the required `requiredSkills` is null
      if (is.null(self$`requiredSkills`)) {
        return(FALSE)
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
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

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `remote` is null
      if (is.null(self$`remote`)) {
        invalid_fields["remote"] <- "Non-nullable required field `remote` cannot be null."
      }

      # check if the required `requiredSkills` is null
      if (is.null(self$`requiredSkills`)) {
        invalid_fields["requiredSkills"] <- "Non-nullable required field `requiredSkills` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
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
# PublicPosting$unlock()
#
## Below is an example to define the print function
# PublicPosting$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PublicPosting$lock()

