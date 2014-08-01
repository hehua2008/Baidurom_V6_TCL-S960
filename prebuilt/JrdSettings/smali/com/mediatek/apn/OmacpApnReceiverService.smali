.class public Lcom/mediatek/apn/OmacpApnReceiverService;
.super Landroid/app/IntentService;
.source "OmacpApnReceiverService.java"


# static fields
.field private static final ACTION_OMACP_RESULT:Ljava/lang/String; = "com.mediatek.omacp.settings.result"

.field private static final APN_APN:Ljava/lang/String; = "NAP-ADDRESS"

.field private static final APN_AUTH_TYPE:Ljava/lang/String; = "AUTHTYPE"

.field private static final APN_EXIST:J = 0x0L

.field private static final APN_ID:Ljava/lang/String; = "APN-ID"

.field private static final APN_MMSC:Ljava/lang/String; = "MMSC"

.field private static final APN_MMS_PORT:Ljava/lang/String; = "MMS-PORT"

.field private static final APN_MMS_PROXY:Ljava/lang/String; = "MMS-PROXY"

.field private static final APN_NAME:Ljava/lang/String; = "NAP-NAME"

.field private static final APN_NAP_ID:Ljava/lang/String; = "NAPID"

.field private static final APN_NO_UPDATE:J = -0x1L

.field private static final APN_PASSWORD:Ljava/lang/String; = "AUTHSECRET"

.field private static final APN_PORT:Ljava/lang/String; = "PORTNBR"

.field private static final APN_PROXY:Ljava/lang/String; = "PXADDR"

.field private static final APN_PROXY_ID:Ljava/lang/String; = "PROXY-ID"

.field private static final APN_SERVER:Ljava/lang/String; = "SERVER"

.field private static final APN_SETTING_INTENT:Ljava/lang/String; = "apn_setting_intent"

.field private static final APN_TYPE:Ljava/lang/String; = "APN-TYPE"

.field private static final APN_USERNAME:Ljava/lang/String; = "AUTHNAME"

.field private static final APP_ID:Ljava/lang/String; = "appId"

.field private static final APP_ID_APN:Ljava/lang/String; = "apn"

.field private static final MMS_TYPE:Ljava/lang/String; = "mms"

.field private static final NAP_AUTH_INFO:Ljava/lang/String; = "NAPAUTHINFO"

.field private static final PORT:Ljava/lang/String; = "PORT"

.field private static final TAG:Ljava/lang/String; = "OmacpApnReceiverService"

.field private static replaceNum:J

.field private static sAuthType:I


# instance fields
.field private mApn:Ljava/lang/String;

.field private mApnId:Ljava/lang/String;

.field private mAuthType:Ljava/lang/String;

.field private mIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMmsApn:Z

.field private mMcc:Ljava/lang/String;

.field private mMmsPort:Ljava/lang/String;

.field private mMmsProxy:Ljava/lang/String;

.field private mMmsc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNapId:Ljava/lang/String;

.field private mNumeric:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mPreferedUri:Landroid/net/Uri;

.field private mProxy:Ljava/lang/String;

.field private mProxyId:Ljava/lang/String;

.field private mReplaceApnExt:Lcom/mediatek/settings/ext/IReplaceApnProfileExt;

.field private mResult:Z

.field private mServer:Ljava/lang/String;

.field private mSimId:I

.field private mTelephonyService:Lcom/android/internal/telephony/ITelephony;

.field private mType:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mUserName:Ljava/lang/String;

.field mmsIds:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    .line 119
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/mediatek/apn/OmacpApnReceiverService;->replaceNum:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    const-string v0, "OmacpApnReceiverService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mmsIds:[J

    .line 129
    return-void
.end method

