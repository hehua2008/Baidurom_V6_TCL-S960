.class public Lcom/mediatek/gemini/GeminiUtils;
.super Ljava/lang/Object;
.source "GeminiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;
    }
.end annotation


# static fields
.field public static final ERROR_SLOT_ID:I = -0x2

.field public static final EXTRA_SIMID:Ljava/lang/String; = "simid"

.field public static final EXTRA_SLOTID:Ljava/lang/String; = "slotid"

.field public static final IMAGE_GRAY:I = 0x4b

.field public static final INTENT_CARD_SELECT:Ljava/lang/String; = "com.mediatek.gemini.action.SELECT_SIM"

#the value of this static final field might be set in the static constructor
.field public static final INTERNET_COLOR_ID:I = 0x0

.field public static final ORIGINAL_IMAGE:I = 0xff

.field public static final PIN1_REQUEST_CODE:I = 0x12e

.field public static final REQUEST_SIM_SELECT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "GeminiUtils"

.field public static final UNDEFINED_SIM_ID:I = -0x1

.field public static final UNDEFINED_SLOT_ID:I = -0x1

.field public static sG3SlotID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    array-length v0, v0

    sput v0, Lcom/mediatek/gemini/GeminiUtils;->INTERNET_COLOR_ID:I

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/gemini/GeminiUtils;->sG3SlotID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static backToSimcardUnlock(Landroid/app/Activity;Z)V
    .locals 6
    .parameter "activity"
    .parameter "needFinish"

    .prologue
    .line 130
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 132
    .local v1, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 133
    .local v2, simSize:I
    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v3, "GeminiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "className: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 147
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static getSimColorResource(I)I
    .locals 2
    .parameter "colorId"

    .prologue
    .line 85
    const/4 v0, -0x1

    .line 86
    .local v0, bgColor:I
    if-ltz p0, :cond_1

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    array-length v1, v1

    if-ge p0, v1, :cond_1

    .line 87
    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    aget v0, v1, p0

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    sget v1, Lcom/mediatek/gemini/GeminiUtils;->INTERNET_COLOR_ID:I

    if-ne p0, v1, :cond_0

    .line 89
    const v0, 0x20200f2

    goto :goto_0
.end method

.method public static getSimIndicator(Landroid/content/ContentResolver;Lcom/android/internal/telephony/ITelephony;I)I
    .locals 7
    .parameter "resolver"
    .parameter "iTelephony"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 156
    const-string v4, "GeminiUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimIndicator---slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v4, "airplane_mode_on"

    const/4 v5, -0x1

    invoke-static {p0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v3, v2

    .line 159
    .local v3, isAirplaneOn:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 160
    const-string v4, "GeminiUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAirplaneOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    :goto_1
    return v2

    .line 157
    .end local v3           #isAirplaneOn:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 163
    .restart local v3       #isAirplaneOn:Z
    :cond_2
    const/4 v2, -0x1

    .line 164
    .local v2, indicator:I
    if-eqz p1, :cond_0

    .line 166
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "GeminiUtils"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 171
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 172
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v4, "GeminiUtils"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getSimSlotIdBySimInfoId(JLjava/util/List;)I
    .locals 4
    .parameter "simInfoId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 186
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v2, v2, p0

    if-nez v2, :cond_0

    .line 187
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 190
    .end local v1           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getSiminfoIdBySimSlotId(ILjava/util/List;)J
    .locals 4
    .parameter "slotId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 201
    .local v1, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v2, p0, :cond_0

    .line 202
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 205
    .end local v1           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getStatusResource(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 59
    packed-switch p0, :pswitch_data_0

    .line 75
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 61
    :pswitch_1
    const v0, 0x202011e

    goto :goto_0

    .line 63
    :pswitch_2
    const v0, 0x202010b

    goto :goto_0

    .line 65
    :pswitch_3
    const v0, 0x2020104

    goto :goto_0

    .line 67
    :pswitch_4
    const v0, 0x2020125

    goto :goto_0

    .line 69
    :pswitch_5
    const v0, 0x2020123

    goto :goto_0

    .line 71
    :pswitch_6
    const v0, 0x20200fb

    goto :goto_0

    .line 73
    :pswitch_7
    const v0, 0x2020124

    goto :goto_0

    .line 59
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

.method public static getTargetSlotId(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 102
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 104
    .local v1, simSize:I
    const/4 v2, -0x1

    .line 105
    .local v2, slotId:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 106
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 108
    :cond_0
    return v2
.end method

.method public static goBackSettings(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/jrdsettings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 217
    return-void
.end method

.method public static goBackSimSelection(Landroid/app/Activity;Z)V
    .locals 6
    .parameter "activity"
    .parameter "needFinish"

    .prologue
    const/4 v5, -0x2

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, it:Landroid/content/Intent;
    const-string v2, "slotid"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 120
    .local v1, slotId:I
    const-string v2, "GeminiUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slotid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-eq v1, v5, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 127
    .end local v0           #it:Landroid/content/Intent;
    .end local v1           #slotId:I
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local v0       #it:Landroid/content/Intent;
    .restart local v1       #slotId:I
    :cond_1
    invoke-static {p0, p1}, Lcom/mediatek/gemini/GeminiUtils;->backToSimcardUnlock(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public static startSelectSimActivity(Landroid/app/Activity;I)V
    .locals 2
    .parameter "activity"
    .parameter "titleId"

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.gemini.action.SELECT_SIM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    if-ltz p1, :cond_0

    .line 228
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    :cond_0
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 231
    return-void
.end method
