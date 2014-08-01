.class public Lcom/mediatek/gemini/simui/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;
    }
.end annotation


# static fields
.field public static final EXTRA_3G_CARD_ONLY:Ljava/lang/String; = "EXTRA_3G_CARD_ONLY"

.field public static final EXTRA_SLOTID:Ljava/lang/String; = "slotId"

.field public static final EXTRA_TITLE_NAME:Ljava/lang/String; = "EXTRA_TITME_NAME"

.field public static final GEMINI_BASEBAND_PROP:[Ljava/lang/String; = null

.field public static final IMAGE_GRAY:I = 0x4b

#the value of this static final field might be set in the static constructor
.field public static final INTERNET_COLOR_ID:I = 0x0

.field public static final MODEM_3G:I = 0x3

.field public static final MODEM_MASK_EDGE:I = 0x2

.field public static final MODEM_MASK_GPRS:I = 0x1

.field public static final MODEM_MASK_HSDPA:I = 0x10

.field public static final MODEM_MASK_HSUPA:I = 0x20

.field public static final MODEM_MASK_TDSCDMA:I = 0x8

.field public static final MODEM_MASK_WCDMA:I = 0x4

.field public static final ORIGINAL_IMAGE:I = 0xff

.field private static final TAG:Ljava/lang/String; = "CommonUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    array-length v0, v0

    sput v0, Lcom/mediatek/gemini/simui/CommonUtils;->INTERNET_COLOR_ID:I

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.baseband.capability"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.baseband.capability2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gsm.baseband.capability3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.baseband.capability4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/gemini/simui/CommonUtils;->GEMINI_BASEBAND_PROP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static get3GCapabilitySim()I
    .locals 6

    .prologue
    .line 179
    const/4 v2, -0x1

    .line 180
    .local v2, slotId:I
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 182
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 186
    :goto_0
    const-string v3, "CommonUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVideoCallDefaultSIM()---slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v2

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "CommonUtils"

    const-string v4, "mTelephony exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static get3GSimCard(Landroid/app/Activity;)Ljava/util/List;
    .locals 3
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, siminfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-static {}, Lcom/mediatek/gemini/simui/CommonUtils;->get3GCapabilitySim()I

    move-result v1

    .line 145
    .local v1, slot:I
    if-ltz v1, :cond_0

    .line 146
    invoke-static {p0, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    return-object v0
.end method

.method public static getBaseband(I)I
    .locals 7
    .parameter "slot"

    .prologue
    .line 161
    sget-object v4, Lcom/mediatek/gemini/simui/CommonUtils;->GEMINI_BASEBAND_PROP:[Ljava/lang/String;

    aget-object v3, v4, p0

    .line 163
    .local v3, propertyKey:Ljava/lang/String;
    const/4 v0, 0x0

    .line 165
    .local v0, baseband:I
    :try_start_0
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, capability:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 172
    .end local v1           #capability:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v4, "CommonUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v4, "CommonUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[propertyKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v4, "CommonUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[baseband = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v0

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v4, "CommonUtils"

    const-string v5, "get base band error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSimColorResource(I)I
    .locals 2
    .parameter "colorId"

    .prologue
    .line 101
    const/4 v0, -0x1

    .line 103
    .local v0, bgColor:I
    if-ltz p0, :cond_1

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    array-length v1, v1

    if-ge p0, v1, :cond_1

    .line 104
    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    aget v0, v1, p0

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    sget v1, Lcom/mediatek/gemini/simui/CommonUtils;->INTERNET_COLOR_ID:I

    if-ne p0, v1, :cond_0

    .line 107
    const v0, 0x20200f2

    goto :goto_0
.end method

.method public static getSimIndicator(Landroid/content/Context;I)I
    .locals 7
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 120
    invoke-static {p0}, Lcom/mediatek/gemini/simui/CommonUtils;->isAllRadioOff(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    const-string v4, "CommonUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAllRadioOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/mediatek/gemini/simui/CommonUtils;->isAllRadioOff(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v3, 0x1

    .line 138
    :cond_0
    :goto_0
    return v3

    .line 125
    :cond_1
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 126
    .local v2, iTelephony:Lcom/android/internal/telephony/ITelephony;
    const/4 v3, -0x1

    .line 127
    .local v3, indicator:I
    if-eqz v2, :cond_0

    .line 129
    :try_start_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "CommonUtils"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 135
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v4, "CommonUtils"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStatusResource(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 66
    packed-switch p0, :pswitch_data_0

    .line 89
    :pswitch_0
    const/4 v0, -0x1

    .line 92
    .local v0, resId:I
    :goto_0
    return v0

    .line 68
    .end local v0           #resId:I
    :pswitch_1
    const v0, 0x202011e

    .line 69
    .restart local v0       #resId:I
    goto :goto_0

    .line 71
    .end local v0           #resId:I
    :pswitch_2
    const v0, 0x202010b

    .line 72
    .restart local v0       #resId:I
    goto :goto_0

    .line 74
    .end local v0           #resId:I
    :pswitch_3
    const v0, 0x2020104

    .line 75
    .restart local v0       #resId:I
    goto :goto_0

    .line 77
    .end local v0           #resId:I
    :pswitch_4
    const v0, 0x2020125

    .line 78
    .restart local v0       #resId:I
    goto :goto_0

    .line 80
    .end local v0           #resId:I
    :pswitch_5
    const v0, 0x2020123

    .line 81
    .restart local v0       #resId:I
    goto :goto_0

    .line 83
    .end local v0           #resId:I
    :pswitch_6
    const v0, 0x20200fb

    .line 84
    .restart local v0       #resId:I
    goto :goto_0

    .line 86
    .end local v0           #resId:I
    :pswitch_7
    const v0, 0x2020124

    .line 87
    .restart local v0       #resId:I
    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static isAllRadioOff(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, airMode:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dual_sim_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, dualMode:I
    if-eq v0, v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
