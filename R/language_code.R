#' @docType class
#' @title LanguageCode
#' @description LanguageCode Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LanguageCode <- R6::R6Class(
  "LanguageCode",
  public = list(

    #' @description
    #' Initialize a new LanguageCode class.
    #'
    #' @param ... Optional arguments.
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_LanguageCode()

      if (length(val) == 0L) {
        val = "DUMMY_ENUM"
      } else {
        stopifnot(length(val) == 1L)
      }

      if (!val %in% enumvec) {
        if (!(val=="DUMMY_ENUM")) {
          stop("Use one of the valid values: ",
            paste0(enumvec, collapse = ", "))
        }
      }
      private$value <- val
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert LanguageCode to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      return(private$value)
    },

    #' @description
    #' Deserialize JSON string into an instance of LanguageCode
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of LanguageCode
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LanguageCode in JSON format
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LanguageCode
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of LanguageCode
    fromJSONString = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    }
  ),
  private = list(
    value = NULL
  )
)

# add to utils.R
.parse_LanguageCode <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[DE, EN, FR, ES, IT, NL, PL, PT, TR, RU, UK, CS, EL, HU, RO, SV, DA, FI, NO, SK, SL, HR, BG, ET, LV, LT, MT, AR, ZH, JA, KO, TH, VI, ID, HI, AB, AA, AF, AK, SQ, AM, AN, HY, AS, AV, AE, AY, AZ, BM, BA, EU, BE, BN, BI, BS, BR, MY, CA, CH, CE, NY, CU, CV, KW, CO, CR, DV, DZ, EO, EE, FO, FJ, FY, FF, GD, GL, LG, KA, KL, GN, GU, HT, HA, HE, HZ, HO, IS, IO, IG, IA, IE, IU, IK, GA, JV, KN, KR, KS, KK, KM, KI, RW, KY, KV, KG, KJ, KU, LO, LA, LI, LN, LU, LB, MK, MG, MS, ML, GV, MI, MR, MH, MN, NA, NV, ND, NR, NG, NE, NB, NN, OC, OJ, OR, OM, OS, PI, PS, FA, PA, QU, RM, RN, SE, SM, SG, SA, SC, SR, SN, SD, SI, SO, ST, SU, SW, SS, TL, TY, TG, TA, TT, TE, BO, TI, TO, TS, TN, TK, TW, UG, UR, UZ, VE, VO, WA, CY, WO, XH, II, YI, YO, ZA, ZU, BB, CB, DB, EB, FB, GB, HB, IB, JB, KB, MB, OB, PB, QB, RB, SB, TB, UB, VB, WB, XB, YB, ZB]")
  unlist(strsplit(res, ", "))
}

