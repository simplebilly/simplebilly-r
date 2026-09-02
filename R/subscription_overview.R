#' Create a new SubscriptionOverview
#'
#' @description
#' Tenant subscription overview for the billing page: current plan, status, period end, trial state, effective limits, current usage and feature flags. Backed by Paddle Billing webhook data written into `billing_info` + `tenants.plan`, and by the canonical plans in `crate::saasy::plans`.  JSON contract (camelCase, matches the frontend): `plan`, `planName`, `priceEur`, `status`, `currentPeriodEnd`, `manageUrl`, `trialEndsAt`, `isTrialing`, `limits:{maxUsers,maxInvoicesPerMonth,maxConnectors}`, `usage:{users,invoicesThisMonth,connectors,overageSeats}`, `features:{taxAutomations,fancyReports,erp}`.
#'
#' @docType class
#' @title SubscriptionOverview
#' @description SubscriptionOverview Class
#' @format An \code{R6Class} generator object
#' @field currentPeriodEnd  character [optional]
#' @field features  \link{PlanFeatures}
#' @field isTrialing  character
#' @field limits  \link{PlanLimits}
#' @field manageUrl  character [optional]
#' @field plan Resolved plan id (free/starter/business/enterprise, or a custom override id). character
#' @field planName  character
#' @field priceEur Monthly price in EUR; `-1.0` = custom pricing (enterprise). numeric
#' @field quantity  integer [optional]
#' @field status  character [optional]
#' @field subscriptionId  character [optional]
#' @field trialEndsAt  character [optional]
#' @field usage  \link{UsageSnapshot}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SubscriptionOverview <- R6::R6Class(
  "SubscriptionOverview",
  public = list(
    `currentPeriodEnd` = NULL,
    `features` = NULL,
    `isTrialing` = NULL,
    `limits` = NULL,
    `manageUrl` = NULL,
    `plan` = NULL,
    `planName` = NULL,
    `priceEur` = NULL,
    `quantity` = NULL,
    `status` = NULL,
    `subscriptionId` = NULL,
    `trialEndsAt` = NULL,
    `usage` = NULL,

    #' @description
    #' Initialize a new SubscriptionOverview class.
    #'
    #' @param features features
    #' @param isTrialing isTrialing
    #' @param limits limits
    #' @param plan Resolved plan id (free/starter/business/enterprise, or a custom override id).
    #' @param planName planName
    #' @param priceEur Monthly price in EUR; `-1.0` = custom pricing (enterprise).
    #' @param usage usage
    #' @param currentPeriodEnd currentPeriodEnd
    #' @param manageUrl manageUrl
    #' @param quantity quantity
    #' @param status status
    #' @param subscriptionId subscriptionId
    #' @param trialEndsAt trialEndsAt
    #' @param ... Other optional arguments.
    initialize = function(`features`, `isTrialing`, `limits`, `plan`, `planName`, `priceEur`, `usage`, `currentPeriodEnd` = NULL, `manageUrl` = NULL, `quantity` = NULL, `status` = NULL, `subscriptionId` = NULL, `trialEndsAt` = NULL, ...) {
      if (!missing(`features`)) {
        stopifnot(R6::is.R6(`features`))
        self$`features` <- `features`
      }
      if (!missing(`isTrialing`)) {
        if (!(is.logical(`isTrialing`) && length(`isTrialing`) == 1)) {
          stop(paste("Error! Invalid data for `isTrialing`. Must be a boolean:", `isTrialing`))
        }
        self$`isTrialing` <- `isTrialing`
      }
      if (!missing(`limits`)) {
        stopifnot(R6::is.R6(`limits`))
        self$`limits` <- `limits`
      }
      if (!missing(`plan`)) {
        if (!(is.character(`plan`) && length(`plan`) == 1)) {
          stop(paste("Error! Invalid data for `plan`. Must be a string:", `plan`))
        }
        self$`plan` <- `plan`
      }
      if (!missing(`planName`)) {
        if (!(is.character(`planName`) && length(`planName`) == 1)) {
          stop(paste("Error! Invalid data for `planName`. Must be a string:", `planName`))
        }
        self$`planName` <- `planName`
      }
      if (!missing(`priceEur`)) {
        if (!(is.numeric(`priceEur`) && length(`priceEur`) == 1)) {
          stop(paste("Error! Invalid data for `priceEur`. Must be a number:", `priceEur`))
        }
        self$`priceEur` <- `priceEur`
      }
      if (!missing(`usage`)) {
        stopifnot(R6::is.R6(`usage`))
        self$`usage` <- `usage`
      }
      if (!is.null(`currentPeriodEnd`)) {
        if (!is.character(`currentPeriodEnd`)) {
          stop(paste("Error! Invalid data for `currentPeriodEnd`. Must be a string:", `currentPeriodEnd`))
        }
        self$`currentPeriodEnd` <- `currentPeriodEnd`
      }
      if (!is.null(`manageUrl`)) {
        if (!(is.character(`manageUrl`) && length(`manageUrl`) == 1)) {
          stop(paste("Error! Invalid data for `manageUrl`. Must be a string:", `manageUrl`))
        }
        self$`manageUrl` <- `manageUrl`
      }
      if (!is.null(`quantity`)) {
        if (!(is.numeric(`quantity`) && length(`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", `quantity`))
        }
        self$`quantity` <- `quantity`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`subscriptionId`)) {
        if (!(is.character(`subscriptionId`) && length(`subscriptionId`) == 1)) {
          stop(paste("Error! Invalid data for `subscriptionId`. Must be a string:", `subscriptionId`))
        }
        self$`subscriptionId` <- `subscriptionId`
      }
      if (!is.null(`trialEndsAt`)) {
        if (!is.character(`trialEndsAt`)) {
          stop(paste("Error! Invalid data for `trialEndsAt`. Must be a string:", `trialEndsAt`))
        }
        self$`trialEndsAt` <- `trialEndsAt`
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
    #' @return SubscriptionOverview as a base R list.
    #' @examples
    #' # convert array of SubscriptionOverview (x) to a data frame
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
    #' Convert SubscriptionOverview to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SubscriptionOverviewObject <- list()
      if (!is.null(self$`currentPeriodEnd`)) {
        SubscriptionOverviewObject[["currentPeriodEnd"]] <-
          self$`currentPeriodEnd`
      }
      if (!is.null(self$`features`)) {
        SubscriptionOverviewObject[["features"]] <-
          self$extractSimpleType(self$`features`)
      }
      if (!is.null(self$`isTrialing`)) {
        SubscriptionOverviewObject[["isTrialing"]] <-
          self$`isTrialing`
      }
      if (!is.null(self$`limits`)) {
        SubscriptionOverviewObject[["limits"]] <-
          self$extractSimpleType(self$`limits`)
      }
      if (!is.null(self$`manageUrl`)) {
        SubscriptionOverviewObject[["manageUrl"]] <-
          self$`manageUrl`
      }
      if (!is.null(self$`plan`)) {
        SubscriptionOverviewObject[["plan"]] <-
          self$`plan`
      }
      if (!is.null(self$`planName`)) {
        SubscriptionOverviewObject[["planName"]] <-
          self$`planName`
      }
      if (!is.null(self$`priceEur`)) {
        SubscriptionOverviewObject[["priceEur"]] <-
          self$`priceEur`
      }
      if (!is.null(self$`quantity`)) {
        SubscriptionOverviewObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`status`)) {
        SubscriptionOverviewObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`subscriptionId`)) {
        SubscriptionOverviewObject[["subscriptionId"]] <-
          self$`subscriptionId`
      }
      if (!is.null(self$`trialEndsAt`)) {
        SubscriptionOverviewObject[["trialEndsAt"]] <-
          self$`trialEndsAt`
      }
      if (!is.null(self$`usage`)) {
        SubscriptionOverviewObject[["usage"]] <-
          self$extractSimpleType(self$`usage`)
      }
      return(SubscriptionOverviewObject)
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
    #' Deserialize JSON string into an instance of SubscriptionOverview
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionOverview
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`currentPeriodEnd`)) {
        self$`currentPeriodEnd` <- this_object$`currentPeriodEnd`
      }
      if (!is.null(this_object$`features`)) {
        `features_object` <- PlanFeatures$new()
        `features_object`$fromJSON(jsonlite::toJSON(this_object$`features`, auto_unbox = TRUE, digits = NA))
        self$`features` <- `features_object`
      }
      if (!is.null(this_object$`isTrialing`)) {
        self$`isTrialing` <- this_object$`isTrialing`
      }
      if (!is.null(this_object$`limits`)) {
        `limits_object` <- PlanLimits$new()
        `limits_object`$fromJSON(jsonlite::toJSON(this_object$`limits`, auto_unbox = TRUE, digits = NA))
        self$`limits` <- `limits_object`
      }
      if (!is.null(this_object$`manageUrl`)) {
        self$`manageUrl` <- this_object$`manageUrl`
      }
      if (!is.null(this_object$`plan`)) {
        self$`plan` <- this_object$`plan`
      }
      if (!is.null(this_object$`planName`)) {
        self$`planName` <- this_object$`planName`
      }
      if (!is.null(this_object$`priceEur`)) {
        self$`priceEur` <- this_object$`priceEur`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`subscriptionId`)) {
        self$`subscriptionId` <- this_object$`subscriptionId`
      }
      if (!is.null(this_object$`trialEndsAt`)) {
        self$`trialEndsAt` <- this_object$`trialEndsAt`
      }
      if (!is.null(this_object$`usage`)) {
        `usage_object` <- UsageSnapshot$new()
        `usage_object`$fromJSON(jsonlite::toJSON(this_object$`usage`, auto_unbox = TRUE, digits = NA))
        self$`usage` <- `usage_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SubscriptionOverview in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SubscriptionOverview
    #'
    #' @param input_json the JSON input
    #' @return the instance of SubscriptionOverview
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`currentPeriodEnd` <- this_object$`currentPeriodEnd`
      self$`features` <- PlanFeatures$new()$fromJSON(jsonlite::toJSON(this_object$`features`, auto_unbox = TRUE, digits = NA))
      self$`isTrialing` <- this_object$`isTrialing`
      self$`limits` <- PlanLimits$new()$fromJSON(jsonlite::toJSON(this_object$`limits`, auto_unbox = TRUE, digits = NA))
      self$`manageUrl` <- this_object$`manageUrl`
      self$`plan` <- this_object$`plan`
      self$`planName` <- this_object$`planName`
      self$`priceEur` <- this_object$`priceEur`
      self$`quantity` <- this_object$`quantity`
      self$`status` <- this_object$`status`
      self$`subscriptionId` <- this_object$`subscriptionId`
      self$`trialEndsAt` <- this_object$`trialEndsAt`
      self$`usage` <- UsageSnapshot$new()$fromJSON(jsonlite::toJSON(this_object$`usage`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to SubscriptionOverview and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `features`
      if (!is.null(input_json$`features`)) {
        stopifnot(R6::is.R6(input_json$`features`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubscriptionOverview: the required field `features` is missing."))
      }
      # check the required field `isTrialing`
      if (!is.null(input_json$`isTrialing`)) {
        if (!(is.logical(input_json$`isTrialing`) && length(input_json$`isTrialing`) == 1)) {
          stop(paste("Error! Invalid data for `isTrialing`. Must be a boolean:", input_json$`isTrialing`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubscriptionOverview: the required field `isTrialing` is missing."))
      }
      # check the required field `limits`
      if (!is.null(input_json$`limits`)) {
        stopifnot(R6::is.R6(input_json$`limits`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubscriptionOverview: the required field `limits` is missing."))
      }
      # check the required field `plan`
      if (!is.null(input_json$`plan`)) {
        if (!(is.character(input_json$`plan`) && length(input_json$`plan`) == 1)) {
          stop(paste("Error! Invalid data for `plan`. Must be a string:", input_json$`plan`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubscriptionOverview: the required field `plan` is missing."))
      }
      # check the required field `planName`
      if (!is.null(input_json$`planName`)) {
        if (!(is.character(input_json$`planName`) && length(input_json$`planName`) == 1)) {
          stop(paste("Error! Invalid data for `planName`. Must be a string:", input_json$`planName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubscriptionOverview: the required field `planName` is missing."))
      }
      # check the required field `priceEur`
      if (!is.null(input_json$`priceEur`)) {
        if (!(is.numeric(input_json$`priceEur`) && length(input_json$`priceEur`) == 1)) {
          stop(paste("Error! Invalid data for `priceEur`. Must be a number:", input_json$`priceEur`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubscriptionOverview: the required field `priceEur` is missing."))
      }
      # check the required field `usage`
      if (!is.null(input_json$`usage`)) {
        stopifnot(R6::is.R6(input_json$`usage`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SubscriptionOverview: the required field `usage` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SubscriptionOverview
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `features` is null
      if (is.null(self$`features`)) {
        return(FALSE)
      }

      # check if the required `isTrialing` is null
      if (is.null(self$`isTrialing`)) {
        return(FALSE)
      }

      # check if the required `limits` is null
      if (is.null(self$`limits`)) {
        return(FALSE)
      }

      # check if the required `plan` is null
      if (is.null(self$`plan`)) {
        return(FALSE)
      }

      # check if the required `planName` is null
      if (is.null(self$`planName`)) {
        return(FALSE)
      }

      # check if the required `priceEur` is null
      if (is.null(self$`priceEur`)) {
        return(FALSE)
      }

      # check if the required `usage` is null
      if (is.null(self$`usage`)) {
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
      # check if the required `features` is null
      if (is.null(self$`features`)) {
        invalid_fields["features"] <- "Non-nullable required field `features` cannot be null."
      }

      # check if the required `isTrialing` is null
      if (is.null(self$`isTrialing`)) {
        invalid_fields["isTrialing"] <- "Non-nullable required field `isTrialing` cannot be null."
      }

      # check if the required `limits` is null
      if (is.null(self$`limits`)) {
        invalid_fields["limits"] <- "Non-nullable required field `limits` cannot be null."
      }

      # check if the required `plan` is null
      if (is.null(self$`plan`)) {
        invalid_fields["plan"] <- "Non-nullable required field `plan` cannot be null."
      }

      # check if the required `planName` is null
      if (is.null(self$`planName`)) {
        invalid_fields["planName"] <- "Non-nullable required field `planName` cannot be null."
      }

      # check if the required `priceEur` is null
      if (is.null(self$`priceEur`)) {
        invalid_fields["priceEur"] <- "Non-nullable required field `priceEur` cannot be null."
      }

      # check if the required `usage` is null
      if (is.null(self$`usage`)) {
        invalid_fields["usage"] <- "Non-nullable required field `usage` cannot be null."
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
# SubscriptionOverview$unlock()
#
## Below is an example to define the print function
# SubscriptionOverview$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SubscriptionOverview$lock()

