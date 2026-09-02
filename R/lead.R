#' Create a new Lead
#'
#' @description
#' Lead Class
#'
#' @docType class
#' @title Lead
#' @description Lead Class
#' @format An \code{R6Class} generator object
#' @field company  character [optional]
#' @field convertedAt  character [optional]
#' @field createdAt  character
#' @field email  character [optional]
#' @field firstContactAt  character
#' @field name  character
#' @field notes  character [optional]
#' @field phone  character [optional]
#' @field score  integer
#' @field source  character
#' @field status  \link{LeadStatus}
#' @field tags  \link{AnyType}
#' @field tenantId  character
#' @field updatedAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Lead <- R6::R6Class(
  "Lead",
  public = list(
    `company` = NULL,
    `convertedAt` = NULL,
    `createdAt` = NULL,
    `email` = NULL,
    `firstContactAt` = NULL,
    `name` = NULL,
    `notes` = NULL,
    `phone` = NULL,
    `score` = NULL,
    `source` = NULL,
    `status` = NULL,
    `tags` = NULL,
    `tenantId` = NULL,
    `updatedAt` = NULL,

    #' @description
    #' Initialize a new Lead class.
    #'
    #' @param createdAt createdAt
    #' @param firstContactAt firstContactAt
    #' @param name name
    #' @param score score
    #' @param source source
    #' @param status status
    #' @param tags tags
    #' @param tenantId tenantId
    #' @param company company
    #' @param convertedAt convertedAt
    #' @param email email
    #' @param notes notes
    #' @param phone phone
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    initialize = function(`createdAt`, `firstContactAt`, `name`, `score`, `source`, `status`, `tags`, `tenantId`, `company` = NULL, `convertedAt` = NULL, `email` = NULL, `notes` = NULL, `phone` = NULL, `updatedAt` = NULL, ...) {
      if (!missing(`createdAt`)) {
        if (!(is.character(`createdAt`) && length(`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!missing(`firstContactAt`)) {
        if (!(is.character(`firstContactAt`) && length(`firstContactAt`) == 1)) {
          stop(paste("Error! Invalid data for `firstContactAt`. Must be a string:", `firstContactAt`))
        }
        self$`firstContactAt` <- `firstContactAt`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`score`)) {
        if (!(is.numeric(`score`) && length(`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be an integer:", `score`))
        }
        self$`score` <- `score`
      }
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
      if (!missing(`tags`)) {
        stopifnot(R6::is.R6(`tags`))
        self$`tags` <- `tags`
      }
      if (!missing(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
      }
      if (!is.null(`company`)) {
        if (!(is.character(`company`) && length(`company`) == 1)) {
          stop(paste("Error! Invalid data for `company`. Must be a string:", `company`))
        }
        self$`company` <- `company`
      }
      if (!is.null(`convertedAt`)) {
        if (!is.character(`convertedAt`)) {
          stop(paste("Error! Invalid data for `convertedAt`. Must be a string:", `convertedAt`))
        }
        self$`convertedAt` <- `convertedAt`
      }
      if (!is.null(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`phone`)) {
        if (!(is.character(`phone`) && length(`phone`) == 1)) {
          stop(paste("Error! Invalid data for `phone`. Must be a string:", `phone`))
        }
        self$`phone` <- `phone`
      }
      if (!is.null(`updatedAt`)) {
        if (!is.character(`updatedAt`)) {
          stop(paste("Error! Invalid data for `updatedAt`. Must be a string:", `updatedAt`))
        }
        self$`updatedAt` <- `updatedAt`
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
    #' @return Lead as a base R list.
    #' @examples
    #' # convert array of Lead (x) to a data frame
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
    #' Convert Lead to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LeadObject <- list()
      if (!is.null(self$`company`)) {
        LeadObject[["company"]] <-
          self$`company`
      }
      if (!is.null(self$`convertedAt`)) {
        LeadObject[["convertedAt"]] <-
          self$`convertedAt`
      }
      if (!is.null(self$`createdAt`)) {
        LeadObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`email`)) {
        LeadObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`firstContactAt`)) {
        LeadObject[["firstContactAt"]] <-
          self$`firstContactAt`
      }
      if (!is.null(self$`name`)) {
        LeadObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`notes`)) {
        LeadObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`phone`)) {
        LeadObject[["phone"]] <-
          self$`phone`
      }
      if (!is.null(self$`score`)) {
        LeadObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`source`)) {
        LeadObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`status`)) {
        LeadObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`tags`)) {
        LeadObject[["tags"]] <-
          self$extractSimpleType(self$`tags`)
      }
      if (!is.null(self$`tenantId`)) {
        LeadObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`updatedAt`)) {
        LeadObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      return(LeadObject)
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
    #' Deserialize JSON string into an instance of Lead
    #'
    #' @param input_json the JSON input
    #' @return the instance of Lead
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`company`)) {
        self$`company` <- this_object$`company`
      }
      if (!is.null(this_object$`convertedAt`)) {
        self$`convertedAt` <- this_object$`convertedAt`
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`firstContactAt`)) {
        self$`firstContactAt` <- this_object$`firstContactAt`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`phone`)) {
        self$`phone` <- this_object$`phone`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- LeadStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`tags`)) {
        `tags_object` <- AnyType$new()
        `tags_object`$fromJSON(jsonlite::toJSON(this_object$`tags`, auto_unbox = TRUE, digits = NA))
        self$`tags` <- `tags_object`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      if (!is.null(this_object$`updatedAt`)) {
        self$`updatedAt` <- this_object$`updatedAt`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Lead in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Lead
    #'
    #' @param input_json the JSON input
    #' @return the instance of Lead
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`company` <- this_object$`company`
      self$`convertedAt` <- this_object$`convertedAt`
      self$`createdAt` <- this_object$`createdAt`
      self$`email` <- this_object$`email`
      self$`firstContactAt` <- this_object$`firstContactAt`
      self$`name` <- this_object$`name`
      self$`notes` <- this_object$`notes`
      self$`phone` <- this_object$`phone`
      self$`score` <- this_object$`score`
      self$`source` <- this_object$`source`
      self$`status` <- LeadStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`tags` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`tags`, auto_unbox = TRUE, digits = NA))
      self$`tenantId` <- this_object$`tenantId`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },

    #' @description
    #' Validate JSON input with respect to Lead and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `createdAt`
      if (!is.null(input_json$`createdAt`)) {
        if (!(is.character(input_json$`createdAt`) && length(input_json$`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", input_json$`createdAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Lead: the required field `createdAt` is missing."))
      }
      # check the required field `firstContactAt`
      if (!is.null(input_json$`firstContactAt`)) {
        if (!(is.character(input_json$`firstContactAt`) && length(input_json$`firstContactAt`) == 1)) {
          stop(paste("Error! Invalid data for `firstContactAt`. Must be a string:", input_json$`firstContactAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Lead: the required field `firstContactAt` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Lead: the required field `name` is missing."))
      }
      # check the required field `score`
      if (!is.null(input_json$`score`)) {
        if (!(is.numeric(input_json$`score`) && length(input_json$`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be an integer:", input_json$`score`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Lead: the required field `score` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Lead: the required field `source` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Lead: the required field `status` is missing."))
      }
      # check the required field `tags`
      if (!is.null(input_json$`tags`)) {
        stopifnot(R6::is.R6(input_json$`tags`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Lead: the required field `tags` is missing."))
      }
      # check the required field `tenantId`
      if (!is.null(input_json$`tenantId`)) {
        if (!(is.character(input_json$`tenantId`) && length(input_json$`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", input_json$`tenantId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Lead: the required field `tenantId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Lead
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        return(FALSE)
      }

      # check if the required `firstContactAt` is null
      if (is.null(self$`firstContactAt`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `score` is null
      if (is.null(self$`score`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
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
      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        invalid_fields["createdAt"] <- "Non-nullable required field `createdAt` cannot be null."
      }

      # check if the required `firstContactAt` is null
      if (is.null(self$`firstContactAt`)) {
        invalid_fields["firstContactAt"] <- "Non-nullable required field `firstContactAt` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `score` is null
      if (is.null(self$`score`)) {
        invalid_fields["score"] <- "Non-nullable required field `score` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
        invalid_fields["tenantId"] <- "Non-nullable required field `tenantId` cannot be null."
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
# Lead$unlock()
#
## Below is an example to define the print function
# Lead$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Lead$lock()

