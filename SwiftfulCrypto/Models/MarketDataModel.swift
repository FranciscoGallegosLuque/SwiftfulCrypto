//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by Francisco Manuel Gallegos Luque on 07/08/2025.
//

import Foundation

/*
 URL: https://api.coingecko.com/api/v3/global

 JSON Response:

 {
   "data": {
     "active_cryptocurrencies": 17949,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 1336,
     "total_market_cap": {
       "btc": 33457605.459737785,
       "eth": 1019199045.7192398,
       "ltc": 32250736319.769115,
       "bch": 6748124517.49402,
       "bnb": 5006965297.568469,
       "eos": 7539921161615.725,
       "xrp": 1277101219572.6887,
       "xlm": 9618288366536.893,
       "link": 216910772845.70203,
       "dot": 1043614842339.2887,
       "yfi": 726183376.4595379,
       "sol": 22984273967.09477,
       "usd": 3892540356263.406,
       "aed": 14297495355573.303,
       "ars": 5162526022454403,
       "aud": 5988984741339.751,
       "bdt": 473541345072627.3,
       "bhd": 1466833767531.452,
       "bmd": 3892540356263.406,
       "brl": 21203056574602.402,
       "cad": 5356271769130.914,
       "chf": 3144853419551.6187,
       "clp": 3783432450077341.5,
       "cny": 27954278568505.652,
       "czk": 81875748349209.47,
       "dkk": 24987715174891.965,
       "eur": 3347530210821.5405,
       "gbp": 2901725348899.4062,
       "gel": 10509858961911.197,
       "hkd": 30556325020457.05,
       "huf": 1328527978413702.8,
       "idr": 63511272333847170,
       "ils": 13332729228273.42,
       "inr": 340501135426248.3,
       "jpy": 574091314443508.4,
       "krw": 5396934265538016,
       "kwd": 1189213896782.3894,
       "lkr": 1171721303096345.8,
       "mmk": 8170442207796887,
       "mxn": 72564822957350.23,
       "myr": 16465445706994.21,
       "ngn": 5957649791471830,
       "nok": 39928390543692.08,
       "nzd": 6550176177042.603,
       "php": 222404205258167.75,
       "pkr": 1099837277662225.6,
       "pln": 14237667010297.533,
       "rub": 308490596254094.8,
       "sar": 14607835920557.115,
       "sek": 37361338029543.51,
       "sgd": 5003370167891.717,
       "thb": 125917841714586.78,
       "try": 158050373101505.6,
       "twd": 116209067557994.61,
       "uah": 161523593440430.9,
       "vef": 389760065872.65466,
       "vnd": 102032519624322130,
       "zar": 69160839233741.83,
       "xdr": 2743906192695.063,
       "xag": 102216708440.9488,
       "xau": 1148416181.3083928,
       "bits": 33457605459737.785,
       "sats": 3345760545973778.5
     },
     "total_volume": {
       "btc": 1218425.258114167,
       "eth": 37116160.684139706,
       "ltc": 1174474717.6265671,
       "bch": 245746377.9620596,
       "bnb": 182338601.38018233,
       "eos": 274581227833.45502,
       "xrp": 46508181375.032745,
       "xlm": 350269103977.47424,
       "link": 7899237281.350237,
       "dot": 38005310487.004265,
       "yfi": 26445412.208763134,
       "sol": 837018057.8112314,
       "usd": 141754600280.86606,
       "aed": 520671734561.63513,
       "ars": 188003654624941.8,
       "aud": 218100792900.13492,
       "bdt": 17244950069489.152,
       "bhd": 53417669533.03933,
       "bmd": 141754600280.86606,
       "brl": 772151483189.9056,
       "cad": 195059291397.48148,
       "chf": 114526093149.71677,
       "clp": 137781218834993.36,
       "cny": 1018010661917.0398,
       "czk": 2981668246872.1406,
       "dkk": 909977354723.9875,
       "eur": 121906971677.14085,
       "gbp": 105672100816.17386,
       "gel": 382737420758.33844,
       "hkd": 1112769359566.7903,
       "huf": 48380989098533.484,
       "idr": 2312889321372652.5,
       "ils": 485537856882.0225,
       "inr": 12400026185948.846,
       "jpy": 20906677222423.53,
       "krw": 196540097091720.72,
       "kwd": 43307589686.40768,
       "lkr": 42670562090315.89,
       "mmk": 297542905989537.8,
       "mxn": 2642592377037.1113,
       "myr": 599621959188.0636,
       "ngn": 216959668367873.9,
       "nok": 1454071768908.4304,
       "nzd": 238537695377.22766,
       "php": 8099291550420.565,
       "pkr": 40052762309358.72,
       "pln": 518492966355.3182,
       "rub": 11234298725263.125,
       "sar": 531973403578.2277,
       "sek": 1360587445115.2058,
       "sgd": 182207677581.41788,
       "thb": 4585548687185.596,
       "try": 5755718737044.118,
       "twd": 4231984363165.0605,
       "uah": 5882202964764.329,
       "vef": 14193888126.123114,
       "vnd": 3715717169565721,
       "zar": 2518629538392.0977,
       "xdr": 99924802302.38644,
       "xag": 3722424771.7194424,
       "xau": 41821859.72086392,
       "bits": 1218425258114.167,
       "sats": 121842525811416.7
     },
     "market_cap_percentage": {
       "btc": 59.48797574940049,
       "eth": 11.843395870201881,
       "xrp": 4.644092895057201,
       "usdt": 4.2145482883856635,
       "bnb": 2.7818807832616357,
       "sol": 2.34561092626293,
       "usdc": 1.6630069273163086,
       "steth": 0.8697975013932473,
       "trx": 0.8308122506148994,
       "doge": 0.8222981915043722
     },
     "market_cap_change_percentage_24h_usd": 1.2635391341647433,
     "updated_at": 1754592272
   }
 }

 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd =
            "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
