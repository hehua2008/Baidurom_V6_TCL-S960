.class public Lcom/mediatek/settings/ext/DefaultApnSettingsExt;
.super Ljava/lang/Object;
.source "DefaultApnSettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IApnSettingsExt;


# static fields
.field private static final CMMAIL_TYPE:Ljava/lang/String; = "cmmail"

.field public static final MENU_NEW:I = 0x1

.field public static final MENU_RESTORE:I = 0x2

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM1:Ljava/lang/String; = "content://telephony/carriers_sim1/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM2:Ljava/lang/String; = "content://telephony/carriers_sim2/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM3:Ljava/lang/String; = "content://telephony/carriers_sim3/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM4:Ljava/lang/String; = "content://telephony/carriers_sim4/preferapn"

.field public static final PREFERRED_URI_LIST:[Landroid/net/Uri; = null

.field private static final RCSE_TYPE:Ljava/lang/String; = "rcse"

.field private static final TAG:Ljava/lang/String; = "DefaultApnSettingsExt"

.field public static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field public static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final TYPE_MMS:Ljava/lang/String; = "mms"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    const-string v2, "content://telephony/carriers_sim1/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content://telephony/carriers_sim2/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content://telephony/carriers_sim3/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content://telephony/carriers_sim4/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;->PREFERRED_URI_LIST:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isMMSNotTransaction(Landroid/app/Activity;)Z
    .locals 7
    .parameter "activity"

    .prologue
    .line 107
    const/4 v1, 0x1

    .line 108
    .local v1, isMMSNotProcess:Z
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 109
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 110
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 111
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 113
    .local v3, state:Landroid/net/NetworkInfo$State;
    const-string v4, "DefaultApnSettingsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mms state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 118
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #state:Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return v1

    .line 114
    .restart local v2       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v3       #state:Landroid/net/NetworkInfo$State;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addApnTypeExtra(Landroid/content/Intent;)V
    .locals 0
    .parameter "it"

    .prologue
    .line 170
    return-void
.end method

.method public addMenu(Landroid/view/Menu;Landroid/app/Activity;IILjava/lang/String;)V
    .locals 3
    .parameter "menu"
    .parameter "activity"
    .parameter "add"
    .parameter "restore"
    .parameter "numeric"

    .prologue
    const/4 v2, 0x0

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 164
    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 167
    return-void
.end method

.method public addPreference(ILandroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "slotId"
    .parameter "root"

    .prologue
    .line 218
    return-void
.end method

.method public customizeApnProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "projection"

    .prologue
    .line 227
    return-object p1
.end method

.method public customizeApnTitles(ILandroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "slotId"
    .parameter "root"

    .prologue
    .line 223
    return-void
.end method

.method public customizeTetherApnSettings(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 57
    return-void
.end method

.method public getApnTypeArray(Landroid/content/Context;IZ)[Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "defResId"
    .parameter "isTether"

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastReceiver(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .parameter "receiver"

    .prologue
    .line 86
    return-object p1
.end method

.method public getFillListQuery(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "numeric"
    .parameter "isMVNO"
    .parameter "spn"
    .parameter "imsi"
    .parameter "pnn"

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, flagImsi:Z
    const/4 v2, 0x0

    .line 124
    .local v2, flagSpn:Z
    const/4 v1, 0x0

    .line 125
    .local v1, flagPnn:Z
    const-string v4, ""

    .line 128
    .local v4, sqlStr:Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 129
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " imsi=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 134
    const/4 v2, 0x1

    .line 135
    if-eqz v0, :cond_4

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or spn=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    :cond_1
    :goto_0
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 143
    const/4 v1, 0x1

    .line 144
    if-nez v0, :cond_2

    if-eqz v2, :cond_5

    .line 145
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or pnn=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numeric=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" and ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, result:Ljava/lang/String;
    const-string v5, "DefaultApnSettingsExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getQuery result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object v3

    .line 138
    .end local v3           #result:Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " spn=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 147
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pnn=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 152
    :cond_6
    const-string v4, "(spn is NULL or spn=\"\") and (imsi is NULL or imsi=\"\") and (pnn is NULL or pnn=\"\") "

    goto :goto_1
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    return-object v0
.end method

.method public getRestoreCarrierUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, preferredUri:Landroid/net/Uri;
    sget-object v1, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;->PREFERRED_URI_LIST:[Landroid/net/Uri;

    aget-object v0, v1, p1

    .line 185
    return-object v0
.end method

.method public getScreenEnableState(ILandroid/app/Activity;)Z
    .locals 8
    .parameter "slotId"
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 90
    const/4 v2, 0x1

    .line 92
    .local v2, simReady:Z
    const/4 v5, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    move v2, v3

    .line 96
    :goto_0
    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v0, v3

    .line 99
    .local v0, airplaneModeEnabled:Z
    :goto_1
    invoke-direct {p0, p2}, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;->isMMSNotTransaction(Landroid/app/Activity;)Z

    move-result v1

    .line 101
    .local v1, isMMsNoTransac:Z
    const-string v5, "DefaultApnSettingsExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isMMsNoTransac = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,airplaneModeEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,simReady = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    return v3

    .end local v0           #airplaneModeEnabled:Z
    .end local v1           #isMMsNoTransac:Z
    :cond_0
    move v2, v4

    .line 92
    goto :goto_0

    :cond_1
    move v0, v4

    .line 96
    goto :goto_1

    .restart local v0       #airplaneModeEnabled:Z
    .restart local v1       #isMMsNoTransac:Z
    :cond_2
    move v3, v4

    .line 103
    goto :goto_2
.end method

.method public getUriFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public initTetherField(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 176
    return-void
.end method

.method public isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .parameter "type"
    .parameter "apn"
    .parameter "numeric"
    .parameter "sourcetype"

    .prologue
    .line 51
    const-string v0, "DefaultApnSettingsExt"

    const-string v1, "isAllowEditPresetApn"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 60
    const-string v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSkipApn(Ljava/lang/String;Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;)Z
    .locals 1
    .parameter "type"
    .parameter "rcseExt"

    .prologue
    .line 189
    const-string v0, "cmmail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rcse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;->isRcseOnlyApnEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveApnValues(Landroid/content/ContentValues;)V
    .locals 0
    .parameter "contentValues"

    .prologue
    .line 233
    return-void
.end method

.method public setApnTypePreferenceState(Landroid/preference/Preference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 195
    return-void
.end method

.method public setPreferenceTextAndSummary(ILjava/lang/String;)V
    .locals 0
    .parameter "slotId"
    .parameter "text"

    .prologue
    .line 213
    return-void
.end method

.method public updateFieldsStatus(ILandroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "slotId"
    .parameter "root"

    .prologue
    .line 208
    return-void
.end method

.method public updateTetherState(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 173
    return-void
.end method
