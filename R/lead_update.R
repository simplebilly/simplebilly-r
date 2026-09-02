#' Create a new LeadUpdate
#'
#' @description
#' LeadUpdate Class
#'
#' @docType class
#' @title LeadUpdate
#' @description LeadUpdate Class
#' @format An \code{R6Class} generator object
#' @field company  character [optional]
#' @field convertedAt  character [optional]
#' @field createdAt  character [optional]
#' @field email  character [optional]
#' @field firstContactAt  character [optional]
#' @field name  character [optional]
#' @field notes  character [optional]
#' @field phone  character [optional]
#' @field score  integer [optional]
#' @field source  character [optional]
#' @field status  \link{LeadStatus} [optional]
#' @field tags  \link{AnyType} [optional]
#' @field tenantId  character [optional]
#' @field updatedAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LeadUpdate <- R6::R6Class(
  "LeadUpdate",
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
    #' Initialize a new LeadUpdate class.
    #'
    #' @param company company
    #' @param convertedAt convertedAt
    #' @param createdAt createdAt
    #' @param email email
    #' @param firstContactAt firstContactAt
    #' @param name name
    #' @param notes notes
    #' @param phone phone
    #' @param score score
    #' @param source source
    #' @param status status
    #' @param tags tags
    #' @param tenantId tenantId
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    initialize = function(`company` = NULL, `convertedAt` = NULL, `createdAt` = NULL, `email` = NULL, `firstContactAt` = NULL, `name` = NULL, `notes` = NULL, `phone` = NULL, `score` = NULL, `source` = NULL, `status` = NULL, `tags` = NULL, `tenantId` = NULL, `updatedAt` = NULL, ...) {
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
      if (!is.null(`createdAt`)) {
        if (!is.character(`createdAt`)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!is.null(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`firstContactAt`)) {
        if (!is.character(`firstContactAt`)) {
          stop(paste("Error! Invalid data for `firstContactAt`. Must be a string:", `firstContactAt`))
        }
        self$`firstContactAt` <- `firstContactAt`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
      if (!is.null(`score`)) {
        if (!(is.numeric(`score`) && length(`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be an integer:", `score`))
        }
        self$`score` <- `score`
      }
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`tags`)) {
        stopifnot(R6::is.R6(`tags`))
        self$`tags` <- `tags`
      }
      if (!is.null(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
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
    #' @return LeadUpdate as a base R list.
    #' @examples
    #' # convert array of LeadUpdate (x) to a data frame
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
    #' Convert LeadUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LeadUpdateObject <- list()
      if (!is.null(self$`company`)) {
        LeadUpdateObject[["company"]] <-
          self$`company`
      }
      if (!is.null(self$`convertedAt`)) {
        LeadUpdateObject[["convertedAt"]] <-
          self$`convertedAt`
      }
      if (!is.null(self$`createdAt`)) {
        LeadUpdateObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`email`)) {
        LeadUpdateObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`firstContactAt`)) {
        LeadUpdateObject[["firstContactAt"]] <-
          self$`firstContactAt`
      }
      if (!is.null(self$`name`)) {
        LeadUpdateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`notes`)) {
        LeadUpdateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`phone`)) {
        LeadUpdateObject[["phone"]] <-
          self$`phone`
      }
      if (!is.null(self$`score`)) {
        LeadUpdateObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`source`)) {
        LeadUpdateObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`status`)) {
        LeadUpdateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`tags`)) {
        LeadUpdateObject[["tags"]] <-
          self$extractSimpleType(self$`tags`)
      }
      if (!is.null(self$`tenantId`)) {
        LeadUpdateObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`updatedAt`)) {
        LeadUpdateObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      return(LeadUpdateObject)
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
    #' Deserialize JSON string into an instance of LeadUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of LeadUpdate
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
    #' @return LeadUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LeadUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of LeadUpdate
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
    #' Validate JSON input with respect to LeadUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LeadUpdate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# LeadUpdate$unlock()
#
## Below is an example to define the print function
# LeadUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LeadUpdate$lock()

