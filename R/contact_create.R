#' Create a new ContactCreate
#'
#' @description
#' ContactCreate Class
#'
#' @docType class
#' @title ContactCreate
#' @description ContactCreate Class
#' @format An \code{R6Class} generator object
#' @field accountHolder  character [optional]
#' @field acquisitionCost  character [optional]
#' @field addressSupplement  character [optional]
#' @field attention  character [optional]
#' @field bankName  character [optional]
#' @field bic  character [optional]
#' @field buyerReference  character [optional]
#' @field category  character [optional]
#' @field certificateAuthority  character [optional]
#' @field certificateNumber  character [optional]
#' @field certificateParagraph  character [optional]
#' @field certificateValidUntil  character [optional]
#' @field city  character [optional]
#' @field companyName  character [optional]
#' @field contactPersons  \link{AnyType} [optional]
#' @field contactType  \link{ContactType}
#' @field country  \link{CountryCode} [optional]
#' @field creditLimit  character [optional]
#' @field creditorAccountSkr03  character [optional]
#' @field creditorAccountSkr04  character [optional]
#' @field currency  character [optional]
#' @field customFields  \link{AnyType} [optional]
#' @field customerNumber  character [optional]
#' @field debitorAccountSkr03  character [optional]
#' @field debitorAccountSkr04  character [optional]
#' @field defaultDebitorNumber  character [optional]
#' @field deliveryBlock  character [optional]
#' @field department  character [optional]
#' @field discountDays  integer [optional]
#' @field discountPercentage  character [optional]
#' @field donationReceiptEligible  character [optional]
#' @field email  character [optional]
#' @field externalId  character [optional]
#' @field fax  character [optional]
#' @field iban  character [optional]
#' @field industry  character [optional]
#' @field isActive  character [optional]
#' @field isMember  character [optional]
#' @field isNonprofit  character [optional]
#' @field lastContactDate  character [optional]
#' @field lastPurchaseDate  character [optional]
#' @field leitwegId  character [optional]
#' @field lifetimeValue  character [optional]
#' @field mandateDate  character [optional]
#' @field mandateReference  character [optional]
#' @field marketingConsent  character [optional]
#' @field marketingConsentAt  character [optional]
#' @field marketingConsentSource  character [optional]
#' @field mobile  character [optional]
#' @field name  character
#' @field nextContactDate  character [optional]
#' @field notes  character [optional]
#' @field openingBalance  character [optional]
#' @field openingBalanceDate  character [optional]
#' @field orderReference  character [optional]
#' @field paymentBlock  character [optional]
#' @field paymentGracePeriodDays  integer [optional]
#' @field paymentMethods  list(character) [optional]
#' @field paymentTerms  character [optional]
#' @field phone  character [optional]
#' @field rating  integer [optional]
#' @field salesRepresentative  character [optional]
#' @field sepaBatchBooking  character [optional]
#' @field sepaSequenceType  \link{SepaSequenceType} [optional]
#' @field socialMedia  \link{AnyType} [optional]
#' @field source  character [optional]
#' @field state  character [optional]
#' @field street  character [optional]
#' @field streetNumber  character [optional]
#' @field supplierNumber  character [optional]
#' @field tags  list(character) [optional]
#' @field taxCountry  \link{CountryCode} [optional]
#' @field taxNumber  character [optional]
#' @field taxOffice  character [optional]
#' @field totalInvoices  integer [optional]
#' @field totalRevenue  character [optional]
#' @field vatId  character [optional]
#' @field vatIdValidated  character [optional]
#' @field vatIdValidationDate  character [optional]
#' @field website  character [optional]
#' @field zip  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContactCreate <- R6::R6Class(
  "ContactCreate",
  public = list(
    `accountHolder` = NULL,
    `acquisitionCost` = NULL,
    `addressSupplement` = NULL,
    `attention` = NULL,
    `bankName` = NULL,
    `bic` = NULL,
    `buyerReference` = NULL,
    `category` = NULL,
    `certificateAuthority` = NULL,
    `certificateNumber` = NULL,
    `certificateParagraph` = NULL,
    `certificateValidUntil` = NULL,
    `city` = NULL,
    `companyName` = NULL,
    `contactPersons` = NULL,
    `contactType` = NULL,
    `country` = NULL,
    `creditLimit` = NULL,
    `creditorAccountSkr03` = NULL,
    `creditorAccountSkr04` = NULL,
    `currency` = NULL,
    `customFields` = NULL,
    `customerNumber` = NULL,
    `debitorAccountSkr03` = NULL,
    `debitorAccountSkr04` = NULL,
    `defaultDebitorNumber` = NULL,
    `deliveryBlock` = NULL,
    `department` = NULL,
    `discountDays` = NULL,
    `discountPercentage` = NULL,
    `donationReceiptEligible` = NULL,
    `email` = NULL,
    `externalId` = NULL,
    `fax` = NULL,
    `iban` = NULL,
    `industry` = NULL,
    `isActive` = NULL,
    `isMember` = NULL,
    `isNonprofit` = NULL,
    `lastContactDate` = NULL,
    `lastPurchaseDate` = NULL,
    `leitwegId` = NULL,
    `lifetimeValue` = NULL,
    `mandateDate` = NULL,
    `mandateReference` = NULL,
    `marketingConsent` = NULL,
    `marketingConsentAt` = NULL,
    `marketingConsentSource` = NULL,
    `mobile` = NULL,
    `name` = NULL,
    `nextContactDate` = NULL,
    `notes` = NULL,
    `openingBalance` = NULL,
    `openingBalanceDate` = NULL,
    `orderReference` = NULL,
    `paymentBlock` = NULL,
    `paymentGracePeriodDays` = NULL,
    `paymentMethods` = NULL,
    `paymentTerms` = NULL,
    `phone` = NULL,
    `rating` = NULL,
    `salesRepresentative` = NULL,
    `sepaBatchBooking` = NULL,
    `sepaSequenceType` = NULL,
    `socialMedia` = NULL,
    `source` = NULL,
    `state` = NULL,
    `street` = NULL,
    `streetNumber` = NULL,
    `supplierNumber` = NULL,
    `tags` = NULL,
    `taxCountry` = NULL,
    `taxNumber` = NULL,
    `taxOffice` = NULL,
    `totalInvoices` = NULL,
    `totalRevenue` = NULL,
    `vatId` = NULL,
    `vatIdValidated` = NULL,
    `vatIdValidationDate` = NULL,
    `website` = NULL,
    `zip` = NULL,

    #' @description
    #' Initialize a new ContactCreate class.
    #'
    #' @param contactType contactType
    #' @param name name
    #' @param accountHolder accountHolder
    #' @param acquisitionCost acquisitionCost
    #' @param addressSupplement addressSupplement
    #' @param attention attention
    #' @param bankName bankName
    #' @param bic bic
    #' @param buyerReference buyerReference
    #' @param category category
    #' @param certificateAuthority certificateAuthority
    #' @param certificateNumber certificateNumber
    #' @param certificateParagraph certificateParagraph
    #' @param certificateValidUntil certificateValidUntil
    #' @param city city
    #' @param companyName companyName
    #' @param contactPersons contactPersons
    #' @param country country
    #' @param creditLimit creditLimit
    #' @param creditorAccountSkr03 creditorAccountSkr03
    #' @param creditorAccountSkr04 creditorAccountSkr04
    #' @param currency currency
    #' @param customFields customFields
    #' @param customerNumber customerNumber
    #' @param debitorAccountSkr03 debitorAccountSkr03
    #' @param debitorAccountSkr04 debitorAccountSkr04
    #' @param defaultDebitorNumber defaultDebitorNumber
    #' @param deliveryBlock deliveryBlock
    #' @param department department
    #' @param discountDays discountDays
    #' @param discountPercentage discountPercentage
    #' @param donationReceiptEligible donationReceiptEligible
    #' @param email email
    #' @param externalId externalId
    #' @param fax fax
    #' @param iban iban
    #' @param industry industry
    #' @param isActive isActive
    #' @param isMember isMember
    #' @param isNonprofit isNonprofit
    #' @param lastContactDate lastContactDate
    #' @param lastPurchaseDate lastPurchaseDate
    #' @param leitwegId leitwegId
    #' @param lifetimeValue lifetimeValue
    #' @param mandateDate mandateDate
    #' @param mandateReference mandateReference
    #' @param marketingConsent marketingConsent
    #' @param marketingConsentAt marketingConsentAt
    #' @param marketingConsentSource marketingConsentSource
    #' @param mobile mobile
    #' @param nextContactDate nextContactDate
    #' @param notes notes
    #' @param openingBalance openingBalance
    #' @param openingBalanceDate openingBalanceDate
    #' @param orderReference orderReference
    #' @param paymentBlock paymentBlock
    #' @param paymentGracePeriodDays paymentGracePeriodDays
    #' @param paymentMethods paymentMethods
    #' @param paymentTerms paymentTerms
    #' @param phone phone
    #' @param rating rating
    #' @param salesRepresentative salesRepresentative
    #' @param sepaBatchBooking sepaBatchBooking
    #' @param sepaSequenceType sepaSequenceType
    #' @param socialMedia socialMedia
    #' @param source source
    #' @param state state
    #' @param street street
    #' @param streetNumber streetNumber
    #' @param supplierNumber supplierNumber
    #' @param tags tags
    #' @param taxCountry taxCountry
    #' @param taxNumber taxNumber
    #' @param taxOffice taxOffice
    #' @param totalInvoices totalInvoices
    #' @param totalRevenue totalRevenue
    #' @param vatId vatId
    #' @param vatIdValidated vatIdValidated
    #' @param vatIdValidationDate vatIdValidationDate
    #' @param website website
    #' @param zip zip
    #' @param ... Other optional arguments.
    initialize = function(`contactType`, `name`, `accountHolder` = NULL, `acquisitionCost` = NULL, `addressSupplement` = NULL, `attention` = NULL, `bankName` = NULL, `bic` = NULL, `buyerReference` = NULL, `category` = NULL, `certificateAuthority` = NULL, `certificateNumber` = NULL, `certificateParagraph` = NULL, `certificateValidUntil` = NULL, `city` = NULL, `companyName` = NULL, `contactPersons` = NULL, `country` = NULL, `creditLimit` = NULL, `creditorAccountSkr03` = NULL, `creditorAccountSkr04` = NULL, `currency` = NULL, `customFields` = NULL, `customerNumber` = NULL, `debitorAccountSkr03` = NULL, `debitorAccountSkr04` = NULL, `defaultDebitorNumber` = NULL, `deliveryBlock` = NULL, `department` = NULL, `discountDays` = NULL, `discountPercentage` = NULL, `donationReceiptEligible` = NULL, `email` = NULL, `externalId` = NULL, `fax` = NULL, `iban` = NULL, `industry` = NULL, `isActive` = NULL, `isMember` = NULL, `isNonprofit` = NULL, `lastContactDate` = NULL, `lastPurchaseDate` = NULL, `leitwegId` = NULL, `lifetimeValue` = NULL, `mandateDate` = NULL, `mandateReference` = NULL, `marketingConsent` = NULL, `marketingConsentAt` = NULL, `marketingConsentSource` = NULL, `mobile` = NULL, `nextContactDate` = NULL, `notes` = NULL, `openingBalance` = NULL, `openingBalanceDate` = NULL, `orderReference` = NULL, `paymentBlock` = NULL, `paymentGracePeriodDays` = NULL, `paymentMethods` = NULL, `paymentTerms` = NULL, `phone` = NULL, `rating` = NULL, `salesRepresentative` = NULL, `sepaBatchBooking` = NULL, `sepaSequenceType` = NULL, `socialMedia` = NULL, `source` = NULL, `state` = NULL, `street` = NULL, `streetNumber` = NULL, `supplierNumber` = NULL, `tags` = NULL, `taxCountry` = NULL, `taxNumber` = NULL, `taxOffice` = NULL, `totalInvoices` = NULL, `totalRevenue` = NULL, `vatId` = NULL, `vatIdValidated` = NULL, `vatIdValidationDate` = NULL, `website` = NULL, `zip` = NULL, ...) {
      if (!missing(`contactType`)) {
        if (!(`contactType` %in% c())) {
          stop(paste("Error! \"", `contactType`, "\" cannot be assigned to `contactType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`contactType`))
        self$`contactType` <- `contactType`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`accountHolder`)) {
        if (!(is.character(`accountHolder`) && length(`accountHolder`) == 1)) {
          stop(paste("Error! Invalid data for `accountHolder`. Must be a string:", `accountHolder`))
        }
        self$`accountHolder` <- `accountHolder`
      }
      if (!is.null(`acquisitionCost`)) {
        if (!(is.character(`acquisitionCost`) && length(`acquisitionCost`) == 1)) {
          stop(paste("Error! Invalid data for `acquisitionCost`. Must be a string:", `acquisitionCost`))
        }
        self$`acquisitionCost` <- `acquisitionCost`
      }
      if (!is.null(`addressSupplement`)) {
        if (!(is.character(`addressSupplement`) && length(`addressSupplement`) == 1)) {
          stop(paste("Error! Invalid data for `addressSupplement`. Must be a string:", `addressSupplement`))
        }
        self$`addressSupplement` <- `addressSupplement`
      }
      if (!is.null(`attention`)) {
        if (!(is.character(`attention`) && length(`attention`) == 1)) {
          stop(paste("Error! Invalid data for `attention`. Must be a string:", `attention`))
        }
        self$`attention` <- `attention`
      }
      if (!is.null(`bankName`)) {
        if (!(is.character(`bankName`) && length(`bankName`) == 1)) {
          stop(paste("Error! Invalid data for `bankName`. Must be a string:", `bankName`))
        }
        self$`bankName` <- `bankName`
      }
      if (!is.null(`bic`)) {
        if (!(is.character(`bic`) && length(`bic`) == 1)) {
          stop(paste("Error! Invalid data for `bic`. Must be a string:", `bic`))
        }
        self$`bic` <- `bic`
      }
      if (!is.null(`buyerReference`)) {
        if (!(is.character(`buyerReference`) && length(`buyerReference`) == 1)) {
          stop(paste("Error! Invalid data for `buyerReference`. Must be a string:", `buyerReference`))
        }
        self$`buyerReference` <- `buyerReference`
      }
      if (!is.null(`category`)) {
        if (!(is.character(`category`) && length(`category`) == 1)) {
          stop(paste("Error! Invalid data for `category`. Must be a string:", `category`))
        }
        self$`category` <- `category`
      }
      if (!is.null(`certificateAuthority`)) {
        if (!(is.character(`certificateAuthority`) && length(`certificateAuthority`) == 1)) {
          stop(paste("Error! Invalid data for `certificateAuthority`. Must be a string:", `certificateAuthority`))
        }
        self$`certificateAuthority` <- `certificateAuthority`
      }
      if (!is.null(`certificateNumber`)) {
        if (!(is.character(`certificateNumber`) && length(`certificateNumber`) == 1)) {
          stop(paste("Error! Invalid data for `certificateNumber`. Must be a string:", `certificateNumber`))
        }
        self$`certificateNumber` <- `certificateNumber`
      }
      if (!is.null(`certificateParagraph`)) {
        if (!(is.character(`certificateParagraph`) && length(`certificateParagraph`) == 1)) {
          stop(paste("Error! Invalid data for `certificateParagraph`. Must be a string:", `certificateParagraph`))
        }
        self$`certificateParagraph` <- `certificateParagraph`
      }
      if (!is.null(`certificateValidUntil`)) {
        if (!is.character(`certificateValidUntil`)) {
          stop(paste("Error! Invalid data for `certificateValidUntil`. Must be a string:", `certificateValidUntil`))
        }
        self$`certificateValidUntil` <- `certificateValidUntil`
      }
      if (!is.null(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!is.null(`companyName`)) {
        if (!(is.character(`companyName`) && length(`companyName`) == 1)) {
          stop(paste("Error! Invalid data for `companyName`. Must be a string:", `companyName`))
        }
        self$`companyName` <- `companyName`
      }
      if (!is.null(`contactPersons`)) {
        stopifnot(R6::is.R6(`contactPersons`))
        self$`contactPersons` <- `contactPersons`
      }
      if (!is.null(`country`)) {
        if (!(`country` %in% c())) {
          stop(paste("Error! \"", `country`, "\" cannot be assigned to `country`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`country`))
        self$`country` <- `country`
      }
      if (!is.null(`creditLimit`)) {
        if (!(is.character(`creditLimit`) && length(`creditLimit`) == 1)) {
          stop(paste("Error! Invalid data for `creditLimit`. Must be a string:", `creditLimit`))
        }
        self$`creditLimit` <- `creditLimit`
      }
      if (!is.null(`creditorAccountSkr03`)) {
        if (!(is.character(`creditorAccountSkr03`) && length(`creditorAccountSkr03`) == 1)) {
          stop(paste("Error! Invalid data for `creditorAccountSkr03`. Must be a string:", `creditorAccountSkr03`))
        }
        self$`creditorAccountSkr03` <- `creditorAccountSkr03`
      }
      if (!is.null(`creditorAccountSkr04`)) {
        if (!(is.character(`creditorAccountSkr04`) && length(`creditorAccountSkr04`) == 1)) {
          stop(paste("Error! Invalid data for `creditorAccountSkr04`. Must be a string:", `creditorAccountSkr04`))
        }
        self$`creditorAccountSkr04` <- `creditorAccountSkr04`
      }
      if (!is.null(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!is.null(`customFields`)) {
        stopifnot(R6::is.R6(`customFields`))
        self$`customFields` <- `customFields`
      }
      if (!is.null(`customerNumber`)) {
        if (!(is.character(`customerNumber`) && length(`customerNumber`) == 1)) {
          stop(paste("Error! Invalid data for `customerNumber`. Must be a string:", `customerNumber`))
        }
        self$`customerNumber` <- `customerNumber`
      }
      if (!is.null(`debitorAccountSkr03`)) {
        if (!(is.character(`debitorAccountSkr03`) && length(`debitorAccountSkr03`) == 1)) {
          stop(paste("Error! Invalid data for `debitorAccountSkr03`. Must be a string:", `debitorAccountSkr03`))
        }
        self$`debitorAccountSkr03` <- `debitorAccountSkr03`
      }
      if (!is.null(`debitorAccountSkr04`)) {
        if (!(is.character(`debitorAccountSkr04`) && length(`debitorAccountSkr04`) == 1)) {
          stop(paste("Error! Invalid data for `debitorAccountSkr04`. Must be a string:", `debitorAccountSkr04`))
        }
        self$`debitorAccountSkr04` <- `debitorAccountSkr04`
      }
      if (!is.null(`defaultDebitorNumber`)) {
        if (!(is.character(`defaultDebitorNumber`) && length(`defaultDebitorNumber`) == 1)) {
          stop(paste("Error! Invalid data for `defaultDebitorNumber`. Must be a string:", `defaultDebitorNumber`))
        }
        self$`defaultDebitorNumber` <- `defaultDebitorNumber`
      }
      if (!is.null(`deliveryBlock`)) {
        if (!(is.logical(`deliveryBlock`) && length(`deliveryBlock`) == 1)) {
          stop(paste("Error! Invalid data for `deliveryBlock`. Must be a boolean:", `deliveryBlock`))
        }
        self$`deliveryBlock` <- `deliveryBlock`
      }
      if (!is.null(`department`)) {
        if (!(is.character(`department`) && length(`department`) == 1)) {
          stop(paste("Error! Invalid data for `department`. Must be a string:", `department`))
        }
        self$`department` <- `department`
      }
      if (!is.null(`discountDays`)) {
        if (!(is.numeric(`discountDays`) && length(`discountDays`) == 1)) {
          stop(paste("Error! Invalid data for `discountDays`. Must be an integer:", `discountDays`))
        }
        self$`discountDays` <- `discountDays`
      }
      if (!is.null(`discountPercentage`)) {
        if (!(is.character(`discountPercentage`) && length(`discountPercentage`) == 1)) {
          stop(paste("Error! Invalid data for `discountPercentage`. Must be a string:", `discountPercentage`))
        }
        self$`discountPercentage` <- `discountPercentage`
      }
      if (!is.null(`donationReceiptEligible`)) {
        if (!(is.logical(`donationReceiptEligible`) && length(`donationReceiptEligible`) == 1)) {
          stop(paste("Error! Invalid data for `donationReceiptEligible`. Must be a boolean:", `donationReceiptEligible`))
        }
        self$`donationReceiptEligible` <- `donationReceiptEligible`
      }
      if (!is.null(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`fax`)) {
        if (!(is.character(`fax`) && length(`fax`) == 1)) {
          stop(paste("Error! Invalid data for `fax`. Must be a string:", `fax`))
        }
        self$`fax` <- `fax`
      }
      if (!is.null(`iban`)) {
        if (!(is.character(`iban`) && length(`iban`) == 1)) {
          stop(paste("Error! Invalid data for `iban`. Must be a string:", `iban`))
        }
        self$`iban` <- `iban`
      }
      if (!is.null(`industry`)) {
        if (!(is.character(`industry`) && length(`industry`) == 1)) {
          stop(paste("Error! Invalid data for `industry`. Must be a string:", `industry`))
        }
        self$`industry` <- `industry`
      }
      if (!is.null(`isActive`)) {
        if (!(is.logical(`isActive`) && length(`isActive`) == 1)) {
          stop(paste("Error! Invalid data for `isActive`. Must be a boolean:", `isActive`))
        }
        self$`isActive` <- `isActive`
      }
      if (!is.null(`isMember`)) {
        if (!(is.logical(`isMember`) && length(`isMember`) == 1)) {
          stop(paste("Error! Invalid data for `isMember`. Must be a boolean:", `isMember`))
        }
        self$`isMember` <- `isMember`
      }
      if (!is.null(`isNonprofit`)) {
        if (!(is.logical(`isNonprofit`) && length(`isNonprofit`) == 1)) {
          stop(paste("Error! Invalid data for `isNonprofit`. Must be a boolean:", `isNonprofit`))
        }
        self$`isNonprofit` <- `isNonprofit`
      }
      if (!is.null(`lastContactDate`)) {
        if (!is.character(`lastContactDate`)) {
          stop(paste("Error! Invalid data for `lastContactDate`. Must be a string:", `lastContactDate`))
        }
        self$`lastContactDate` <- `lastContactDate`
      }
      if (!is.null(`lastPurchaseDate`)) {
        if (!is.character(`lastPurchaseDate`)) {
          stop(paste("Error! Invalid data for `lastPurchaseDate`. Must be a string:", `lastPurchaseDate`))
        }
        self$`lastPurchaseDate` <- `lastPurchaseDate`
      }
      if (!is.null(`leitwegId`)) {
        if (!(is.character(`leitwegId`) && length(`leitwegId`) == 1)) {
          stop(paste("Error! Invalid data for `leitwegId`. Must be a string:", `leitwegId`))
        }
        self$`leitwegId` <- `leitwegId`
      }
      if (!is.null(`lifetimeValue`)) {
        if (!(is.character(`lifetimeValue`) && length(`lifetimeValue`) == 1)) {
          stop(paste("Error! Invalid data for `lifetimeValue`. Must be a string:", `lifetimeValue`))
        }
        self$`lifetimeValue` <- `lifetimeValue`
      }
      if (!is.null(`mandateDate`)) {
        if (!is.character(`mandateDate`)) {
          stop(paste("Error! Invalid data for `mandateDate`. Must be a string:", `mandateDate`))
        }
        self$`mandateDate` <- `mandateDate`
      }
      if (!is.null(`mandateReference`)) {
        if (!(is.character(`mandateReference`) && length(`mandateReference`) == 1)) {
          stop(paste("Error! Invalid data for `mandateReference`. Must be a string:", `mandateReference`))
        }
        self$`mandateReference` <- `mandateReference`
      }
      if (!is.null(`marketingConsent`)) {
        if (!(is.logical(`marketingConsent`) && length(`marketingConsent`) == 1)) {
          stop(paste("Error! Invalid data for `marketingConsent`. Must be a boolean:", `marketingConsent`))
        }
        self$`marketingConsent` <- `marketingConsent`
      }
      if (!is.null(`marketingConsentAt`)) {
        if (!is.character(`marketingConsentAt`)) {
          stop(paste("Error! Invalid data for `marketingConsentAt`. Must be a string:", `marketingConsentAt`))
        }
        self$`marketingConsentAt` <- `marketingConsentAt`
      }
      if (!is.null(`marketingConsentSource`)) {
        if (!(is.character(`marketingConsentSource`) && length(`marketingConsentSource`) == 1)) {
          stop(paste("Error! Invalid data for `marketingConsentSource`. Must be a string:", `marketingConsentSource`))
        }
        self$`marketingConsentSource` <- `marketingConsentSource`
      }
      if (!is.null(`mobile`)) {
        if (!(is.character(`mobile`) && length(`mobile`) == 1)) {
          stop(paste("Error! Invalid data for `mobile`. Must be a string:", `mobile`))
        }
        self$`mobile` <- `mobile`
      }
      if (!is.null(`nextContactDate`)) {
        if (!is.character(`nextContactDate`)) {
          stop(paste("Error! Invalid data for `nextContactDate`. Must be a string:", `nextContactDate`))
        }
        self$`nextContactDate` <- `nextContactDate`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`openingBalance`)) {
        if (!(is.character(`openingBalance`) && length(`openingBalance`) == 1)) {
          stop(paste("Error! Invalid data for `openingBalance`. Must be a string:", `openingBalance`))
        }
        self$`openingBalance` <- `openingBalance`
      }
      if (!is.null(`openingBalanceDate`)) {
        if (!is.character(`openingBalanceDate`)) {
          stop(paste("Error! Invalid data for `openingBalanceDate`. Must be a string:", `openingBalanceDate`))
        }
        self$`openingBalanceDate` <- `openingBalanceDate`
      }
      if (!is.null(`orderReference`)) {
        if (!(is.character(`orderReference`) && length(`orderReference`) == 1)) {
          stop(paste("Error! Invalid data for `orderReference`. Must be a string:", `orderReference`))
        }
        self$`orderReference` <- `orderReference`
      }
      if (!is.null(`paymentBlock`)) {
        if (!(is.logical(`paymentBlock`) && length(`paymentBlock`) == 1)) {
          stop(paste("Error! Invalid data for `paymentBlock`. Must be a boolean:", `paymentBlock`))
        }
        self$`paymentBlock` <- `paymentBlock`
      }
      if (!is.null(`paymentGracePeriodDays`)) {
        if (!(is.numeric(`paymentGracePeriodDays`) && length(`paymentGracePeriodDays`) == 1)) {
          stop(paste("Error! Invalid data for `paymentGracePeriodDays`. Must be an integer:", `paymentGracePeriodDays`))
        }
        self$`paymentGracePeriodDays` <- `paymentGracePeriodDays`
      }
      if (!is.null(`paymentMethods`)) {
        stopifnot(is.vector(`paymentMethods`), length(`paymentMethods`) != 0)
        sapply(`paymentMethods`, function(x) stopifnot(is.character(x)))
        self$`paymentMethods` <- `paymentMethods`
      }
      if (!is.null(`paymentTerms`)) {
        if (!(is.character(`paymentTerms`) && length(`paymentTerms`) == 1)) {
          stop(paste("Error! Invalid data for `paymentTerms`. Must be a string:", `paymentTerms`))
        }
        self$`paymentTerms` <- `paymentTerms`
      }
      if (!is.null(`phone`)) {
        if (!(is.character(`phone`) && length(`phone`) == 1)) {
          stop(paste("Error! Invalid data for `phone`. Must be a string:", `phone`))
        }
        self$`phone` <- `phone`
      }
      if (!is.null(`rating`)) {
        if (!(is.numeric(`rating`) && length(`rating`) == 1)) {
          stop(paste("Error! Invalid data for `rating`. Must be an integer:", `rating`))
        }
        self$`rating` <- `rating`
      }
      if (!is.null(`salesRepresentative`)) {
        if (!(is.character(`salesRepresentative`) && length(`salesRepresentative`) == 1)) {
          stop(paste("Error! Invalid data for `salesRepresentative`. Must be a string:", `salesRepresentative`))
        }
        self$`salesRepresentative` <- `salesRepresentative`
      }
      if (!is.null(`sepaBatchBooking`)) {
        if (!(is.logical(`sepaBatchBooking`) && length(`sepaBatchBooking`) == 1)) {
          stop(paste("Error! Invalid data for `sepaBatchBooking`. Must be a boolean:", `sepaBatchBooking`))
        }
        self$`sepaBatchBooking` <- `sepaBatchBooking`
      }
      if (!is.null(`sepaSequenceType`)) {
        if (!(`sepaSequenceType` %in% c())) {
          stop(paste("Error! \"", `sepaSequenceType`, "\" cannot be assigned to `sepaSequenceType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`sepaSequenceType`))
        self$`sepaSequenceType` <- `sepaSequenceType`
      }
      if (!is.null(`socialMedia`)) {
        stopifnot(R6::is.R6(`socialMedia`))
        self$`socialMedia` <- `socialMedia`
      }
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!is.null(`street`)) {
        if (!(is.character(`street`) && length(`street`) == 1)) {
          stop(paste("Error! Invalid data for `street`. Must be a string:", `street`))
        }
        self$`street` <- `street`
      }
      if (!is.null(`streetNumber`)) {
        if (!(is.character(`streetNumber`) && length(`streetNumber`) == 1)) {
          stop(paste("Error! Invalid data for `streetNumber`. Must be a string:", `streetNumber`))
        }
        self$`streetNumber` <- `streetNumber`
      }
      if (!is.null(`supplierNumber`)) {
        if (!(is.character(`supplierNumber`) && length(`supplierNumber`) == 1)) {
          stop(paste("Error! Invalid data for `supplierNumber`. Must be a string:", `supplierNumber`))
        }
        self$`supplierNumber` <- `supplierNumber`
      }
      if (!is.null(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
      if (!is.null(`taxCountry`)) {
        if (!(`taxCountry` %in% c())) {
          stop(paste("Error! \"", `taxCountry`, "\" cannot be assigned to `taxCountry`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`taxCountry`))
        self$`taxCountry` <- `taxCountry`
      }
      if (!is.null(`taxNumber`)) {
        if (!(is.character(`taxNumber`) && length(`taxNumber`) == 1)) {
          stop(paste("Error! Invalid data for `taxNumber`. Must be a string:", `taxNumber`))
        }
        self$`taxNumber` <- `taxNumber`
      }
      if (!is.null(`taxOffice`)) {
        if (!(is.character(`taxOffice`) && length(`taxOffice`) == 1)) {
          stop(paste("Error! Invalid data for `taxOffice`. Must be a string:", `taxOffice`))
        }
        self$`taxOffice` <- `taxOffice`
      }
      if (!is.null(`totalInvoices`)) {
        if (!(is.numeric(`totalInvoices`) && length(`totalInvoices`) == 1)) {
          stop(paste("Error! Invalid data for `totalInvoices`. Must be an integer:", `totalInvoices`))
        }
        self$`totalInvoices` <- `totalInvoices`
      }
      if (!is.null(`totalRevenue`)) {
        if (!(is.character(`totalRevenue`) && length(`totalRevenue`) == 1)) {
          stop(paste("Error! Invalid data for `totalRevenue`. Must be a string:", `totalRevenue`))
        }
        self$`totalRevenue` <- `totalRevenue`
      }
      if (!is.null(`vatId`)) {
        if (!(is.character(`vatId`) && length(`vatId`) == 1)) {
          stop(paste("Error! Invalid data for `vatId`. Must be a string:", `vatId`))
        }
        self$`vatId` <- `vatId`
      }
      if (!is.null(`vatIdValidated`)) {
        if (!(is.logical(`vatIdValidated`) && length(`vatIdValidated`) == 1)) {
          stop(paste("Error! Invalid data for `vatIdValidated`. Must be a boolean:", `vatIdValidated`))
        }
        self$`vatIdValidated` <- `vatIdValidated`
      }
      if (!is.null(`vatIdValidationDate`)) {
        if (!is.character(`vatIdValidationDate`)) {
          stop(paste("Error! Invalid data for `vatIdValidationDate`. Must be a string:", `vatIdValidationDate`))
        }
        self$`vatIdValidationDate` <- `vatIdValidationDate`
      }
      if (!is.null(`website`)) {
        if (!(is.character(`website`) && length(`website`) == 1)) {
          stop(paste("Error! Invalid data for `website`. Must be a string:", `website`))
        }
        self$`website` <- `website`
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
    #' @return ContactCreate as a base R list.
    #' @examples
    #' # convert array of ContactCreate (x) to a data frame
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
    #' Convert ContactCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ContactCreateObject <- list()
      if (!is.null(self$`accountHolder`)) {
        ContactCreateObject[["accountHolder"]] <-
          self$`accountHolder`
      }
      if (!is.null(self$`acquisitionCost`)) {
        ContactCreateObject[["acquisitionCost"]] <-
          self$`acquisitionCost`
      }
      if (!is.null(self$`addressSupplement`)) {
        ContactCreateObject[["addressSupplement"]] <-
          self$`addressSupplement`
      }
      if (!is.null(self$`attention`)) {
        ContactCreateObject[["attention"]] <-
          self$`attention`
      }
      if (!is.null(self$`bankName`)) {
        ContactCreateObject[["bankName"]] <-
          self$`bankName`
      }
      if (!is.null(self$`bic`)) {
        ContactCreateObject[["bic"]] <-
          self$`bic`
      }
      if (!is.null(self$`buyerReference`)) {
        ContactCreateObject[["buyerReference"]] <-
          self$`buyerReference`
      }
      if (!is.null(self$`category`)) {
        ContactCreateObject[["category"]] <-
          self$`category`
      }
      if (!is.null(self$`certificateAuthority`)) {
        ContactCreateObject[["certificateAuthority"]] <-
          self$`certificateAuthority`
      }
      if (!is.null(self$`certificateNumber`)) {
        ContactCreateObject[["certificateNumber"]] <-
          self$`certificateNumber`
      }
      if (!is.null(self$`certificateParagraph`)) {
        ContactCreateObject[["certificateParagraph"]] <-
          self$`certificateParagraph`
      }
      if (!is.null(self$`certificateValidUntil`)) {
        ContactCreateObject[["certificateValidUntil"]] <-
          self$`certificateValidUntil`
      }
      if (!is.null(self$`city`)) {
        ContactCreateObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`companyName`)) {
        ContactCreateObject[["companyName"]] <-
          self$`companyName`
      }
      if (!is.null(self$`contactPersons`)) {
        ContactCreateObject[["contactPersons"]] <-
          self$extractSimpleType(self$`contactPersons`)
      }
      if (!is.null(self$`contactType`)) {
        ContactCreateObject[["contactType"]] <-
          self$extractSimpleType(self$`contactType`)
      }
      if (!is.null(self$`country`)) {
        ContactCreateObject[["country"]] <-
          self$extractSimpleType(self$`country`)
      }
      if (!is.null(self$`creditLimit`)) {
        ContactCreateObject[["creditLimit"]] <-
          self$`creditLimit`
      }
      if (!is.null(self$`creditorAccountSkr03`)) {
        ContactCreateObject[["creditorAccountSkr03"]] <-
          self$`creditorAccountSkr03`
      }
      if (!is.null(self$`creditorAccountSkr04`)) {
        ContactCreateObject[["creditorAccountSkr04"]] <-
          self$`creditorAccountSkr04`
      }
      if (!is.null(self$`currency`)) {
        ContactCreateObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`customFields`)) {
        ContactCreateObject[["customFields"]] <-
          self$extractSimpleType(self$`customFields`)
      }
      if (!is.null(self$`customerNumber`)) {
        ContactCreateObject[["customerNumber"]] <-
          self$`customerNumber`
      }
      if (!is.null(self$`debitorAccountSkr03`)) {
        ContactCreateObject[["debitorAccountSkr03"]] <-
          self$`debitorAccountSkr03`
      }
      if (!is.null(self$`debitorAccountSkr04`)) {
        ContactCreateObject[["debitorAccountSkr04"]] <-
          self$`debitorAccountSkr04`
      }
      if (!is.null(self$`defaultDebitorNumber`)) {
        ContactCreateObject[["defaultDebitorNumber"]] <-
          self$`defaultDebitorNumber`
      }
      if (!is.null(self$`deliveryBlock`)) {
        ContactCreateObject[["deliveryBlock"]] <-
          self$`deliveryBlock`
      }
      if (!is.null(self$`department`)) {
        ContactCreateObject[["department"]] <-
          self$`department`
      }
      if (!is.null(self$`discountDays`)) {
        ContactCreateObject[["discountDays"]] <-
          self$`discountDays`
      }
      if (!is.null(self$`discountPercentage`)) {
        ContactCreateObject[["discountPercentage"]] <-
          self$`discountPercentage`
      }
      if (!is.null(self$`donationReceiptEligible`)) {
        ContactCreateObject[["donationReceiptEligible"]] <-
          self$`donationReceiptEligible`
      }
      if (!is.null(self$`email`)) {
        ContactCreateObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`externalId`)) {
        ContactCreateObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`fax`)) {
        ContactCreateObject[["fax"]] <-
          self$`fax`
      }
      if (!is.null(self$`iban`)) {
        ContactCreateObject[["iban"]] <-
          self$`iban`
      }
      if (!is.null(self$`industry`)) {
        ContactCreateObject[["industry"]] <-
          self$`industry`
      }
      if (!is.null(self$`isActive`)) {
        ContactCreateObject[["isActive"]] <-
          self$`isActive`
      }
      if (!is.null(self$`isMember`)) {
        ContactCreateObject[["isMember"]] <-
          self$`isMember`
      }
      if (!is.null(self$`isNonprofit`)) {
        ContactCreateObject[["isNonprofit"]] <-
          self$`isNonprofit`
      }
      if (!is.null(self$`lastContactDate`)) {
        ContactCreateObject[["lastContactDate"]] <-
          self$`lastContactDate`
      }
      if (!is.null(self$`lastPurchaseDate`)) {
        ContactCreateObject[["lastPurchaseDate"]] <-
          self$`lastPurchaseDate`
      }
      if (!is.null(self$`leitwegId`)) {
        ContactCreateObject[["leitwegId"]] <-
          self$`leitwegId`
      }
      if (!is.null(self$`lifetimeValue`)) {
        ContactCreateObject[["lifetimeValue"]] <-
          self$`lifetimeValue`
      }
      if (!is.null(self$`mandateDate`)) {
        ContactCreateObject[["mandateDate"]] <-
          self$`mandateDate`
      }
      if (!is.null(self$`mandateReference`)) {
        ContactCreateObject[["mandateReference"]] <-
          self$`mandateReference`
      }
      if (!is.null(self$`marketingConsent`)) {
        ContactCreateObject[["marketingConsent"]] <-
          self$`marketingConsent`
      }
      if (!is.null(self$`marketingConsentAt`)) {
        ContactCreateObject[["marketingConsentAt"]] <-
          self$`marketingConsentAt`
      }
      if (!is.null(self$`marketingConsentSource`)) {
        ContactCreateObject[["marketingConsentSource"]] <-
          self$`marketingConsentSource`
      }
      if (!is.null(self$`mobile`)) {
        ContactCreateObject[["mobile"]] <-
          self$`mobile`
      }
      if (!is.null(self$`name`)) {
        ContactCreateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`nextContactDate`)) {
        ContactCreateObject[["nextContactDate"]] <-
          self$`nextContactDate`
      }
      if (!is.null(self$`notes`)) {
        ContactCreateObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`openingBalance`)) {
        ContactCreateObject[["openingBalance"]] <-
          self$`openingBalance`
      }
      if (!is.null(self$`openingBalanceDate`)) {
        ContactCreateObject[["openingBalanceDate"]] <-
          self$`openingBalanceDate`
      }
      if (!is.null(self$`orderReference`)) {
        ContactCreateObject[["orderReference"]] <-
          self$`orderReference`
      }
      if (!is.null(self$`paymentBlock`)) {
        ContactCreateObject[["paymentBlock"]] <-
          self$`paymentBlock`
      }
      if (!is.null(self$`paymentGracePeriodDays`)) {
        ContactCreateObject[["paymentGracePeriodDays"]] <-
          self$`paymentGracePeriodDays`
      }
      if (!is.null(self$`paymentMethods`)) {
        ContactCreateObject[["paymentMethods"]] <-
          self$`paymentMethods`
      }
      if (!is.null(self$`paymentTerms`)) {
        ContactCreateObject[["paymentTerms"]] <-
          self$`paymentTerms`
      }
      if (!is.null(self$`phone`)) {
        ContactCreateObject[["phone"]] <-
          self$`phone`
      }
      if (!is.null(self$`rating`)) {
        ContactCreateObject[["rating"]] <-
          self$`rating`
      }
      if (!is.null(self$`salesRepresentative`)) {
        ContactCreateObject[["salesRepresentative"]] <-
          self$`salesRepresentative`
      }
      if (!is.null(self$`sepaBatchBooking`)) {
        ContactCreateObject[["sepaBatchBooking"]] <-
          self$`sepaBatchBooking`
      }
      if (!is.null(self$`sepaSequenceType`)) {
        ContactCreateObject[["sepaSequenceType"]] <-
          self$extractSimpleType(self$`sepaSequenceType`)
      }
      if (!is.null(self$`socialMedia`)) {
        ContactCreateObject[["socialMedia"]] <-
          self$extractSimpleType(self$`socialMedia`)
      }
      if (!is.null(self$`source`)) {
        ContactCreateObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`state`)) {
        ContactCreateObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`street`)) {
        ContactCreateObject[["street"]] <-
          self$`street`
      }
      if (!is.null(self$`streetNumber`)) {
        ContactCreateObject[["streetNumber"]] <-
          self$`streetNumber`
      }
      if (!is.null(self$`supplierNumber`)) {
        ContactCreateObject[["supplierNumber"]] <-
          self$`supplierNumber`
      }
      if (!is.null(self$`tags`)) {
        ContactCreateObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`taxCountry`)) {
        ContactCreateObject[["taxCountry"]] <-
          self$extractSimpleType(self$`taxCountry`)
      }
      if (!is.null(self$`taxNumber`)) {
        ContactCreateObject[["taxNumber"]] <-
          self$`taxNumber`
      }
      if (!is.null(self$`taxOffice`)) {
        ContactCreateObject[["taxOffice"]] <-
          self$`taxOffice`
      }
      if (!is.null(self$`totalInvoices`)) {
        ContactCreateObject[["totalInvoices"]] <-
          self$`totalInvoices`
      }
      if (!is.null(self$`totalRevenue`)) {
        ContactCreateObject[["totalRevenue"]] <-
          self$`totalRevenue`
      }
      if (!is.null(self$`vatId`)) {
        ContactCreateObject[["vatId"]] <-
          self$`vatId`
      }
      if (!is.null(self$`vatIdValidated`)) {
        ContactCreateObject[["vatIdValidated"]] <-
          self$`vatIdValidated`
      }
      if (!is.null(self$`vatIdValidationDate`)) {
        ContactCreateObject[["vatIdValidationDate"]] <-
          self$`vatIdValidationDate`
      }
      if (!is.null(self$`website`)) {
        ContactCreateObject[["website"]] <-
          self$`website`
      }
      if (!is.null(self$`zip`)) {
        ContactCreateObject[["zip"]] <-
          self$`zip`
      }
      return(ContactCreateObject)
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
    #' Deserialize JSON string into an instance of ContactCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContactCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accountHolder`)) {
        self$`accountHolder` <- this_object$`accountHolder`
      }
      if (!is.null(this_object$`acquisitionCost`)) {
        self$`acquisitionCost` <- this_object$`acquisitionCost`
      }
      if (!is.null(this_object$`addressSupplement`)) {
        self$`addressSupplement` <- this_object$`addressSupplement`
      }
      if (!is.null(this_object$`attention`)) {
        self$`attention` <- this_object$`attention`
      }
      if (!is.null(this_object$`bankName`)) {
        self$`bankName` <- this_object$`bankName`
      }
      if (!is.null(this_object$`bic`)) {
        self$`bic` <- this_object$`bic`
      }
      if (!is.null(this_object$`buyerReference`)) {
        self$`buyerReference` <- this_object$`buyerReference`
      }
      if (!is.null(this_object$`category`)) {
        self$`category` <- this_object$`category`
      }
      if (!is.null(this_object$`certificateAuthority`)) {
        self$`certificateAuthority` <- this_object$`certificateAuthority`
      }
      if (!is.null(this_object$`certificateNumber`)) {
        self$`certificateNumber` <- this_object$`certificateNumber`
      }
      if (!is.null(this_object$`certificateParagraph`)) {
        self$`certificateParagraph` <- this_object$`certificateParagraph`
      }
      if (!is.null(this_object$`certificateValidUntil`)) {
        self$`certificateValidUntil` <- this_object$`certificateValidUntil`
      }
      if (!is.null(this_object$`city`)) {
        self$`city` <- this_object$`city`
      }
      if (!is.null(this_object$`companyName`)) {
        self$`companyName` <- this_object$`companyName`
      }
      if (!is.null(this_object$`contactPersons`)) {
        `contactpersons_object` <- AnyType$new()
        `contactpersons_object`$fromJSON(jsonlite::toJSON(this_object$`contactPersons`, auto_unbox = TRUE, digits = NA))
        self$`contactPersons` <- `contactpersons_object`
      }
      if (!is.null(this_object$`contactType`)) {
        `contacttype_object` <- ContactType$new()
        `contacttype_object`$fromJSON(jsonlite::toJSON(this_object$`contactType`, auto_unbox = TRUE, digits = NA))
        self$`contactType` <- `contacttype_object`
      }
      if (!is.null(this_object$`country`)) {
        `country_object` <- CountryCode$new()
        `country_object`$fromJSON(jsonlite::toJSON(this_object$`country`, auto_unbox = TRUE, digits = NA))
        self$`country` <- `country_object`
      }
      if (!is.null(this_object$`creditLimit`)) {
        self$`creditLimit` <- this_object$`creditLimit`
      }
      if (!is.null(this_object$`creditorAccountSkr03`)) {
        self$`creditorAccountSkr03` <- this_object$`creditorAccountSkr03`
      }
      if (!is.null(this_object$`creditorAccountSkr04`)) {
        self$`creditorAccountSkr04` <- this_object$`creditorAccountSkr04`
      }
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`customFields`)) {
        `customfields_object` <- AnyType$new()
        `customfields_object`$fromJSON(jsonlite::toJSON(this_object$`customFields`, auto_unbox = TRUE, digits = NA))
        self$`customFields` <- `customfields_object`
      }
      if (!is.null(this_object$`customerNumber`)) {
        self$`customerNumber` <- this_object$`customerNumber`
      }
      if (!is.null(this_object$`debitorAccountSkr03`)) {
        self$`debitorAccountSkr03` <- this_object$`debitorAccountSkr03`
      }
      if (!is.null(this_object$`debitorAccountSkr04`)) {
        self$`debitorAccountSkr04` <- this_object$`debitorAccountSkr04`
      }
      if (!is.null(this_object$`defaultDebitorNumber`)) {
        self$`defaultDebitorNumber` <- this_object$`defaultDebitorNumber`
      }
      if (!is.null(this_object$`deliveryBlock`)) {
        self$`deliveryBlock` <- this_object$`deliveryBlock`
      }
      if (!is.null(this_object$`department`)) {
        self$`department` <- this_object$`department`
      }
      if (!is.null(this_object$`discountDays`)) {
        self$`discountDays` <- this_object$`discountDays`
      }
      if (!is.null(this_object$`discountPercentage`)) {
        self$`discountPercentage` <- this_object$`discountPercentage`
      }
      if (!is.null(this_object$`donationReceiptEligible`)) {
        self$`donationReceiptEligible` <- this_object$`donationReceiptEligible`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`fax`)) {
        self$`fax` <- this_object$`fax`
      }
      if (!is.null(this_object$`iban`)) {
        self$`iban` <- this_object$`iban`
      }
      if (!is.null(this_object$`industry`)) {
        self$`industry` <- this_object$`industry`
      }
      if (!is.null(this_object$`isActive`)) {
        self$`isActive` <- this_object$`isActive`
      }
      if (!is.null(this_object$`isMember`)) {
        self$`isMember` <- this_object$`isMember`
      }
      if (!is.null(this_object$`isNonprofit`)) {
        self$`isNonprofit` <- this_object$`isNonprofit`
      }
      if (!is.null(this_object$`lastContactDate`)) {
        self$`lastContactDate` <- this_object$`lastContactDate`
      }
      if (!is.null(this_object$`lastPurchaseDate`)) {
        self$`lastPurchaseDate` <- this_object$`lastPurchaseDate`
      }
      if (!is.null(this_object$`leitwegId`)) {
        self$`leitwegId` <- this_object$`leitwegId`
      }
      if (!is.null(this_object$`lifetimeValue`)) {
        self$`lifetimeValue` <- this_object$`lifetimeValue`
      }
      if (!is.null(this_object$`mandateDate`)) {
        self$`mandateDate` <- this_object$`mandateDate`
      }
      if (!is.null(this_object$`mandateReference`)) {
        self$`mandateReference` <- this_object$`mandateReference`
      }
      if (!is.null(this_object$`marketingConsent`)) {
        self$`marketingConsent` <- this_object$`marketingConsent`
      }
      if (!is.null(this_object$`marketingConsentAt`)) {
        self$`marketingConsentAt` <- this_object$`marketingConsentAt`
      }
      if (!is.null(this_object$`marketingConsentSource`)) {
        self$`marketingConsentSource` <- this_object$`marketingConsentSource`
      }
      if (!is.null(this_object$`mobile`)) {
        self$`mobile` <- this_object$`mobile`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`nextContactDate`)) {
        self$`nextContactDate` <- this_object$`nextContactDate`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`openingBalance`)) {
        self$`openingBalance` <- this_object$`openingBalance`
      }
      if (!is.null(this_object$`openingBalanceDate`)) {
        self$`openingBalanceDate` <- this_object$`openingBalanceDate`
      }
      if (!is.null(this_object$`orderReference`)) {
        self$`orderReference` <- this_object$`orderReference`
      }
      if (!is.null(this_object$`paymentBlock`)) {
        self$`paymentBlock` <- this_object$`paymentBlock`
      }
      if (!is.null(this_object$`paymentGracePeriodDays`)) {
        self$`paymentGracePeriodDays` <- this_object$`paymentGracePeriodDays`
      }
      if (!is.null(this_object$`paymentMethods`)) {
        self$`paymentMethods` <- ApiClient$new()$deserializeObj(this_object$`paymentMethods`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`paymentTerms`)) {
        self$`paymentTerms` <- this_object$`paymentTerms`
      }
      if (!is.null(this_object$`phone`)) {
        self$`phone` <- this_object$`phone`
      }
      if (!is.null(this_object$`rating`)) {
        self$`rating` <- this_object$`rating`
      }
      if (!is.null(this_object$`salesRepresentative`)) {
        self$`salesRepresentative` <- this_object$`salesRepresentative`
      }
      if (!is.null(this_object$`sepaBatchBooking`)) {
        self$`sepaBatchBooking` <- this_object$`sepaBatchBooking`
      }
      if (!is.null(this_object$`sepaSequenceType`)) {
        `sepasequencetype_object` <- SepaSequenceType$new()
        `sepasequencetype_object`$fromJSON(jsonlite::toJSON(this_object$`sepaSequenceType`, auto_unbox = TRUE, digits = NA))
        self$`sepaSequenceType` <- `sepasequencetype_object`
      }
      if (!is.null(this_object$`socialMedia`)) {
        `socialmedia_object` <- AnyType$new()
        `socialmedia_object`$fromJSON(jsonlite::toJSON(this_object$`socialMedia`, auto_unbox = TRUE, digits = NA))
        self$`socialMedia` <- `socialmedia_object`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      if (!is.null(this_object$`street`)) {
        self$`street` <- this_object$`street`
      }
      if (!is.null(this_object$`streetNumber`)) {
        self$`streetNumber` <- this_object$`streetNumber`
      }
      if (!is.null(this_object$`supplierNumber`)) {
        self$`supplierNumber` <- this_object$`supplierNumber`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`taxCountry`)) {
        `taxcountry_object` <- CountryCode$new()
        `taxcountry_object`$fromJSON(jsonlite::toJSON(this_object$`taxCountry`, auto_unbox = TRUE, digits = NA))
        self$`taxCountry` <- `taxcountry_object`
      }
      if (!is.null(this_object$`taxNumber`)) {
        self$`taxNumber` <- this_object$`taxNumber`
      }
      if (!is.null(this_object$`taxOffice`)) {
        self$`taxOffice` <- this_object$`taxOffice`
      }
      if (!is.null(this_object$`totalInvoices`)) {
        self$`totalInvoices` <- this_object$`totalInvoices`
      }
      if (!is.null(this_object$`totalRevenue`)) {
        self$`totalRevenue` <- this_object$`totalRevenue`
      }
      if (!is.null(this_object$`vatId`)) {
        self$`vatId` <- this_object$`vatId`
      }
      if (!is.null(this_object$`vatIdValidated`)) {
        self$`vatIdValidated` <- this_object$`vatIdValidated`
      }
      if (!is.null(this_object$`vatIdValidationDate`)) {
        self$`vatIdValidationDate` <- this_object$`vatIdValidationDate`
      }
      if (!is.null(this_object$`website`)) {
        self$`website` <- this_object$`website`
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
    #' @return ContactCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ContactCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContactCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accountHolder` <- this_object$`accountHolder`
      self$`acquisitionCost` <- this_object$`acquisitionCost`
      self$`addressSupplement` <- this_object$`addressSupplement`
      self$`attention` <- this_object$`attention`
      self$`bankName` <- this_object$`bankName`
      self$`bic` <- this_object$`bic`
      self$`buyerReference` <- this_object$`buyerReference`
      self$`category` <- this_object$`category`
      self$`certificateAuthority` <- this_object$`certificateAuthority`
      self$`certificateNumber` <- this_object$`certificateNumber`
      self$`certificateParagraph` <- this_object$`certificateParagraph`
      self$`certificateValidUntil` <- this_object$`certificateValidUntil`
      self$`city` <- this_object$`city`
      self$`companyName` <- this_object$`companyName`
      self$`contactPersons` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`contactPersons`, auto_unbox = TRUE, digits = NA))
      self$`contactType` <- ContactType$new()$fromJSON(jsonlite::toJSON(this_object$`contactType`, auto_unbox = TRUE, digits = NA))
      self$`country` <- CountryCode$new()$fromJSON(jsonlite::toJSON(this_object$`country`, auto_unbox = TRUE, digits = NA))
      self$`creditLimit` <- this_object$`creditLimit`
      self$`creditorAccountSkr03` <- this_object$`creditorAccountSkr03`
      self$`creditorAccountSkr04` <- this_object$`creditorAccountSkr04`
      self$`currency` <- this_object$`currency`
      self$`customFields` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`customFields`, auto_unbox = TRUE, digits = NA))
      self$`customerNumber` <- this_object$`customerNumber`
      self$`debitorAccountSkr03` <- this_object$`debitorAccountSkr03`
      self$`debitorAccountSkr04` <- this_object$`debitorAccountSkr04`
      self$`defaultDebitorNumber` <- this_object$`defaultDebitorNumber`
      self$`deliveryBlock` <- this_object$`deliveryBlock`
      self$`department` <- this_object$`department`
      self$`discountDays` <- this_object$`discountDays`
      self$`discountPercentage` <- this_object$`discountPercentage`
      self$`donationReceiptEligible` <- this_object$`donationReceiptEligible`
      self$`email` <- this_object$`email`
      self$`externalId` <- this_object$`externalId`
      self$`fax` <- this_object$`fax`
      self$`iban` <- this_object$`iban`
      self$`industry` <- this_object$`industry`
      self$`isActive` <- this_object$`isActive`
      self$`isMember` <- this_object$`isMember`
      self$`isNonprofit` <- this_object$`isNonprofit`
      self$`lastContactDate` <- this_object$`lastContactDate`
      self$`lastPurchaseDate` <- this_object$`lastPurchaseDate`
      self$`leitwegId` <- this_object$`leitwegId`
      self$`lifetimeValue` <- this_object$`lifetimeValue`
      self$`mandateDate` <- this_object$`mandateDate`
      self$`mandateReference` <- this_object$`mandateReference`
      self$`marketingConsent` <- this_object$`marketingConsent`
      self$`marketingConsentAt` <- this_object$`marketingConsentAt`
      self$`marketingConsentSource` <- this_object$`marketingConsentSource`
      self$`mobile` <- this_object$`mobile`
      self$`name` <- this_object$`name`
      self$`nextContactDate` <- this_object$`nextContactDate`
      self$`notes` <- this_object$`notes`
      self$`openingBalance` <- this_object$`openingBalance`
      self$`openingBalanceDate` <- this_object$`openingBalanceDate`
      self$`orderReference` <- this_object$`orderReference`
      self$`paymentBlock` <- this_object$`paymentBlock`
      self$`paymentGracePeriodDays` <- this_object$`paymentGracePeriodDays`
      self$`paymentMethods` <- ApiClient$new()$deserializeObj(this_object$`paymentMethods`, "array[character]", loadNamespace("openapi"))
      self$`paymentTerms` <- this_object$`paymentTerms`
      self$`phone` <- this_object$`phone`
      self$`rating` <- this_object$`rating`
      self$`salesRepresentative` <- this_object$`salesRepresentative`
      self$`sepaBatchBooking` <- this_object$`sepaBatchBooking`
      self$`sepaSequenceType` <- SepaSequenceType$new()$fromJSON(jsonlite::toJSON(this_object$`sepaSequenceType`, auto_unbox = TRUE, digits = NA))
      self$`socialMedia` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`socialMedia`, auto_unbox = TRUE, digits = NA))
      self$`source` <- this_object$`source`
      self$`state` <- this_object$`state`
      self$`street` <- this_object$`street`
      self$`streetNumber` <- this_object$`streetNumber`
      self$`supplierNumber` <- this_object$`supplierNumber`
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("openapi"))
      self$`taxCountry` <- CountryCode$new()$fromJSON(jsonlite::toJSON(this_object$`taxCountry`, auto_unbox = TRUE, digits = NA))
      self$`taxNumber` <- this_object$`taxNumber`
      self$`taxOffice` <- this_object$`taxOffice`
      self$`totalInvoices` <- this_object$`totalInvoices`
      self$`totalRevenue` <- this_object$`totalRevenue`
      self$`vatId` <- this_object$`vatId`
      self$`vatIdValidated` <- this_object$`vatIdValidated`
      self$`vatIdValidationDate` <- this_object$`vatIdValidationDate`
      self$`website` <- this_object$`website`
      self$`zip` <- this_object$`zip`
      self
    },

    #' @description
    #' Validate JSON input with respect to ContactCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `contactType`
      if (!is.null(input_json$`contactType`)) {
        stopifnot(R6::is.R6(input_json$`contactType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContactCreate: the required field `contactType` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContactCreate: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ContactCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`accountHolder`) > 100) {
        return(FALSE)
      }

      if (nchar(self$`addressSupplement`) > 100) {
        return(FALSE)
      }

      if (nchar(self$`attention`) > 255) {
        return(FALSE)
      }

      if (nchar(self$`bankName`) > 100) {
        return(FALSE)
      }

      if (!str_detect(self$`bic`, "^[A-Z]{6}[A-Z0-9]{2}([A-Z0-9]{3})?$")) {
        return(FALSE)
      }

      if (nchar(self$`buyerReference`) > 50) {
        return(FALSE)
      }

      if (nchar(self$`category`) > 100) {
        return(FALSE)
      }

      if (nchar(self$`certificateAuthority`) > 100) {
        return(FALSE)
      }

      if (nchar(self$`certificateNumber`) > 50) {
        return(FALSE)
      }

      if (nchar(self$`certificateParagraph`) > 50) {
        return(FALSE)
      }

      if (nchar(self$`city`) > 100) {
        return(FALSE)
      }

      if (nchar(self$`companyName`) > 255) {
        return(FALSE)
      }

      # check if the required `contactType` is null
      if (is.null(self$`contactType`)) {
        return(FALSE)
      }

      if (nchar(self$`creditorAccountSkr03`) > 10) {
        return(FALSE)
      }

      if (nchar(self$`creditorAccountSkr04`) > 10) {
        return(FALSE)
      }

      if (nchar(self$`currency`) > 3) {
        return(FALSE)
      }

      if (nchar(self$`customerNumber`) > 50) {
        return(FALSE)
      }

      if (nchar(self$`debitorAccountSkr03`) > 10) {
        return(FALSE)
      }

      if (nchar(self$`debitorAccountSkr04`) > 10) {
        return(FALSE)
      }

      if (nchar(self$`defaultDebitorNumber`) > 50) {
        return(FALSE)
      }

      if (nchar(self$`department`) > 100) {
        return(FALSE)
      }

      if (self$`discountDays` > 365) {
        return(FALSE)
      }
      if (self$`discountDays` < 0) {
        return(FALSE)
      }

      if (nchar(self$`externalId`) > 100) {
        return(FALSE)
      }

      if (!str_detect(self$`fax`, "^\\+?[0-9\\s\\-\\(\\)]{7,20}$")) {
        return(FALSE)
      }

      if (!str_detect(self$`iban`, "^[A-Z]{2}\\d{2}[A-Z0-9]{4,30}$")) {
        return(FALSE)
      }

      if (nchar(self$`industry`) > 100) {
        return(FALSE)
      }

      if (nchar(self$`leitwegId`) > 50) {
        return(FALSE)
      }

      if (nchar(self$`mandateReference`) > 35) {
        return(FALSE)
      }

      if (!str_detect(self$`mobile`, "^\\+?[0-9\\s\\-\\(\\)]{7,20}$")) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`notes`) > 10000) {
        return(FALSE)
      }

      if (nchar(self$`orderReference`) > 50) {
        return(FALSE)
      }

      if (self$`paymentGracePeriodDays` > 365) {
        return(FALSE)
      }
      if (self$`paymentGracePeriodDays` < 0) {
        return(FALSE)
      }

      if (nchar(self$`paymentTerms`) > 100) {
        return(FALSE)
      }

      if (!str_detect(self$`phone`, "^\\+?[0-9\\s\\-\\(\\)]{7,20}$")) {
        return(FALSE)
      }

      if (self$`rating` > 5) {
        return(FALSE)
      }
      if (self$`rating` < 1) {
        return(FALSE)
      }

      if (nchar(self$`salesRepresentative`) > 100) {
        return(FALSE)
      }

      if (nchar(self$`source`) > 100) {
        return(FALSE)
      }

      if (nchar(self$`state`) > 100) {
        return(FALSE)
      }

      if (nchar(self$`street`) > 255) {
        return(FALSE)
      }

      if (nchar(self$`streetNumber`) > 50) {
        return(FALSE)
      }

      if (nchar(self$`supplierNumber`) > 50) {
        return(FALSE)
      }

      if (nchar(self$`taxNumber`) > 30) {
        return(FALSE)
      }

      if (nchar(self$`taxOffice`) > 100) {
        return(FALSE)
      }

      if (!str_detect(self$`vatId`, "^[A-Z]{2}[0-9A-Z]{8,15}$")) {
        return(FALSE)
      }

      if (nchar(self$`website`) > 2048) {
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
      if (nchar(self$`accountHolder`) > 100) {
        invalid_fields["accountHolder"] <- "Invalid length for `accountHolder`, must be smaller than or equal to 100."
      }

      if (nchar(self$`addressSupplement`) > 100) {
        invalid_fields["addressSupplement"] <- "Invalid length for `addressSupplement`, must be smaller than or equal to 100."
      }

      if (nchar(self$`attention`) > 255) {
        invalid_fields["attention"] <- "Invalid length for `attention`, must be smaller than or equal to 255."
      }

      if (nchar(self$`bankName`) > 100) {
        invalid_fields["bankName"] <- "Invalid length for `bankName`, must be smaller than or equal to 100."
      }

      if (!str_detect(self$`bic`, "^[A-Z]{6}[A-Z0-9]{2}([A-Z0-9]{3})?$")) {
        invalid_fields["bic"] <- "Invalid value for `bic`, must conform to the pattern ^[A-Z]{6}[A-Z0-9]{2}([A-Z0-9]{3})?$."
      }

      if (nchar(self$`buyerReference`) > 50) {
        invalid_fields["buyerReference"] <- "Invalid length for `buyerReference`, must be smaller than or equal to 50."
      }

      if (nchar(self$`category`) > 100) {
        invalid_fields["category"] <- "Invalid length for `category`, must be smaller than or equal to 100."
      }

      if (nchar(self$`certificateAuthority`) > 100) {
        invalid_fields["certificateAuthority"] <- "Invalid length for `certificateAuthority`, must be smaller than or equal to 100."
      }

      if (nchar(self$`certificateNumber`) > 50) {
        invalid_fields["certificateNumber"] <- "Invalid length for `certificateNumber`, must be smaller than or equal to 50."
      }

      if (nchar(self$`certificateParagraph`) > 50) {
        invalid_fields["certificateParagraph"] <- "Invalid length for `certificateParagraph`, must be smaller than or equal to 50."
      }

      if (nchar(self$`city`) > 100) {
        invalid_fields["city"] <- "Invalid length for `city`, must be smaller than or equal to 100."
      }

      if (nchar(self$`companyName`) > 255) {
        invalid_fields["companyName"] <- "Invalid length for `companyName`, must be smaller than or equal to 255."
      }

      # check if the required `contactType` is null
      if (is.null(self$`contactType`)) {
        invalid_fields["contactType"] <- "Non-nullable required field `contactType` cannot be null."
      }

      if (nchar(self$`creditorAccountSkr03`) > 10) {
        invalid_fields["creditorAccountSkr03"] <- "Invalid length for `creditorAccountSkr03`, must be smaller than or equal to 10."
      }

      if (nchar(self$`creditorAccountSkr04`) > 10) {
        invalid_fields["creditorAccountSkr04"] <- "Invalid length for `creditorAccountSkr04`, must be smaller than or equal to 10."
      }

      if (nchar(self$`currency`) > 3) {
        invalid_fields["currency"] <- "Invalid length for `currency`, must be smaller than or equal to 3."
      }

      if (nchar(self$`customerNumber`) > 50) {
        invalid_fields["customerNumber"] <- "Invalid length for `customerNumber`, must be smaller than or equal to 50."
      }

      if (nchar(self$`debitorAccountSkr03`) > 10) {
        invalid_fields["debitorAccountSkr03"] <- "Invalid length for `debitorAccountSkr03`, must be smaller than or equal to 10."
      }

      if (nchar(self$`debitorAccountSkr04`) > 10) {
        invalid_fields["debitorAccountSkr04"] <- "Invalid length for `debitorAccountSkr04`, must be smaller than or equal to 10."
      }

      if (nchar(self$`defaultDebitorNumber`) > 50) {
        invalid_fields["defaultDebitorNumber"] <- "Invalid length for `defaultDebitorNumber`, must be smaller than or equal to 50."
      }

      if (nchar(self$`department`) > 100) {
        invalid_fields["department"] <- "Invalid length for `department`, must be smaller than or equal to 100."
      }

      if (self$`discountDays` > 365) {
        invalid_fields["discountDays"] <- "Invalid value for `discountDays`, must be smaller than or equal to 365."
      }
      if (self$`discountDays` < 0) {
        invalid_fields["discountDays"] <- "Invalid value for `discountDays`, must be bigger than or equal to 0."
      }

      if (nchar(self$`externalId`) > 100) {
        invalid_fields["externalId"] <- "Invalid length for `externalId`, must be smaller than or equal to 100."
      }

      if (!str_detect(self$`fax`, "^\\+?[0-9\\s\\-\\(\\)]{7,20}$")) {
        invalid_fields["fax"] <- "Invalid value for `fax`, must conform to the pattern ^\\+?[0-9\\s\\-\\(\\)]{7,20}$."
      }

      if (!str_detect(self$`iban`, "^[A-Z]{2}\\d{2}[A-Z0-9]{4,30}$")) {
        invalid_fields["iban"] <- "Invalid value for `iban`, must conform to the pattern ^[A-Z]{2}\\d{2}[A-Z0-9]{4,30}$."
      }

      if (nchar(self$`industry`) > 100) {
        invalid_fields["industry"] <- "Invalid length for `industry`, must be smaller than or equal to 100."
      }

      if (nchar(self$`leitwegId`) > 50) {
        invalid_fields["leitwegId"] <- "Invalid length for `leitwegId`, must be smaller than or equal to 50."
      }

      if (nchar(self$`mandateReference`) > 35) {
        invalid_fields["mandateReference"] <- "Invalid length for `mandateReference`, must be smaller than or equal to 35."
      }

      if (!str_detect(self$`mobile`, "^\\+?[0-9\\s\\-\\(\\)]{7,20}$")) {
        invalid_fields["mobile"] <- "Invalid value for `mobile`, must conform to the pattern ^\\+?[0-9\\s\\-\\(\\)]{7,20}$."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }
      if (nchar(self$`name`) < 1) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 1."
      }

      if (nchar(self$`notes`) > 10000) {
        invalid_fields["notes"] <- "Invalid length for `notes`, must be smaller than or equal to 10000."
      }

      if (nchar(self$`orderReference`) > 50) {
        invalid_fields["orderReference"] <- "Invalid length for `orderReference`, must be smaller than or equal to 50."
      }

      if (self$`paymentGracePeriodDays` > 365) {
        invalid_fields["paymentGracePeriodDays"] <- "Invalid value for `paymentGracePeriodDays`, must be smaller than or equal to 365."
      }
      if (self$`paymentGracePeriodDays` < 0) {
        invalid_fields["paymentGracePeriodDays"] <- "Invalid value for `paymentGracePeriodDays`, must be bigger than or equal to 0."
      }

      if (nchar(self$`paymentTerms`) > 100) {
        invalid_fields["paymentTerms"] <- "Invalid length for `paymentTerms`, must be smaller than or equal to 100."
      }

      if (!str_detect(self$`phone`, "^\\+?[0-9\\s\\-\\(\\)]{7,20}$")) {
        invalid_fields["phone"] <- "Invalid value for `phone`, must conform to the pattern ^\\+?[0-9\\s\\-\\(\\)]{7,20}$."
      }

      if (self$`rating` > 5) {
        invalid_fields["rating"] <- "Invalid value for `rating`, must be smaller than or equal to 5."
      }
      if (self$`rating` < 1) {
        invalid_fields["rating"] <- "Invalid value for `rating`, must be bigger than or equal to 1."
      }

      if (nchar(self$`salesRepresentative`) > 100) {
        invalid_fields["salesRepresentative"] <- "Invalid length for `salesRepresentative`, must be smaller than or equal to 100."
      }

      if (nchar(self$`source`) > 100) {
        invalid_fields["source"] <- "Invalid length for `source`, must be smaller than or equal to 100."
      }

      if (nchar(self$`state`) > 100) {
        invalid_fields["state"] <- "Invalid length for `state`, must be smaller than or equal to 100."
      }

      if (nchar(self$`street`) > 255) {
        invalid_fields["street"] <- "Invalid length for `street`, must be smaller than or equal to 255."
      }

      if (nchar(self$`streetNumber`) > 50) {
        invalid_fields["streetNumber"] <- "Invalid length for `streetNumber`, must be smaller than or equal to 50."
      }

      if (nchar(self$`supplierNumber`) > 50) {
        invalid_fields["supplierNumber"] <- "Invalid length for `supplierNumber`, must be smaller than or equal to 50."
      }

      if (nchar(self$`taxNumber`) > 30) {
        invalid_fields["taxNumber"] <- "Invalid length for `taxNumber`, must be smaller than or equal to 30."
      }

      if (nchar(self$`taxOffice`) > 100) {
        invalid_fields["taxOffice"] <- "Invalid length for `taxOffice`, must be smaller than or equal to 100."
      }

      if (!str_detect(self$`vatId`, "^[A-Z]{2}[0-9A-Z]{8,15}$")) {
        invalid_fields["vatId"] <- "Invalid value for `vatId`, must conform to the pattern ^[A-Z]{2}[0-9A-Z]{8,15}$."
      }

      if (nchar(self$`website`) > 2048) {
        invalid_fields["website"] <- "Invalid length for `website`, must be smaller than or equal to 2048."
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
# ContactCreate$unlock()
#
## Below is an example to define the print function
# ContactCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ContactCreate$lock()

