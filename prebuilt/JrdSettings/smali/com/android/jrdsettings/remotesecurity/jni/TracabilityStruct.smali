.class public Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;
.super Ljava/lang/Object;
.source "TracabilityStruct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;,
        Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field static TracabilityInfoItems:[I

.field private static mMmitestInfo:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

.field private static mTracabilityData:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

.field static map:[Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

.field private static nbinstance:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x4

    const/16 v7, 0x14

    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 18
    new-array v0, v8, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->TracabilityInfoItems:[I

    .line 25
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    const/16 v1, 0x200

    const v2, 0xc350

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;-><init>(II)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->mTracabilityData:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    .line 27
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    const v1, 0xc354

    invoke-direct {v0, v8, v1}, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;-><init>(II)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->mMmitestInfo:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    .line 29
    const-string v0, "TracabilityStruct"

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->nbinstance:I

    .line 133
    const/16 v0, 0x3d

    new-array v0, v0, [Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->REF_PCBA_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->SHORT_CODE_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v1, v2, v8}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->ICS_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v1, v2, v9}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->SITE_FAC_PCBA_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v1, v2, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->LINE_FAC_PCBA_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v1, v2, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->DATE_PROD_PCBA_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->SN_PCBA_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v8}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INDUS_REF_HANDSET_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_PTM_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v9}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->SITE_FAC_HANDSET_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->LINE_FAC_HANDSET_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->DATE_PROD_HANDSET_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->SN_HANDSET_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v8}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_PTS_MINI_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_NAME_MINI_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v7}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_TECH_MINI_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v7}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_GOLDEN_FLAG_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_GOLDEN_DATE_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_ID_BAIE_HDTB_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_DATE_PASS_HDTB_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_PROD_BAIE_PARA_SYS_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v1, v2, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v1, v0, v7

    const/16 v1, 0x15

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_STATUS_PARA_SYS_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_NBRE_PASS_PARA_SYS_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_DATE_PASS_PARA_SYS_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_PROD_BAIE_PARA_SYS_2_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_STATUS_PARA_SYS_2_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_NBRE_PASS_PARA_SYS_2_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_DATE_PASS_PARA_SYS_2_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_PROD_BAIE_PARA_SYS_3_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_STATUS_PARA_SYS_3_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_NBRE_PASS_PARA_SYS_3_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_DATE_PASS_PARA_SYS_3_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_PROD_BAIE_BW_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_STATUS_BW_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_NBRE_PASS_BW_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_DATE_BAIE_BW_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_PROD_BAIE_GPS_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_STATUS_GPS_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_NBRE_PASS_GPS_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_DATE_BAIE_GPS_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_STATUS_MMI_TEST_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_PROD_BAIE_FINAL_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_STATUS_FINAL_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_NBRE_PASS_FINAL_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_DATE_BAIE_FINAL_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_PROD_BAIE_FINAL_2_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_STATUS_FINAL_2_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_NBRE_PASS_FINAL_2_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v6}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_DATE_BAIE_FINAL_2_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_ID_BAIE_HDT_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_DATE_PASS_HDT_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_COMM_REF_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v7}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_PTS_APPLI_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v5}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_NAME_APPLI_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v7}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_NAME_PERSO1_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v7}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_NAME_PERSO2_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v7}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_NAME_PERSO3_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v7}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_NAME_PERSO4_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v7}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->INFO_SPARE_REGION_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-direct {v2, v3, v7}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->BT_ADDR_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->WIFI_ADDR_I:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->map:[Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    return-void

    .line 18
    :array_0
    .array-data 0x4
        0x50t 0xc3t 0x0t 0x0t
        0x51t 0xc3t 0x0t 0x0t
        0x52t 0xc3t 0x0t 0x0t
        0x53t 0xc3t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;->TRACABILITY_ITEM_TYPE_MAX:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 43
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->map:[Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;->id:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 44
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid tracability map"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_1
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->mTracabilityData:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    if-nez v1, :cond_2

    .line 49
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    const/16 v2, 0x200

    const v3, 0xc350

    invoke-direct {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;-><init>(II)V

    sput-object v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->mTracabilityData:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    .line 51
    :cond_2
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->mMmitestInfo:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    if-nez v1, :cond_3

    .line 52
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    const/4 v2, 0x4

    const v3, 0xc354

    invoke-direct {v1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;-><init>(II)V

    sput-object v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->mMmitestInfo:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    .line 54
    :cond_3
    return-void
.end method


# virtual methods
.method public getItem(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;)[B
    .locals 10
    .parameter "id"

    .prologue
    .line 224
    sget-object v7, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->map:[Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    iget v7, v7, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;->size:I

    new-array v6, v7, [B

    .line 225
    .local v6, result:[B
    const/4 v5, 0x0

    .line 229
    .local v5, offset:I
    const-string v7, "NvRAMAgent"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 230
    .local v1, binder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/jrdsettings/remotesecurity/jni/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/jrdsettings/remotesecurity/jni/NvRAMAgent;

    move-result-object v0

    .line 231
    .local v0, agent:Lcom/android/jrdsettings/remotesecurity/jni/NvRAMAgent;
    const/4 v2, 0x0

    .line 233
    .local v2, buff:[B
    const/16 v7, 0x23

    :try_start_0
    invoke-interface {v0, v7}, Lcom/android/jrdsettings/remotesecurity/jni/NvRAMAgent;->readFile(I)[B

    move-result-object v2

    .line 234
    const-string v7, "MTK71025"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buff.length= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    sget-object v7, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->map:[Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    array-length v7, v7

    if-ge v4, v7, :cond_0

    .line 242
    sget-object v7, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->map:[Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;->id:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-virtual {v7, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 250
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    array-length v8, v6

    invoke-static {v2, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :goto_2
    return-object v6

    .line 235
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 237
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v4       #i:I
    :cond_1
    sget-object v7, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->map:[Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;->size:I

    add-int/2addr v5, v7

    .line 241
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 251
    :catch_1
    move-exception v3

    .line 252
    .local v3, e:Ljava/lang/Exception;
    sget-object v7, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t read Tracability item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getMmitestInfo()I
    .locals 4

    .prologue
    .line 291
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->mMmitestInfo:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    invoke-virtual {v1}, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->read()[B

    .line 293
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->mMmitestInfo:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    iget-object v1, v1, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->data:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->mMmitestInfo:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    iget-object v2, v2, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->data:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->mMmitestInfo:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    iget-object v2, v2, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->data:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->mMmitestInfo:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    iget-object v2, v2, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->data:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 298
    .local v0, result:I
    return v0
.end method

.method public putItem(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;[B)V
    .locals 5
    .parameter "id"
    .parameter "data"

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 271
    .local v1, offset:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->map:[Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 272
    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->map:[Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;->id:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    :cond_0
    array-length v2, p2

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->map:[Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;->size:I

    if-eq v2, v3, :cond_2

    .line 280
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Item size is wrong"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 275
    :cond_1
    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->map:[Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;->size:I

    add-int/2addr v1, v2

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_2
    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->mTracabilityData:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    invoke-virtual {v2, p2, v1}, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->write([BI)V

    .line 288
    return-void
.end method

.method public setMmitestInfo(I)V
    .locals 4
    .parameter "mStatusBits"

    .prologue
    const/4 v3, 0x0

    .line 303
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 305
    .local v0, data:[B
    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 306
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 307
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 308
    const/4 v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 310
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->mMmitestInfo:Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;

    invoke-virtual {v1, v0, v3}, Lcom/android/jrdsettings/remotesecurity/jni/FactoryInfo;->write([BI)V

    .line 311
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 315
    const-string v1, ""

    .line 316
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->map:[Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;->map:[Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;->id:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    return-object v1
.end method
