.class public Lcom/mediatek/settings/deviceinfo/StatusGemini;
.super Landroid/preference/PreferenceActivity;
.source "StatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/deviceinfo/StatusGemini$MyHandler;
    }
.end annotation


# static fields
.field private static final CDMA:Ljava/lang/String; = "CDMA"

.field private static final EVENT_UPDATE_STATS:I = 0x1f4

.field private static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_status"

.field private static final KEY_BT_ADDRESS:Ljava/lang/String; = "bt_address"

.field private static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final KEY_SIM_STATUS:Ljava/lang/String; = "sim_status"

.field private static final KEY_SLOT_STATUS:Ljava/lang/String; = "slot_status"

.field private static final KEY_UP_TIME:Ljava/lang/String; = "up_time"

.field private static final KEY_WIFI_IP_ADDRESS:Ljava/lang/String; = "wifi_ip_address"

.field private static final KEY_WIFI_MAC_ADDRESS:Ljava/lang/String; = "wifi_mac_address"

.field private static final KEY_WIMAX_MAC_ADDRESS:Ljava/lang/String; = "wimax_mac_address"

.field private static final SLOT_ALL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Gemini_Aboutphone"

.field private static final WIMAX_ADDRESS:Ljava/lang/String; = "net.wimax.mac.address"

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mRes:Landroid/content/res/Resources;

.field private mSimStatus:Landroid/preference/Preference;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 127
    new-instance v0, Lcom/mediatek/settings/deviceinfo/StatusGemini$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini$1;-><init>(Lcom/mediatek/settings/deviceinfo/StatusGemini;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/deviceinfo/StatusGemini;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/deviceinfo/StatusGemini;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .parameter "t"

    .prologue
    const-wide/16 v5, 0x3c

    .line 365
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 366
    .local v2, s:I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 367
    .local v1, m:I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 369
    .local v0, h:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 357
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 358
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 327
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 328
    .local v1, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 330
    .local v2, btAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_1

    .line 332
    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, address:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_0

    .line 339
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .end local v0           #address:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 336
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 339
    .restart local v0       #address:Ljava/lang/String;
    :cond_3
    const v3, 0x7f090538

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setSimListEntrance()V
    .locals 4

    .prologue
    .line 249
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    invoke-interface {v1, v2, v3}, Lcom/mediatek/settings/ext/IStatusGeminiExt;->initUI(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    .line 250
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 251
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    .line 252
    .local v0, simNum:I
    const-string v1, "Gemini_Aboutphone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simNum num "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-nez v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 258
    .end local v0           #simNum:I
    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 261
    const-string v2, "Gemini_Aboutphone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 265
    :cond_0
    const-string v2, "slot_status"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 267
    .local v1, parent:Landroid/preference/PreferenceScreen;
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 268
    .local v0, p:Landroid/preference/Preference;
    if-nez v0, :cond_2

    .line 269
    const-string v2, "Gemini_Aboutphone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot_status not find preference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setWifiStatus()V
    .locals 8

    .prologue
    const v7, 0x7f090538

    .line 302
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 303
    .local v5, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v2, 0x0

    .line 304
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_0

    .line 305
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 308
    :cond_0
    const-string v6, "wifi_mac_address"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 309
    .local v4, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 310
    .local v1, macAddress:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 311
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .end local v1           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    :cond_1
    const-string v6, "wifi_ip_address"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 317
    .local v3, wifiIpAddressPref:Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, ipAddress:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 319
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    :goto_2
    return-void

    .line 309
    .end local v0           #ipAddress:Ljava/lang/String;
    .end local v3           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 311
    .restart local v1       #macAddress:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 321
    .end local v1           #macAddress:Ljava/lang/String;
    .restart local v0       #ipAddress:Ljava/lang/String;
    .restart local v3       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_4
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 281
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 282
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 283
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 284
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 287
    :cond_0
    if-nez v2, :cond_2

    .line 288
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 289
    .local v4, root:Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 290
    .local v3, ps:Landroid/preference/Preference;
    if-eqz v3, :cond_1

    .line 291
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 299
    .end local v3           #ps:Landroid/preference/Preference;
    .end local v4           #root:Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_0
    return-void

    .line 294
    :cond_2
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 295
    .local v5, wimaxMacAddressPref:Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f090538

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, macAddress:Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 169
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    const v5, 0x7f060015

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 171
    const-string v5, "Gemini_Aboutphone"

    const-string v7, "Enter StatusGemini onCreate function."

    invoke-static {v5, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getStatusGeminiExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusGeminiExt;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

    .line 173
    invoke-static {p0}, Lcom/android/jrdsettings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 175
    new-instance v5, Lcom/mediatek/settings/deviceinfo/StatusGemini$MyHandler;

    invoke-direct {v5, p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini$MyHandler;-><init>(Lcom/mediatek/settings/deviceinfo/StatusGemini;)V

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mHandler:Landroid/os/Handler;

    .line 176
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 178
    const-string v5, "battery_level"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryLevel:Landroid/preference/Preference;

    .line 179
    const-string v5, "battery_status"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryStatus:Landroid/preference/Preference;

    .line 180
    const-string v5, "up_time"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mUptime:Landroid/preference/Preference;

    .line 182
    const-string v5, "sim_status"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    .line 184
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mRes:Landroid/content/res/Resources;

    .line 185
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f090238

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/mediatek/settings/deviceinfo/StatusGemini;->sUnknown:Ljava/lang/String;

    .line 187
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 189
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 190
    .local v2, sIsWifiOnly:Z
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    .line 193
    :goto_0
    const-string v5, "Gemini_Aboutphone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sIsWifiOnly="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    if-nez v2, :cond_4

    .line 197
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->setSimListEntrance()V

    .line 199
    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 200
    .local v3, serial:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 201
    const-string v5, "serial_number"

    invoke-direct {p0, v5, v3}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v3           #serial:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->setWimaxStatus()V

    .line 220
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->setWifiStatus()V

    .line 221
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->setBtStatus()V

    .line 222
    return-void

    :cond_2
    move v2, v6

    .line 191
    goto :goto_0

    .line 203
    .restart local v3       #serial:Ljava/lang/String;
    :cond_3
    const-string v5, "serial_number"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 204
    .local v1, pref:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 210
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v3           #serial:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    if-eqz v5, :cond_5

    .line 211
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    :cond_5
    const-string v5, "slot_status"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 216
    .local v4, slotStatus:Landroid/preference/Preference;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 243
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 231
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v3, 0x7f090055

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, newTitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v3, 0x7f090056

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, newSummary:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 347
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 349
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 350
    const-wide/16 v2, 0x1

    .line 353
    :cond_0
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 354
    return-void
.end method
