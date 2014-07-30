.class public final Lcom/mediatek/common/featureoption/IMEFeatureOption;
.super Ljava/lang/Object;
.source "IMEFeatureOption.java"


# static fields
.field public static final DEFAULT_INPUT_METHOD:Ljava/lang/String; = "com.sohu.inputmethod.sogou.SogouIME"

.field public static final DEFAULT_LATIN_IME_LANGUAGES:[Ljava/lang/String; = null

.field public static final MTK_IME_ARABIC_SUPPORT:Z = false

.field public static final MTK_IME_ENGLISH_SUPPORT:Z = true

.field public static final MTK_IME_FRENCH_SUPPORT:Z = false

.field public static final MTK_IME_GERMAN_SUPPORT:Z = false

.field public static final MTK_IME_HANDWRITING_SUPPORT:Z = true

.field public static final MTK_IME_HINDI_SUPPORT:Z = false

.field public static final MTK_IME_INDONESIAN_SUPPORT:Z = false

.field public static final MTK_IME_ITALIAN_SUPPORT:Z = false

.field public static final MTK_IME_MALAY_SUPPORT:Z = false

.field public static final MTK_IME_PINYIN_SUPPORT:Z = true

.field public static final MTK_IME_PORTUGUESE_SUPPORT:Z = false

.field public static final MTK_IME_RUSSIAN_SUPPORT:Z = false

.field public static final MTK_IME_SPANISH_SUPPORT:Z = false

.field public static final MTK_IME_STROKE_SUPPORT:Z = true

.field public static final MTK_IME_SUPPORT:Z = false

.field public static final MTK_IME_THAI_SUPPORT:Z = false

.field public static final MTK_IME_TURKISH_SUPPORT:Z = false

.field public static final MTK_IME_VIETNAM_SUPPORT:Z = false

.field public static final MTK_IME_ZHUYIN_SUPPORT:Z = true

.field public static final PRODUCT_LOCALES:[Ljava/lang/String; = null

.field public static final SYS_LOCALE_AR:Z = true

.field public static final SYS_LOCALE_AR_EG:Z = true

.field public static final SYS_LOCALE_CS:Z = true

.field public static final SYS_LOCALE_CS_CZ:Z = true

.field public static final SYS_LOCALE_DE:Z = true

.field public static final SYS_LOCALE_DE_AT:Z = false

.field public static final SYS_LOCALE_DE_CH:Z = false

.field public static final SYS_LOCALE_DE_DE:Z = true

.field public static final SYS_LOCALE_DE_LI:Z = false

.field public static final SYS_LOCALE_EL:Z = true

.field public static final SYS_LOCALE_EL_GR:Z = true

.field public static final SYS_LOCALE_EN:Z = true

.field public static final SYS_LOCALE_EN_AU:Z = false

.field public static final SYS_LOCALE_EN_GB:Z = false

.field public static final SYS_LOCALE_EN_NZ:Z = false

.field public static final SYS_LOCALE_EN_SG:Z = false

.field public static final SYS_LOCALE_EN_US:Z = true

.field public static final SYS_LOCALE_ES:Z = true

.field public static final SYS_LOCALE_ES_ES:Z = true

.field public static final SYS_LOCALE_FR:Z = true

.field public static final SYS_LOCALE_FR_BE:Z = false

.field public static final SYS_LOCALE_FR_CA:Z = false

.field public static final SYS_LOCALE_FR_CH:Z = false

.field public static final SYS_LOCALE_FR_FR:Z = true

.field public static final SYS_LOCALE_HU:Z = true

.field public static final SYS_LOCALE_HU_HU:Z = true

.field public static final SYS_LOCALE_IN:Z = true

.field public static final SYS_LOCALE_IN_ID:Z = true

.field public static final SYS_LOCALE_IT:Z = true

.field public static final SYS_LOCALE_IT_CH:Z = false

.field public static final SYS_LOCALE_IT_IT:Z = true

.field public static final SYS_LOCALE_IW:Z = true

.field public static final SYS_LOCALE_IW_IL:Z = true

.field public static final SYS_LOCALE_JA:Z = false

.field public static final SYS_LOCALE_JA_JP:Z = false

.field public static final SYS_LOCALE_KM:Z = true

.field public static final SYS_LOCALE_KM_KH:Z = true

.field public static final SYS_LOCALE_KO:Z = true

.field public static final SYS_LOCALE_KO_KR:Z = true

.field public static final SYS_LOCALE_MS:Z = true

.field public static final SYS_LOCALE_MS_MY:Z = true

.field public static final SYS_LOCALE_MY:Z = true

.field public static final SYS_LOCALE_MY_MM:Z = true

.field public static final SYS_LOCALE_NL:Z = true

.field public static final SYS_LOCALE_NL_BE:Z = false

.field public static final SYS_LOCALE_NL_NL:Z = true

.field public static final SYS_LOCALE_PL:Z = false

.field public static final SYS_LOCALE_PL_PL:Z = false

.field public static final SYS_LOCALE_PT:Z = true

.field public static final SYS_LOCALE_PT_BR:Z = true

.field public static final SYS_LOCALE_PT_PT:Z = true

.field public static final SYS_LOCALE_RO:Z = true

.field public static final SYS_LOCALE_RO_RO:Z = true

.field public static final SYS_LOCALE_RU:Z = true

.field public static final SYS_LOCALE_RU_RU:Z = true

.field public static final SYS_LOCALE_TH:Z = true

.field public static final SYS_LOCALE_TH_TH:Z = true

.field public static final SYS_LOCALE_TL:Z = true

.field public static final SYS_LOCALE_TL_PH:Z = true

.field public static final SYS_LOCALE_TR:Z = true

.field public static final SYS_LOCALE_TR_TR:Z = true

.field public static final SYS_LOCALE_VI:Z = true

.field public static final SYS_LOCALE_VI_VN:Z = true

.field public static final SYS_LOCALE_ZH:Z = true

.field public static final SYS_LOCALE_ZH_CN:Z = true

.field public static final SYS_LOCALE_ZH_TW:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "en_US"

    aput-object v1, v0, v3

    const-string v1, "es_ES"

    aput-object v1, v0, v4

    const-string v1, "zh_CN"

    aput-object v1, v0, v5

    const-string v1, "zh_TW"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "ru_RU"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pt_BR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fr_FR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "de_DE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tr_TR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "it_IT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "in_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ms_MY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "vi_VN"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ar_EG"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "th_TH"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pt_PT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "nl_NL"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "el_GR"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "hu_HU"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "tl_PH"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ro_RO"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "cs_CZ"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "iw_IL"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "my_MM"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "km_KH"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ko_KR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/common/featureoption/IMEFeatureOption;->PRODUCT_LOCALES:[Ljava/lang/String;

    .line 39
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "en-US"

    aput-object v1, v0, v3

    const-string v1, "fr"

    aput-object v1, v0, v4

    const-string v1, "ru"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/common/featureoption/IMEFeatureOption;->DEFAULT_LATIN_IME_LANGUAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
