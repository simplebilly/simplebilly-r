#' Create a new Employee
#'
#' @description
#' Employee Class
#'
#' @docType class
#' @title Employee
#' @description Employee Class
#' @format An \code{R6Class} generator object
#' @field address  character [optional]
#' @field backupEmployeeId References another employee who covers when this employee is absent. character [optional]
#' @field bic  character [optional]
#' @field city  character [optional]
#' @field country  \link{CountryCode} [optional]
#' @field createdAt  character [optional]
#' @field dateOfBirth  character [optional]
#' @field deletedAt  character [optional]
#' @field departmentId References the department entity. character [optional]
#' @field email  character [optional]
#' @field firstName  character [optional]
#' @field gender Gender for pay-transparency reporting: \"male\", \"female\" or \"diverse\". \link{Gender} [optional]
#' @field hireDate  character [optional]
#' @field hourlyCost Hourly cost rate in EUR for labor-cost reporting; when unset the rate is derived from `monthly_salary / (weekly_hours * 4.33)`. character [optional]
#' @field iban  character [optional]
#' @field id  character [optional]
#' @field jobTitle  character [optional]
#' @field lastLogin  character [optional]
#' @field lastName  character [optional]
#' @field lastUpdated  character [optional]
#' @field monthlySalary Gross monthly salary in EUR for pay-transparency reporting. character [optional]
#' @field phone  character [optional]
#' @field state  character [optional]
#' @field status  \link{EmployeeStatus} [optional]
#' @field tenantId  character [optional]
#' @field updatedAt  character [optional]
#' @field userId References the user entity. character [optional]
#' @field weeklyHours Contractual weekly working hours for pay-transparency normalization. character [optional]
#' @field zip  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Employee <- R6::R6Class(
  "Employee",
  public = list(
    `address` = NULL,
    `backupEmployeeId` = NULL,
    `bic` = NULL,
    `city` = NULL,
    `country` = NULL,
    `createdAt` = NULL,
    `dateOfBirth` = NULL,
    `deletedAt` = NULL,
    `departmentId` = NULL,
    `email` = NULL,
    `firstName` = NULL,
    `gender` = NULL,
    `hireDate` = NULL,
    `hourlyCost` = NULL,
    `iban` = NULL,
    `id` = NULL,
    `jobTitle` = NULL,
    `lastLogin` = NULL,
    `lastName` = NULL,
    `lastUpdated` = NULL,
    `monthlySalary` = NULL,
    `phone` = NULL,
    `state` = NULL,
    `status` = NULL,
    `tenantId` = NULL,
    `updatedAt` = NULL,
    `userId` = NULL,
    `weeklyHours` = NULL,
    `zip` = NULL,

    #' @description
    #' Initialize a new Employee class.
    #'
    #' @param address address
    #' @param backupEmployeeId References another employee who covers when this employee is absent.
    #' @param bic bic
    #' @param city city
    #' @param country country
    #' @param createdAt createdAt
    #' @param dateOfBirth dateOfBirth
    #' @param deletedAt deletedAt
    #' @param departmentId References the department entity.
    #' @param email email
    #' @param firstName firstName
    #' @param gender Gender for pay-transparency reporting: \"male\", \"female\" or \"diverse\".
    #' @param hireDate hireDate
    #' @param hourlyCost Hourly cost rate in EUR for labor-cost reporting; when unset the rate is derived from `monthly_salary / (weekly_hours * 4.33)`.
    #' @param iban iban
    #' @param id id
    #' @param jobTitle jobTitle
    #' @param lastLogin lastLogin
    #' @param lastName lastName
    #' @param lastUpdated lastUpdated
    #' @param monthlySalary Gross monthly salary in EUR for pay-transparency reporting.
    #' @param phone phone
    #' @param state state
    #' @param status status
    #' @param tenantId tenantId
    #' @param updatedAt updatedAt
    #' @param userId References the user entity.
    #' @param weeklyHours Contractual weekly working hours for pay-transparency normalization.
    #' @param zip zip
    #' @param ... Other optional arguments.
    initialize = function(`address` = NULL, `backupEmployeeId` = NULL, `bic` = NULL, `city` = NULL, `country` = NULL, `createdAt` = NULL, `dateOfBirth` = NULL, `deletedAt` = NULL, `departmentId` = NULL, `email` = NULL, `firstName` = NULL, `gender` = NULL, `hireDate` = NULL, `hourlyCost` = NULL, `iban` = NULL, `id` = NULL, `jobTitle` = NULL, `lastLogin` = NULL, `lastName` = NULL, `lastUpdated` = NULL, `monthlySalary` = NULL, `phone` = NULL, `state` = NULL, `status` = NULL, `tenantId` = NULL, `updatedAt` = NULL, `userId` = NULL, `weeklyHours` = NULL, `zip` = NULL, ...) {
      if (!is.null(`address`)) {
        if (!(is.character(`address`) && length(`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", `address`))
        }
        self$`address` <- `address`
      }
      if (!is.null(`backupEmployeeId`)) {
        if (!(is.character(`backupEmployeeId`) && length(`backupEmployeeId`) == 1)) {
          stop(paste("Error! Invalid data for `backupEmployeeId`. Must be a string:", `backupEmployeeId`))
        }
        self$`backupEmployeeId` <- `backupEmployeeId`
      }
      if (!is.null(`bic`)) {
        if (!(is.character(`bic`) && length(`bic`) == 1)) {
          stop(paste("Error! Invalid data for `bic`. Must be a string:", `bic`))
        }
        self$`bic` <- `bic`
      }
      if (!is.null(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!is.null(`country`)) {
        if (!(`country` %in% c())) {
          stop(paste("Error! \"", `country`, "\" cannot be assigned to `country`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`country`))
        self$`country` <- `country`
      }
      if (!is.null(`createdAt`)) {
        if (!is.character(`createdAt`)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!is.null(`dateOfBirth`)) {
        if (!is.character(`dateOfBirth`)) {
          stop(paste("Error! Invalid data for `dateOfBirth`. Must be a string:", `dateOfBirth`))
        }
        self$`dateOfBirth` <- `dateOfBirth`
      }
      if (!is.null(`deletedAt`)) {
        if (!is.character(`deletedAt`)) {
          stop(paste("Error! Invalid data for `deletedAt`. Must be a string:", `deletedAt`))
        }
        self$`deletedAt` <- `deletedAt`
      }
      if (!is.null(`departmentId`)) {
        if (!(is.character(`departmentId`) && length(`departmentId`) == 1)) {
          stop(paste("Error! Invalid data for `departmentId`. Must be a string:", `departmentId`))
        }
        self$`departmentId` <- `departmentId`
      }
      if (!is.null(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`firstName`)) {
        if (!(is.character(`firstName`) && length(`firstName`) == 1)) {
          stop(paste("Error! Invalid data for `firstName`. Must be a string:", `firstName`))
        }
        self$`firstName` <- `firstName`
      }
      if (!is.null(`gender`)) {
        if (!(`gender` %in% c())) {
          stop(paste("Error! \"", `gender`, "\" cannot be assigned to `gender`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`gender`))
        self$`gender` <- `gender`
      }
      if (!is.null(`hireDate`)) {
        if (!is.character(`hireDate`)) {
          stop(paste("Error! Invalid data for `hireDate`. Must be a string:", `hireDate`))
        }
        self$`hireDate` <- `hireDate`
      }
      if (!is.null(`hourlyCost`)) {
        if (!(is.character(`hourlyCost`) && length(`hourlyCost`) == 1)) {
          stop(paste("Error! Invalid data for `hourlyCost`. Must be a string:", `hourlyCost`))
        }
        self$`hourlyCost` <- `hourlyCost`
      }
      if (!is.null(`iban`)) {
        if (!(is.character(`iban`) && length(`iban`) == 1)) {
          stop(paste("Error! Invalid data for `iban`. Must be a string:", `iban`))
        }
        self$`iban` <- `iban`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`jobTitle`)) {
        if (!(is.character(`jobTitle`) && length(`jobTitle`) == 1)) {
          stop(paste("Error! Invalid data for `jobTitle`. Must be a string:", `jobTitle`))
        }
        self$`jobTitle` <- `jobTitle`
      }
      if (!is.null(`lastLogin`)) {
        if (!is.character(`lastLogin`)) {
          stop(paste("Error! Invalid data for `lastLogin`. Must be a string:", `lastLogin`))
        }
        self$`lastLogin` <- `lastLogin`
      }
      if (!is.null(`lastName`)) {
        if (!(is.character(`lastName`) && length(`lastName`) == 1)) {
          stop(paste("Error! Invalid data for `lastName`. Must be a string:", `lastName`))
        }
        self$`lastName` <- `lastName`
      }
      if (!is.null(`lastUpdated`)) {
        if (!is.character(`lastUpdated`)) {
          stop(paste("Error! Invalid data for `lastUpdated`. Must be a string:", `lastUpdated`))
        }
        self$`lastUpdated` <- `lastUpdated`
      }
      if (!is.null(`monthlySalary`)) {
        if (!(is.character(`monthlySalary`) && length(`monthlySalary`) == 1)) {
          stop(paste("Error! Invalid data for `monthlySalary`. Must be a string:", `monthlySalary`))
        }
        self$`monthlySalary` <- `monthlySalary`
      }
      if (!is.null(`phone`)) {
        if (!(is.character(`phone`) && length(`phone`) == 1)) {
          stop(paste("Error! Invalid data for `phone`. Must be a string:", `phone`))
        }
        self$`phone` <- `phone`
      }
      if (!is.null(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
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
      if (!is.null(`userId`)) {
        if (!(is.character(`userId`) && length(`userId`) == 1)) {
          stop(paste("Error! Invalid data for `userId`. Must be a string:", `userId`))
        }
        self$`userId` <- `userId`
      }
      if (!is.null(`weeklyHours`)) {
        if (!(is.character(`weeklyHours`) && length(`weeklyHours`) == 1)) {
          stop(paste("Error! Invalid data for `weeklyHours`. Must be a string:", `weeklyHours`))
        }
        self$`weeklyHours` <- `weeklyHours`
      }
      if (!is.null(`zip`)) {
        if (!(is.character(`zip`) && length(`zip`) == 1)) {
          stop(paste("Error! Invalid data for `zip`. Must be a string:", `zip`))
        }
        self$`zip` <- `zip`
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
    #' @return Employee as a base R list.
    #' @examples
    #' # convert array of Employee (x) to a data frame
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
    #' Convert Employee to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EmployeeObject <- list()
      if (!is.null(self$`address`)) {
        EmployeeObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`backupEmployeeId`)) {
        EmployeeObject[["backupEmployeeId"]] <-
          self$`backupEmployeeId`
      }
      if (!is.null(self$`bic`)) {
        EmployeeObject[["bic"]] <-
          self$`bic`
      }
      if (!is.null(self$`city`)) {
        EmployeeObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`country`)) {
        EmployeeObject[["country"]] <-
          self$extractSimpleType(self$`country`)
      }
      if (!is.null(self$`createdAt`)) {
        EmployeeObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`dateOfBirth`)) {
        EmployeeObject[["dateOfBirth"]] <-
          self$`dateOfBirth`
      }
      if (!is.null(self$`deletedAt`)) {
        EmployeeObject[["deletedAt"]] <-
          self$`deletedAt`
      }
      if (!is.null(self$`departmentId`)) {
        EmployeeObject[["departmentId"]] <-
          self$`departmentId`
      }
      if (!is.null(self$`email`)) {
        EmployeeObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`firstName`)) {
        EmployeeObject[["firstName"]] <-
          self$`firstName`
      }
      if (!is.null(self$`gender`)) {
        EmployeeObject[["gender"]] <-
          self$extractSimpleType(self$`gender`)
      }
      if (!is.null(self$`hireDate`)) {
        EmployeeObject[["hireDate"]] <-
          self$`hireDate`
      }
      if (!is.null(self$`hourlyCost`)) {
        EmployeeObject[["hourlyCost"]] <-
          self$`hourlyCost`
      }
      if (!is.null(self$`iban`)) {
        EmployeeObject[["iban"]] <-
          self$`iban`
      }
      if (!is.null(self$`id`)) {
        EmployeeObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`jobTitle`)) {
        EmployeeObject[["jobTitle"]] <-
          self$`jobTitle`
      }
      if (!is.null(self$`lastLogin`)) {
        EmployeeObject[["lastLogin"]] <-
          self$`lastLogin`
      }
      if (!is.null(self$`lastName`)) {
        EmployeeObject[["lastName"]] <-
          self$`lastName`
      }
      if (!is.null(self$`lastUpdated`)) {
        EmployeeObject[["lastUpdated"]] <-
          self$`lastUpdated`
      }
      if (!is.null(self$`monthlySalary`)) {
        EmployeeObject[["monthlySalary"]] <-
          self$`monthlySalary`
      }
      if (!is.null(self$`phone`)) {
        EmployeeObject[["phone"]] <-
          self$`phone`
      }
      if (!is.null(self$`state`)) {
        EmployeeObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`status`)) {
        EmployeeObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`tenantId`)) {
        EmployeeObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`updatedAt`)) {
        EmployeeObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      if (!is.null(self$`userId`)) {
        EmployeeObject[["userId"]] <-
          self$`userId`
      }
      if (!is.null(self$`weeklyHours`)) {
        EmployeeObject[["weeklyHours"]] <-
          self$`weeklyHours`
      }
      if (!is.null(self$`zip`)) {
        EmployeeObject[["zip"]] <-
          self$`zip`
      }
      return(EmployeeObject)
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
    #' Deserialize JSON string into an instance of Employee
    #'
    #' @param input_json the JSON input
    #' @return the instance of Employee
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`address`)) {
        self$`address` <- this_object$`address`
      }
      if (!is.null(this_object$`backupEmployeeId`)) {
        self$`backupEmployeeId` <- this_object$`backupEmployeeId`
      }
      if (!is.null(this_object$`bic`)) {
        self$`bic` <- this_object$`bic`
      }
      if (!is.null(this_object$`city`)) {
        self$`city` <- this_object$`city`
      }
      if (!is.null(this_object$`country`)) {
        `country_object` <- CountryCode$new()
        `country_object`$fromJSON(jsonlite::toJSON(this_object$`country`, auto_unbox = TRUE, digits = NA))
        self$`country` <- `country_object`
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`dateOfBirth`)) {
        self$`dateOfBirth` <- this_object$`dateOfBirth`
      }
      if (!is.null(this_object$`deletedAt`)) {
        self$`deletedAt` <- this_object$`deletedAt`
      }
      if (!is.null(this_object$`departmentId`)) {
        self$`departmentId` <- this_object$`departmentId`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`firstName`)) {
        self$`firstName` <- this_object$`firstName`
      }
      if (!is.null(this_object$`gender`)) {
        `gender_object` <- Gender$new()
        `gender_object`$fromJSON(jsonlite::toJSON(this_object$`gender`, auto_unbox = TRUE, digits = NA))
        self$`gender` <- `gender_object`
      }
      if (!is.null(this_object$`hireDate`)) {
        self$`hireDate` <- this_object$`hireDate`
      }
      if (!is.null(this_object$`hourlyCost`)) {
        self$`hourlyCost` <- this_object$`hourlyCost`
      }
      if (!is.null(this_object$`iban`)) {
        self$`iban` <- this_object$`iban`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`jobTitle`)) {
        self$`jobTitle` <- this_object$`jobTitle`
      }
      if (!is.null(this_object$`lastLogin`)) {
        self$`lastLogin` <- this_object$`lastLogin`
      }
      if (!is.null(this_object$`lastName`)) {
        self$`lastName` <- this_object$`lastName`
      }
      if (!is.null(this_object$`lastUpdated`)) {
        self$`lastUpdated` <- this_object$`lastUpdated`
      }
      if (!is.null(this_object$`monthlySalary`)) {
        self$`monthlySalary` <- this_object$`monthlySalary`
      }
      if (!is.null(this_object$`phone`)) {
        self$`phone` <- this_object$`phone`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- EmployeeStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      if (!is.null(this_object$`updatedAt`)) {
        self$`updatedAt` <- this_object$`updatedAt`
      }
      if (!is.null(this_object$`userId`)) {
        self$`userId` <- this_object$`userId`
      }
      if (!is.null(this_object$`weeklyHours`)) {
        self$`weeklyHours` <- this_object$`weeklyHours`
      }
      if (!is.null(this_object$`zip`)) {
        self$`zip` <- this_object$`zip`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Employee in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Employee
    #'
    #' @param input_json the JSON input
    #' @return the instance of Employee
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`address` <- this_object$`address`
      self$`backupEmployeeId` <- this_object$`backupEmployeeId`
      self$`bic` <- this_object$`bic`
      self$`city` <- this_object$`city`
      self$`country` <- CountryCode$new()$fromJSON(jsonlite::toJSON(this_object$`country`, auto_unbox = TRUE, digits = NA))
      self$`createdAt` <- this_object$`createdAt`
      self$`dateOfBirth` <- this_object$`dateOfBirth`
      self$`deletedAt` <- this_object$`deletedAt`
      self$`departmentId` <- this_object$`departmentId`
      self$`email` <- this_object$`email`
      self$`firstName` <- this_object$`firstName`
      self$`gender` <- Gender$new()$fromJSON(jsonlite::toJSON(this_object$`gender`, auto_unbox = TRUE, digits = NA))
      self$`hireDate` <- this_object$`hireDate`
      self$`hourlyCost` <- this_object$`hourlyCost`
      self$`iban` <- this_object$`iban`
      self$`id` <- this_object$`id`
      self$`jobTitle` <- this_object$`jobTitle`
      self$`lastLogin` <- this_object$`lastLogin`
      self$`lastName` <- this_object$`lastName`
      self$`lastUpdated` <- this_object$`lastUpdated`
      self$`monthlySalary` <- this_object$`monthlySalary`
      self$`phone` <- this_object$`phone`
      self$`state` <- this_object$`state`
      self$`status` <- EmployeeStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`tenantId` <- this_object$`tenantId`
      self$`updatedAt` <- this_object$`updatedAt`
      self$`userId` <- this_object$`userId`
      self$`weeklyHours` <- this_object$`weeklyHours`
      self$`zip` <- this_object$`zip`
      self
    },

    #' @description
    #' Validate JSON input with respect to Employee and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Employee
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`address`) > 255) {
        return(FALSE)
      }

      if (nchar(self$`city`) > 100) {
        return(FALSE)
      }

      if (nchar(self$`firstName`) > 100) {
        return(FALSE)
      }
      if (nchar(self$`firstName`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`jobTitle`) > 100) {
        return(FALSE)
      }

      if (nchar(self$`lastName`) > 100) {
        return(FALSE)
      }
      if (nchar(self$`lastName`) < 1) {
        return(FALSE)
      }

      if (!str_detect(self$`phone`, "^\\+?[0-9\\s\\-\\(\\)]{7,20}$")) {
        return(FALSE)
      }

      if (nchar(self$`state`) > 100) {
        return(FALSE)
      }

      if (nchar(self$`zip`) > 20) {
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
      if (nchar(self$`address`) > 255) {
        invalid_fields["address"] <- "Invalid length for `address`, must be smaller than or equal to 255."
      }

      if (nchar(self$`city`) > 100) {
        invalid_fields["city"] <- "Invalid length for `city`, must be smaller than or equal to 100."
      }

      if (nchar(self$`firstName`) > 100) {
        invalid_fields["firstName"] <- "Invalid length for `firstName`, must be smaller than or equal to 100."
      }
      if (nchar(self$`firstName`) < 1) {
        invalid_fields["firstName"] <- "Invalid length for `firstName`, must be bigger than or equal to 1."
      }

      if (nchar(self$`jobTitle`) > 100) {
        invalid_fields["jobTitle"] <- "Invalid length for `jobTitle`, must be smaller than or equal to 100."
      }

      if (nchar(self$`lastName`) > 100) {
        invalid_fields["lastName"] <- "Invalid length for `lastName`, must be smaller than or equal to 100."
      }
      if (nchar(self$`lastName`) < 1) {
        invalid_fields["lastName"] <- "Invalid length for `lastName`, must be bigger than or equal to 1."
      }

      if (!str_detect(self$`phone`, "^\\+?[0-9\\s\\-\\(\\)]{7,20}$")) {
        invalid_fields["phone"] <- "Invalid value for `phone`, must conform to the pattern ^\\+?[0-9\\s\\-\\(\\)]{7,20}$."
      }

      if (nchar(self$`state`) > 100) {
        invalid_fields["state"] <- "Invalid length for `state`, must be smaller than or equal to 100."
      }

      if (nchar(self$`zip`) > 20) {
        invalid_fields["zip"] <- "Invalid length for `zip`, must be smaller than or equal to 20."
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
# Employee$unlock()
#
## Below is an example to define the print function
# Employee$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Employee$lock()

