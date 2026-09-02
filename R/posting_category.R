#' Create a new PostingCategory
#'
#' @description
#' PostingCategory Class
#'
#' @docType class
#' @title PostingCategory
#' @description PostingCategory Class
#' @format An \code{R6Class} generator object
#' @field account_number  character [optional]
#' @field account_number_skr03  character [optional]
#' @field account_number_skr04  character [optional]
#' @field account_number_skr49  character [optional]
#' @field category_id  character
#' @field default_vat_rate  integer
#' @field description  character [optional]
#' @field eks_category  character [optional]
#' @field is_active  character
#' @field is_system  character
#' @field name  character
#' @field skr_version  character
#' @field type  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostingCategory <- R6::R6Class(
  "PostingCategory",
  public = list(
    `account_number` = NULL,
    `account_number_skr03` = NULL,
    `account_number_skr04` = NULL,
    `account_number_skr49` = NULL,
    `category_id` = NULL,
    `default_vat_rate` = NULL,
    `description` = NULL,
    `eks_category` = NULL,
    `is_active` = NULL,
    `is_system` = NULL,
    `name` = NULL,
    `skr_version` = NULL,
    `type` = NULL,

    #' @description
    #' Initialize a new PostingCategory class.
    #'
    #' @param category_id category_id
    #' @param default_vat_rate default_vat_rate
    #' @param is_active is_active
    #' @param is_system is_system
    #' @param name name
    #' @param skr_version skr_version
    #' @param type type
    #' @param account_number account_number
    #' @param account_number_skr03 account_number_skr03
    #' @param account_number_skr04 account_number_skr04
    #' @param account_number_skr49 account_number_skr49
    #' @param description description
    #' @param eks_category eks_category
    #' @param ... Other optional arguments.
    initialize = function(`category_id`, `default_vat_rate`, `is_active`, `is_system`, `name`, `skr_version`, `type`, `account_number` = NULL, `account_number_skr03` = NULL, `account_number_skr04` = NULL, `account_number_skr49` = NULL, `description` = NULL, `eks_category` = NULL, ...) {
      if (!missing(`category_id`)) {
        if (!(is.character(`category_id`) && length(`category_id`) == 1)) {
          stop(paste("Error! Invalid data for `category_id`. Must be a string:", `category_id`))
        }
        self$`category_id` <- `category_id`
      }
      if (!missing(`default_vat_rate`)) {
        if (!(is.numeric(`default_vat_rate`) && length(`default_vat_rate`) == 1)) {
          stop(paste("Error! Invalid data for `default_vat_rate`. Must be an integer:", `default_vat_rate`))
        }
        self$`default_vat_rate` <- `default_vat_rate`
      }
      if (!missing(`is_active`)) {
        if (!(is.logical(`is_active`) && length(`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", `is_active`))
        }
        self$`is_active` <- `is_active`
      }
      if (!missing(`is_system`)) {
        if (!(is.logical(`is_system`) && length(`is_system`) == 1)) {
          stop(paste("Error! Invalid data for `is_system`. Must be a boolean:", `is_system`))
        }
        self$`is_system` <- `is_system`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`skr_version`)) {
        if (!(is.character(`skr_version`) && length(`skr_version`) == 1)) {
          stop(paste("Error! Invalid data for `skr_version`. Must be a string:", `skr_version`))
        }
        self$`skr_version` <- `skr_version`
      }
      if (!missing(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`account_number`)) {
        if (!(is.character(`account_number`) && length(`account_number`) == 1)) {
          stop(paste("Error! Invalid data for `account_number`. Must be a string:", `account_number`))
        }
        self$`account_number` <- `account_number`
      }
      if (!is.null(`account_number_skr03`)) {
        if (!(is.character(`account_number_skr03`) && length(`account_number_skr03`) == 1)) {
          stop(paste("Error! Invalid data for `account_number_skr03`. Must be a string:", `account_number_skr03`))
        }
        self$`account_number_skr03` <- `account_number_skr03`
      }
      if (!is.null(`account_number_skr04`)) {
        if (!(is.character(`account_number_skr04`) && length(`account_number_skr04`) == 1)) {
          stop(paste("Error! Invalid data for `account_number_skr04`. Must be a string:", `account_number_skr04`))
        }
        self$`account_number_skr04` <- `account_number_skr04`
      }
      if (!is.null(`account_number_skr49`)) {
        if (!(is.character(`account_number_skr49`) && length(`account_number_skr49`) == 1)) {
          stop(paste("Error! Invalid data for `account_number_skr49`. Must be a string:", `account_number_skr49`))
        }
        self$`account_number_skr49` <- `account_number_skr49`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`eks_category`)) {
        if (!(is.character(`eks_category`) && length(`eks_category`) == 1)) {
          stop(paste("Error! Invalid data for `eks_category`. Must be a string:", `eks_category`))
        }
        self$`eks_category` <- `eks_category`
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
    #' @return PostingCategory as a base R list.
    #' @examples
    #' # convert array of PostingCategory (x) to a data frame
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
    #' Convert PostingCategory to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostingCategoryObject <- list()
      if (!is.null(self$`account_number`)) {
        PostingCategoryObject[["account_number"]] <-
          self$`account_number`
      }
      if (!is.null(self$`account_number_skr03`)) {
        PostingCategoryObject[["account_number_skr03"]] <-
          self$`account_number_skr03`
      }
      if (!is.null(self$`account_number_skr04`)) {
        PostingCategoryObject[["account_number_skr04"]] <-
          self$`account_number_skr04`
      }
      if (!is.null(self$`account_number_skr49`)) {
        PostingCategoryObject[["account_number_skr49"]] <-
          self$`account_number_skr49`
      }
      if (!is.null(self$`category_id`)) {
        PostingCategoryObject[["category_id"]] <-
          self$`category_id`
      }
      if (!is.null(self$`default_vat_rate`)) {
        PostingCategoryObject[["default_vat_rate"]] <-
          self$`default_vat_rate`
      }
      if (!is.null(self$`description`)) {
        PostingCategoryObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`eks_category`)) {
        PostingCategoryObject[["eks_category"]] <-
          self$`eks_category`
      }
      if (!is.null(self$`is_active`)) {
        PostingCategoryObject[["is_active"]] <-
          self$`is_active`
      }
      if (!is.null(self$`is_system`)) {
        PostingCategoryObject[["is_system"]] <-
          self$`is_system`
      }
      if (!is.null(self$`name`)) {
        PostingCategoryObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`skr_version`)) {
        PostingCategoryObject[["skr_version"]] <-
          self$`skr_version`
      }
      if (!is.null(self$`type`)) {
        PostingCategoryObject[["type"]] <-
          self$`type`
      }
      return(PostingCategoryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PostingCategory
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostingCategory
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`account_number`)) {
        self$`account_number` <- this_object$`account_number`
      }
      if (!is.null(this_object$`account_number_skr03`)) {
        self$`account_number_skr03` <- this_object$`account_number_skr03`
      }
      if (!is.null(this_object$`account_number_skr04`)) {
        self$`account_number_skr04` <- this_object$`account_number_skr04`
      }
      if (!is.null(this_object$`account_number_skr49`)) {
        self$`account_number_skr49` <- this_object$`account_number_skr49`
      }
      if (!is.null(this_object$`category_id`)) {
        self$`category_id` <- this_object$`category_id`
      }
      if (!is.null(this_object$`default_vat_rate`)) {
        self$`default_vat_rate` <- this_object$`default_vat_rate`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`eks_category`)) {
        self$`eks_category` <- this_object$`eks_category`
      }
      if (!is.null(this_object$`is_active`)) {
        self$`is_active` <- this_object$`is_active`
      }
      if (!is.null(this_object$`is_system`)) {
        self$`is_system` <- this_object$`is_system`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`skr_version`)) {
        self$`skr_version` <- this_object$`skr_version`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PostingCategory in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostingCategory
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostingCategory
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`account_number` <- this_object$`account_number`
      self$`account_number_skr03` <- this_object$`account_number_skr03`
      self$`account_number_skr04` <- this_object$`account_number_skr04`
      self$`account_number_skr49` <- this_object$`account_number_skr49`
      self$`category_id` <- this_object$`category_id`
      self$`default_vat_rate` <- this_object$`default_vat_rate`
      self$`description` <- this_object$`description`
      self$`eks_category` <- this_object$`eks_category`
      self$`is_active` <- this_object$`is_active`
      self$`is_system` <- this_object$`is_system`
      self$`name` <- this_object$`name`
      self$`skr_version` <- this_object$`skr_version`
      self$`type` <- this_object$`type`
      self
    },

    #' @description
    #' Validate JSON input with respect to PostingCategory and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `category_id`
      if (!is.null(input_json$`category_id`)) {
        if (!(is.character(input_json$`category_id`) && length(input_json$`category_id`) == 1)) {
          stop(paste("Error! Invalid data for `category_id`. Must be a string:", input_json$`category_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostingCategory: the required field `category_id` is missing."))
      }
      # check the required field `default_vat_rate`
      if (!is.null(input_json$`default_vat_rate`)) {
        if (!(is.numeric(input_json$`default_vat_rate`) && length(input_json$`default_vat_rate`) == 1)) {
          stop(paste("Error! Invalid data for `default_vat_rate`. Must be an integer:", input_json$`default_vat_rate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostingCategory: the required field `default_vat_rate` is missing."))
      }
      # check the required field `is_active`
      if (!is.null(input_json$`is_active`)) {
        if (!(is.logical(input_json$`is_active`) && length(input_json$`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", input_json$`is_active`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostingCategory: the required field `is_active` is missing."))
      }
      # check the required field `is_system`
      if (!is.null(input_json$`is_system`)) {
        if (!(is.logical(input_json$`is_system`) && length(input_json$`is_system`) == 1)) {
          stop(paste("Error! Invalid data for `is_system`. Must be a boolean:", input_json$`is_system`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostingCategory: the required field `is_system` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostingCategory: the required field `name` is missing."))
      }
      # check the required field `skr_version`
      if (!is.null(input_json$`skr_version`)) {
        if (!(is.character(input_json$`skr_version`) && length(input_json$`skr_version`) == 1)) {
          stop(paste("Error! Invalid data for `skr_version`. Must be a string:", input_json$`skr_version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostingCategory: the required field `skr_version` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PostingCategory: the required field `type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostingCategory
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `category_id` is null
      if (is.null(self$`category_id`)) {
        return(FALSE)
      }

      # check if the required `default_vat_rate` is null
      if (is.null(self$`default_vat_rate`)) {
        return(FALSE)
      }

      # check if the required `is_active` is null
      if (is.null(self$`is_active`)) {
        return(FALSE)
      }

      # check if the required `is_system` is null
      if (is.null(self$`is_system`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `skr_version` is null
      if (is.null(self$`skr_version`)) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
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
      # check if the required `category_id` is null
      if (is.null(self$`category_id`)) {
        invalid_fields["category_id"] <- "Non-nullable required field `category_id` cannot be null."
      }

      # check if the required `default_vat_rate` is null
      if (is.null(self$`default_vat_rate`)) {
        invalid_fields["default_vat_rate"] <- "Non-nullable required field `default_vat_rate` cannot be null."
      }

      # check if the required `is_active` is null
      if (is.null(self$`is_active`)) {
        invalid_fields["is_active"] <- "Non-nullable required field `is_active` cannot be null."
      }

      # check if the required `is_system` is null
      if (is.null(self$`is_system`)) {
        invalid_fields["is_system"] <- "Non-nullable required field `is_system` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `skr_version` is null
      if (is.null(self$`skr_version`)) {
        invalid_fields["skr_version"] <- "Non-nullable required field `skr_version` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
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
# PostingCategory$unlock()
#
## Below is an example to define the print function
# PostingCategory$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostingCategory$lock()