.method private deleteApnById(Landroid/content/Context;J)Z
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 548
    const/4 v2, -0x1

    .line 549
    .local v2, rows:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 551
    .local v1, mContentResolver:Landroid/content/ContentResolver;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, where:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 558
    .end local v3           #where:Ljava/lang/String;
    :goto_0
    if-lez v2, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, e:Landroid/database/SQLException;
    const-string v4, "OmacpApnReceiverService"

    const-string v5, "deleteApn SQLException happened!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 555
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v0

    .line 556
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v4, "OmacpApnReceiverService"

    const-string v5, "deleteApn UnsupportedOperationException happened!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 558
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private extractAPN(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 345
    const-string v0, "NAP-NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 348
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0907e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    .line 350
    :cond_1
    const-string v0, "NAP-ADDRESS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApn:Ljava/lang/String;

    .line 351
    const-string v0, "PXADDR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxy:Ljava/lang/String;

    .line 354
    invoke-direct {p0, p1}, Lcom/mediatek/apn/OmacpApnReceiverService;->getPort(Landroid/content/Intent;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/mediatek/apn/OmacpApnReceiverService;->getNapAuthInfo(Landroid/content/Intent;)V

    .line 358
    const-string v0, "SERVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mServer:Ljava/lang/String;

    .line 359
    const-string v0, "MMSC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsc:Ljava/lang/String;

    .line 360
    const-string v0, "MMS-PROXY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsProxy:Ljava/lang/String;

    .line 361
    const-string v0, "MMS-PORT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsPort:Ljava/lang/String;

    .line 362
    const-string v0, "APN-TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mType:Ljava/lang/String;

    .line 363
    const-string v0, "APN-ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApnId:Ljava/lang/String;

    .line 364
    const-string v0, "NAPID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNapId:Ljava/lang/String;

    .line 365
    const-string v0, "PROXY-ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxyId:Ljava/lang/String;

    .line 367
    const-string v0, "mms"

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    .line 368
    const-string v0, "OmacpApnReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractAPN: mName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mApn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mServer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mMmsc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mMmsProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsProxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mMmsPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mApnId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApnId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNapId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mMmsPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mProxyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxyId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mIsMmsApn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method

.method private getNapAuthInfo(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 311
    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUserName:Ljava/lang/String;

    .line 312
    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPassword:Ljava/lang/String;

    .line 313
    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    .line 314
    const/4 v2, -0x1

    sput v2, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    .line 316
    const-string v2, "NAPAUTHINFO"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 318
    .local v0, napAuthInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 320
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 321
    .local v1, napAuthInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "AUTHNAME"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUserName:Ljava/lang/String;

    .line 322
    const-string v2, "AUTHSECRET"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPassword:Ljava/lang/String;

    .line 323
    const-string v2, "AUTHTYPE"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    .line 325
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 326
    const-string v2, "PAP"

    iget-object v3, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    const/4 v2, 0x1

    sput v2, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    .line 336
    .end local v1           #napAuthInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 328
    .restart local v1       #napAuthInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v2, "CHAP"

    iget-object v3, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 329
    const/4 v2, 0x2

    sput v2, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    goto :goto_0

    .line 331
    :cond_2
    const/4 v2, 0x3

    sput v2, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    goto :goto_0
.end method

.method private getPort(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 295
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPort:Ljava/lang/String;

    .line 296
    const-string v2, "PORT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 298
    .local v0, portList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 300
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 301
    .local v1, portMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "PORTNBR"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPort:Ljava/lang/String;

    .line 304
    .end local v1           #portMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private initState(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 529
    const-string v0, "simId"

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSimId:I

    .line 530
    const-string v0, "OmacpApnReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GEMINI_SIM_ID_KEY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->NUMERIC_LIST:[Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSimId:I

    aget-object v0, v0, v1

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    .line 533
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PREFERRED_URI_LIST:[Landroid/net/Uri;

    iget v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSimId:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPreferedUri:Landroid/net/Uri;

    .line 540
    const-string v0, "OmacpApnReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initState: mSimId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mNumeric: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mPreferedUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPreferedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/apn/OmacpApnReceiverService;->verifyMccMnc(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private queryApnByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J
    .locals 11
    .parameter "context"
    .parameter "numeric"
    .parameter "ApnType"
    .parameter "ApnId"

    .prologue
    .line 563
    const/4 v10, 0x0

    .line 564
    .local v10, id:[J
    const/4 v8, 0x0

    .line 565
    .local v8, i:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 567
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and omacpid<>\'\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, where:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    move v9, v8

    .line 572
    .end local v8           #i:I
    .local v9, i:I
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    if-nez v10, :cond_0

    .line 574
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v10, v1, [J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 575
    :cond_0
    add-int/lit8 v8, v9, 0x1

    .end local v9           #i:I
    .restart local v8       #i:I
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    aput-wide v1, v10, v9
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    move v9, v8

    .end local v8           #i:I
    .restart local v9       #i:I
    goto :goto_0

    .line 577
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2

    move v8, v9

    .line 583
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #i:I
    .restart local v8       #i:I
    :goto_1
    return-object v10

    .line 578
    :catch_0
    move-exception v7

    .line 579
    .local v7, e:Landroid/database/SQLException;
    :goto_2
    const-string v1, "OmacpApnReceiverService"

    const-string v2, "QUERY SQLException happened!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 580
    .end local v7           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v7

    .line 581
    .local v7, e:Ljava/lang/UnsupportedOperationException;
    :goto_3
    const-string v1, "OmacpApnReceiverService"

    const-string v2, "QUERY UnsupportedOperationException happened!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 580
    .end local v7           #e:Ljava/lang/UnsupportedOperationException;
    .end local v8           #i:I
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #i:I
    :catch_2
    move-exception v7

    move v8, v9

    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_3

    .line 578
    .end local v8           #i:I
    .restart local v9       #i:I
    :catch_3
    move-exception v7

    move v8, v9

    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_2
.end method

.method private sendFeedback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 236
    .local v0, it:Landroid/content/Intent;
    const-string v1, "com.mediatek.omacp.settings.result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "appId"

    const-string v2, "apn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v1, "result"

    iget-boolean v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 240
    return-void
.end method

.method private setCurrentApn(Landroid/content/Context;JLandroid/net/Uri;)Z
    .locals 7
    .parameter "context"
    .parameter "apnToUseId"
    .parameter "preferedUri"

    .prologue
    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, row:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 383
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "apn_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 386
    .local v1, mContentResolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, p4, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 387
    const-string v4, "OmacpApnReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update preferred uri ,row = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    if-lez v2, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Landroid/database/SQLException;
    const-string v4, "OmacpApnReceiverService"

    const-string v5, "SetCurrentApn SQLException happened!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    .end local v0           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateApn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 14
    .parameter "context"
    .parameter "uri"
    .parameter "apn"
    .parameter "apnId"
    .parameter "name"
    .parameter "values"
    .parameter "numeric"
    .parameter "peferredUri"
    .parameter "slotId"

    .prologue
    .line 407
    iget-boolean v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    if-eqz v2, :cond_2

    .line 408
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mType:Ljava/lang/String;

    move-object/from16 v0, p7

    move-object/from16 v1, p4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/mediatek/apn/OmacpApnReceiverService;->queryApnByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mmsIds:[J

    .line 409
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/mediatek/apn/OmacpApnReceiverService;->replaceNum:J

    .line 416
    :goto_0
    const-string v2, "OmacpApnReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replace number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/mediatek/apn/OmacpApnReceiverService;->replaceNum:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-wide v11, Lcom/mediatek/apn/OmacpApnReceiverService;->replaceNum:J

    .line 423
    .local v11, insertNum:J
    move-object/from16 v0, p6

    move/from16 v1, p9

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/apn/OmacpApnReceiverService;->addMVNOItem(Landroid/content/ContentValues;I)Landroid/content/ContentValues;

    move-result-object p6

    .line 425
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 426
    .local v13, newRow:Landroid/net/Uri;
    if-eqz v13, :cond_0

    .line 427
    const-string v2, "OmacpApnReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v13}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 429
    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 430
    const-string v2, "OmacpApnReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert row id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v13           #newRow:Landroid/net/Uri;
    :cond_0
    :goto_1
    const-string v2, "OmacpApnReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-boolean v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    if-eqz v2, :cond_3

    .line 443
    const-wide/16 v2, -0x1

    cmp-long v2, v11, v2

    if-nez v2, :cond_1

    .line 444
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 445
    const-string v2, "OmacpApnReceiverService"

    const-string v3, "mms ,insertNum is APN_NO_UPDATE ,mResult = false"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_1
    :goto_2
    return-void

    .line 411
    .end local v11           #insertNum:J
    :cond_2
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mReplaceApnExt:Lcom/mediatek/settings/ext/IReplaceApnProfileExt;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/mediatek/settings/ext/IReplaceApnProfileExt;->replaceApn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/mediatek/apn/OmacpApnReceiverService;->replaceNum:J

    .line 412
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mmsIds:[J

    goto/16 :goto_0

    .line 433
    .restart local v11       #insertNum:J
    :catch_0
    move-exception v10

    .line 434
    .local v10, e:Landroid/database/SQLException;
    const-string v2, "OmacpApnReceiverService"

    const-string v3, "insert SQLException happened!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    goto :goto_1

    .line 452
    .end local v10           #e:Landroid/database/SQLException;
    :cond_3
    const-wide/16 v2, -0x1

    cmp-long v2, v11, v2

    if-nez v2, :cond_4

    .line 453
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 454
    const-string v2, "OmacpApnReceiverService"

    const-string v3, "not mms ,insertNum is APN_NO_UPDATE ,mResult = false"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 460
    :cond_4
    iget v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSimId:I

    move/from16 v0, p9

    if-ne v0, v2, :cond_1

    .line 461
    move-object/from16 v0, p8

    invoke-direct {p0, p1, v11, v12, v0}, Lcom/mediatek/apn/OmacpApnReceiverService;->setCurrentApn(Landroid/content/Context;JLandroid/net/Uri;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 462
    const-string v2, "OmacpApnReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set current apn result , mResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private validateProfile(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x2

    .line 249
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApn:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxy:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPort:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUserName:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mServer:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsc:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsProxy:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsPort:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    sget v1, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mType:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApnId:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNapId:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxyId:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private verifyMccMnc(Ljava/lang/String;)Z
    .locals 6
    .parameter "numeric"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 274
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 276
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, mcc:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, mnc:Ljava/lang/String;
    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMcc:Ljava/lang/String;

    .line 282
    iput-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMnc:Ljava/lang/String;

    .line 283
    const-string v2, "OmacpApnReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mcc&mnc is right , mMcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v0           #mcc:Ljava/lang/String;
    .end local v1           #mnc:Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    return v2

    .line 285
    :cond_0
    iput-boolean v4, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 286
    const-string v2, "OmacpApnReceiverService"

    const-string v3, "mcc&mnc is wrong , set mResult = false"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method addMVNOItem(Landroid/content/ContentValues;I)Landroid/content/ContentValues;
    .locals 8
    .parameter "values"
    .parameter "slotId"

    .prologue
    .line 479
    const/4 v2, 0x0

    .line 483
    .local v2, isMVNO:Z
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5, p2}, Lcom/android/internal/telephony/ITelephony;->isIccCardProviderAsMvnoGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 491
    :goto_0
    const-string v5, "OmacpApnReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMVNO = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    if-eqz v2, :cond_0

    .line 495
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5, p2}, Lcom/android/internal/telephony/ITelephony;->getSpNameInEfSpnGemini(I)Ljava/lang/String;

    move-result-object v4

    .line 496
    .local v4, spn:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5, p2}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForImsiGemini(I)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, imsi:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5, p2}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, pnn:Ljava/lang/String;
    const-string v5, "OmacpApnReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "spn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v5, "OmacpApnReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imsi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v5, "OmacpApnReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pnn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 508
    const-string v5, "imsi"

    invoke-virtual {p1, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 519
    .end local v1           #imsi:Ljava/lang/String;
    .end local v3           #pnn:Ljava/lang/String;
    .end local v4           #spn:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p1

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "OmacpApnReceiverService"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 509
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #imsi:Ljava/lang/String;
    .restart local v3       #pnn:Ljava/lang/String;
    .restart local v4       #spn:Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 510
    const-string v5, "spn"

    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 514
    .end local v1           #imsi:Ljava/lang/String;
    .end local v3           #pnn:Ljava/lang/String;
    .end local v4           #spn:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 515
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v5, "OmacpApnReceiverService"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 512
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #imsi:Ljava/lang/String;
    .restart local v3       #pnn:Ljava/lang/String;
    .restart local v4       #spn:Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v5, "pnn"

    invoke-virtual {p1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 23
    .parameter "intent"

    .prologue
    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 133
    .local v14, action:Ljava/lang/String;
    const-string v4, "OmacpApnReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v4, "com.mediatek.apn.action.start.omacpservice"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 225
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/jrdsettings/Utils;->getReplaceApnPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IReplaceApnProfileExt;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mReplaceApnExt:Lcom/mediatek/settings/ext/IReplaceApnProfileExt;

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    .line 141
    const-string v4, "android.intent.extra.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/content/Intent;

    .line 143
    .local v16, broadcastIntent:Landroid/content/Intent;
    const-string v4, "apn_setting_intent"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    .line 145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 146
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mediatek/apn/OmacpApnReceiverService;->sendFeedback(Landroid/content/Context;)V

    .line 148
    const-string v4, "OmacpApnReceiverService"

    const-string v5, "mIntentList == null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 154
    .local v22, sizeIntent:I
    const-string v4, "OmacpApnReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apn list size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-gtz v22, :cond_2

    .line 157
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mediatek/apn/OmacpApnReceiverService;->sendFeedback(Landroid/content/Context;)V

    .line 159
    const-string v4, "OmacpApnReceiverService"

    const-string v5, "Intent list size is wrong"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 164
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/apn/OmacpApnReceiverService;->initState(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mediatek/apn/OmacpApnReceiverService;->sendFeedback(Landroid/content/Context;)V

    .line 166
    const-string v4, "OmacpApnReceiverService"

    const-string v5, "Can not get MCC+MNC"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    :cond_3
    const-string v4, "OmacpApnReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PhoneConstants.GEMINI_SIM_NUM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v13, 0x0

    .local v13, slotId:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    if-eqz v4, :cond_7

    sget v4, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v13, v4, :cond_7

    .line 177
    sget-object v4, Lcom/mediatek/apn/ApnUtils;->URI_LIST:[Landroid/net/Uri;

    aget-object v4, v4, v13

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUri:Landroid/net/Uri;

    .line 178
    const-string v4, "OmacpApnReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mNumeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mPreferedUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPreferedUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/16 v20, 0x0

    .local v20, k:I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    if-eqz v4, :cond_6

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v4, v1}, Lcom/mediatek/apn/OmacpApnReceiverService;->extractAPN(Landroid/content/Intent;Landroid/content/Context;)V

    .line 183
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .local v10, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mediatek/apn/OmacpApnReceiverService;->validateProfile(Landroid/content/ContentValues;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApnId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPreferedUri:Landroid/net/Uri;

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v13}, Lcom/mediatek/apn/OmacpApnReceiverService;->updateApn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 188
    const-string v4, "OmacpApnReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gemini, replaceNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/mediatek/apn/OmacpApnReceiverService;->replaceNum:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-wide v4, Lcom/mediatek/apn/OmacpApnReceiverService;->replaceNum:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 190
    sget-wide v4, Lcom/mediatek/apn/OmacpApnReceiverService;->replaceNum:J

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5}, Lcom/mediatek/apn/OmacpApnReceiverService;->deleteApnById(Landroid/content/Context;J)Z

    .line 192
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mmsIds:[J

    if-eqz v4, :cond_5

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/apn/OmacpApnReceiverService;->mmsIds:[J

    .local v15, arr$:[J
    array-length v0, v15

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    aget-wide v17, v15, v19

    .line 194
    .local v17, i:J
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/apn/OmacpApnReceiverService;->deleteApnById(Landroid/content/Context;J)Z

    .line 193
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 180
    .end local v15           #arr$:[J
    .end local v17           #i:J
    .end local v19           #i$:I
    .end local v21           #len$:I
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 176
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 224
    .end local v20           #k:I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mediatek/apn/OmacpApnReceiverService;->sendFeedback(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
