.class public Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
.super Ljava/lang/Object;
.source "SimInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/SimInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimInfoRecord"
.end annotation


# instance fields
.field public mColor:I

.field public mDataRoaming:I

.field public mDispalyNumberFormat:I

.field public mDisplayName:Ljava/lang/String;

.field public mIccId:Ljava/lang/String;

.field public mNameSource:I

.field public mNumber:Ljava/lang/String;

.field public mOperator:Ljava/lang/String;

.field public mSimBackgroundDarkRes:I

.field public mSimBackgroundDarkSmallRes:I

.field public mSimBackgroundLightRes:I

.field public mSimBackgroundLightSmallRes:I

.field public mSimBackgroundRes:I

.field public mSimInfoId:J

.field public mSimSlotId:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    .line 193
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    .line 195
    iput v1, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 197
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundRes:I

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    .line 200
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundDarkRes:I

    .line 201
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundLightRes:I

    .line 204
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkSmallRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundDarkSmallRes:I

    .line 205
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightSmallRes:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundLightSmallRes:I

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/telephony/SimInfoManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;-><init>()V

    return-void
.end method
