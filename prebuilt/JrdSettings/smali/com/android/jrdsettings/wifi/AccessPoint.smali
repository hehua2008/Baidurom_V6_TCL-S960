.class Lcom/android/jrdsettings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/wifi/AccessPoint$1;,
        Lcom/android/jrdsettings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final HOTSPOT:Ljava/lang/String; = "[HS20]"

.field private static final KEY_CONFIG:Ljava/lang/String; = "key_config"

.field private static final KEY_DETAILEDSTATE:Ljava/lang/String; = "key_detailedstate"

.field private static final KEY_PROP_OPEN_AP_WPS:Ljava/lang/String; = "mediatek.wlan.openap.wps"

.field private static final KEY_PROP_WFA_TEST_SUPPORT:Ljava/lang/String; = "persist.radio.wifi.wpa2wpaalone"

.field private static final KEY_PROP_WFA_TEST_VALUE:Ljava/lang/String; = "true"

.field private static final KEY_SCANRESULT:Ljava/lang/String; = "key_scanresult"

.field private static final KEY_WIFIINFO:Ljava/lang/String; = "key_wifiinfo"

.field static final SECURITY_EAP:I = 0x5

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WAPI_CERT:I = 0x7

.field static final SECURITY_WAPI_PSK:I = 0x6

.field static final SECURITY_WEP:I = 0x1

.field static final SECURITY_WPA2_PSK:I = 0x4

.field static final SECURITY_WPA_PSK:I = 0x3

.field private static final STATE_NONE:[I = null

.field private static final STATE_SECURED:[I = null

.field static final TAG:Ljava/lang/String; = "Settings.AccessPoint"

.field static sExt:Lcom/mediatek/settings/ext/IWifiExt;

.field private static sWFATestFlag:Ljava/lang/String;


# instance fields
.field bssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field mSupportedPasspoint:Z

.field networkId:I

.field pskType:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 53
    sput-object v3, Lcom/android/jrdsettings/wifi/AccessPoint;->sWFATestFlag:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f010002

    aput v1, v0, v2

    sput-object v0, Lcom/android/jrdsettings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 58
    new-array v0, v2, [I

    sput-object v0, Lcom/android/jrdsettings/wifi/AccessPoint;->STATE_NONE:[I

    .line 94
    sput-object v3, Lcom/android/jrdsettings/wifi/AccessPoint;->sExt:Lcom/mediatek/settings/ext/IWifiExt;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 83
    iput-boolean v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 85
    sget-object v0, Lcom/android/jrdsettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->pskType:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    .line 98
    iput-boolean v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mSupportedPasspoint:Z

    .line 208
    const v0, 0x7f0400a9

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 209
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 210
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/AccessPoint;->refresh()V

    .line 212
    sget-object v0, Lcom/android/jrdsettings/wifi/AccessPoint;->sExt:Lcom/mediatek/settings/ext/IWifiExt;

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/jrdsettings/Utils;->getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;

    move-result-object v0

    sput-object v0, Lcom/android/jrdsettings/wifi/AccessPoint;->sExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 216
    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "context"
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 83
    iput-boolean v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 85
    sget-object v0, Lcom/android/jrdsettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->pskType:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    .line 98
    iput-boolean v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mSupportedPasspoint:Z

    .line 196
    const v0, 0x7f0400a9

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 197
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 198
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/AccessPoint;->refresh()V

    .line 200
    sget-object v0, Lcom/android/jrdsettings/wifi/AccessPoint;->sExt:Lcom/mediatek/settings/ext/IWifiExt;

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/jrdsettings/Utils;->getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;

    move-result-object v0

    sput-object v0, Lcom/android/jrdsettings/wifi/AccessPoint;->sExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 204
    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "savedState"

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 83
    iput-boolean v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 85
    sget-object v0, Lcom/android/jrdsettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->pskType:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    .line 98
    iput-boolean v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mSupportedPasspoint:Z

    .line 220
    const v0, 0x7f0400a9

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 222
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 223
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 226
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 227
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 230
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 231
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 236
    sget-object v0, Lcom/android/jrdsettings/wifi/AccessPoint;->sExt:Lcom/mediatek/settings/ext/IWifiExt;

    if-nez v0, :cond_3

    .line 237
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/jrdsettings/Utils;->getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;

    move-result-object v0

    sput-object v0, Lcom/android/jrdsettings/wifi/AccessPoint;->sExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 240
    :cond_3
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/jrdsettings/wifi/AccessPoint$PskType;
    .locals 5
    .parameter "result"

    .prologue
    .line 180
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 181
    .local v0, wpa:Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 182
    .local v1, wpa2:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 183
    sget-object v2, Lcom/android/jrdsettings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    .line 190
    :goto_0
    return-object v2

    .line 184
    :cond_0
    if-eqz v1, :cond_1

    .line 185
    sget-object v2, Lcom/android/jrdsettings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 186
    :cond_1
    if-eqz v0, :cond_2

    .line 187
    sget-object v2, Lcom/android/jrdsettings/wifi/AccessPoint$PskType;->WPA:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 189
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v2, Lcom/android/jrdsettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 126
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x6

    .line 139
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const/4 v0, 0x7

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    const/4 v0, 0x2

    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    const/4 v0, 0x5

    goto :goto_0

    .line 139
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 101
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 106
    goto :goto_0

    .line 109
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 110
    goto :goto_0

    .line 113
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 114
    const/4 v0, 0x7

    goto :goto_0

    .line 117
    :cond_5
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v2, :cond_6

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    .line 122
    :cond_6
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isWFATestSupported()Z
    .locals 3

    .prologue
    .line 497
    sget-object v0, Lcom/android/jrdsettings/wifi/AccessPoint;->sWFATestFlag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 498
    const-string v0, "persist.radio.wifi.wpa2wpaalone"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/jrdsettings/wifi/AccessPoint;->sWFATestFlag:Ljava/lang/String;

    .line 499
    const-string v0, "Settings.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWFATestSupported(), sWFATestFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/jrdsettings/wifi/AccessPoint;->sWFATestFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    const-string v0, "true"

    sget-object v1, Lcom/android/jrdsettings/wifi/AccessPoint;->sWFATestFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 252
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 253
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 254
    invoke-static {p1}, Lcom/android/jrdsettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    .line 255
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    .line 256
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    .line 257
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 258
    return-void

    .line 252
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/jrdsettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 261
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 263
    invoke-static {p1}, Lcom/android/jrdsettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    .line 264
    iget v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 265
    iget v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 266
    invoke-static {p1}, Lcom/android/jrdsettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->pskType:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    .line 267
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    .line 268
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    .line 269
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 271
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[HS20]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mSupportedPasspoint:Z

    .line 273
    return-void

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 428
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 431
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_0

    .line 432
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v3}, Lcom/android/jrdsettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 473
    :goto_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mSupportedPasspoint:Z

    invoke-virtual {p0}, Lcom/android/jrdsettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-static {p0, v3, v4, v5}, Lcom/mediatek/wifi/PasspointSettings;->setSummary(Landroid/preference/Preference;Landroid/content/Context;ZLandroid/net/NetworkInfo$DetailedState;)V

    .line 474
    return-void

    .line 433
    :cond_0
    iget v3, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    .line 434
    const v3, 0x7f090450

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 435
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v5, :cond_2

    .line 436
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 445
    :pswitch_0
    const v3, 0x7f09044d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 438
    :pswitch_1
    const v3, 0x7f09044f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 442
    :pswitch_2
    const v3, 0x7f09044e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 448
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    .line 450
    const v3, 0x7f09044c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_3
    iget v3, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_4

    .line 455
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 456
    const v3, 0x7f090453

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, securityStrFormat:Ljava/lang/String;
    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Lcom/android/jrdsettings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_5

    .line 464
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 465
    const v3, 0x7f090451

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 458
    :cond_6
    const v3, 0x7f090454

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #securityStrFormat:Ljava/lang/String;
    goto :goto_1

    .line 467
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_7
    const v3, 0x7f090452

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 414
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 415
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 417
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 419
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static resetWFAFlag()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    sput-object v0, Lcom/android/jrdsettings/wifi/AccessPoint;->sWFATestFlag:Ljava/lang/String;

    .line 508
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 10
    .parameter "preference"

    .prologue
    const v9, 0x7fffffff

    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 296
    instance-of v4, p1, Lcom/android/jrdsettings/wifi/AccessPoint;

    if-nez v4, :cond_1

    move v1, v0

    .line 334
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v2, p1

    .line 299
    check-cast v2, Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 301
    .local v2, other:Lcom/android/jrdsettings/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_2

    move v1, v3

    goto :goto_0

    .line 302
    :cond_2
    iget-object v4, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v4, :cond_3

    move v1, v0

    goto :goto_0

    .line 305
    :cond_3
    sget-object v4, Lcom/android/jrdsettings/wifi/AccessPoint;->sExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v5, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget v6, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    iget-object v7, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget v8, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/mediatek/settings/ext/IWifiExt;->getApOrder(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v1

    .line 306
    .local v1, order:I
    if-nez v1, :cond_0

    .line 312
    iget v4, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    if-eq v4, v9, :cond_4

    iget v4, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    if-ne v4, v9, :cond_4

    move v1, v3

    goto :goto_0

    .line 313
    :cond_4
    iget v4, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    if-ne v4, v9, :cond_5

    iget v4, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    if-eq v4, v9, :cond_5

    move v1, v0

    goto :goto_0

    .line 316
    :cond_5
    iget v4, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    if-eq v4, v3, :cond_6

    iget v4, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    if-ne v4, v3, :cond_6

    move v1, v3

    .line 317
    goto :goto_0

    .line 318
    :cond_6
    iget v4, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    if-ne v4, v3, :cond_7

    iget v4, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    if-eq v4, v3, :cond_7

    move v1, v0

    .line 319
    goto :goto_0

    .line 322
    :cond_7
    iget v4, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    iget v5, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 323
    .local v0, difference:I
    if-eqz v0, :cond_8

    move v1, v0

    .line 324
    goto :goto_0

    .line 328
    :cond_8
    iget v4, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    iget v5, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    sub-int v3, v4, v5

    .line 329
    .local v3, securityDiff:I
    if-eqz v3, :cond_9

    move v1, v3

    .line 330
    goto :goto_0

    .line 334
    :cond_9
    iget-object v4, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 339
    instance-of v1, p1, Lcom/android/jrdsettings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 340
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lcom/android/jrdsettings/wifi/AccessPoint;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 482
    iget v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 491
    :goto_0
    return-void

    .line 486
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 487
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/jrdsettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 395
    iget v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 396
    const/4 v0, -0x1

    .line 398
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .parameter "concise"

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 175
    :pswitch_0
    if-eqz p1, :cond_6

    const-string v1, ""

    :goto_0
    return-object v1

    .line 146
    :pswitch_1
    if-eqz p1, :cond_0

    const v1, 0x7f09045a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f090461

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 149
    :pswitch_2
    sget-object v1, Lcom/android/jrdsettings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->pskType:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 161
    if-eqz p1, :cond_4

    const v1, 0x7f090459

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 151
    :pswitch_3
    if-eqz p1, :cond_1

    const v1, 0x7f090456

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f09045d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 154
    :pswitch_4
    if-eqz p1, :cond_2

    const v1, 0x7f090457

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f09045e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    :pswitch_5
    if-eqz p1, :cond_3

    const v1, 0x7f090458

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f09045f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_4
    const v1, 0x7f090460

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    :pswitch_6
    if-eqz p1, :cond_5

    const v1, 0x7f090455

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f09045c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 169
    :pswitch_7
    const v1, 0x7f0900df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 172
    :pswitch_8
    const v1, 0x7f0900e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 175
    :cond_6
    const v1, 0x7f09045b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 149
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, result:I
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 347
    :cond_0
    iget v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 348
    iget v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 349
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 350
    return v0
.end method

.method public isOpenApWPSSupported()Z
    .locals 4

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, supported:Z
    iget-boolean v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v1, :cond_0

    .line 515
    const-string v1, "true"

    const-string v2, "mediatek.wlan.openap.wps"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 517
    :cond_0
    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 278
    const v2, 0x7f0b0191

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 279
    .local v0, signal:Landroid/widget/ImageView;
    iget v2, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    .line 280
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    :goto_0
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 290
    .local v1, title:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 292
    return-void

    .line 282
    .end local v1           #title:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/wifi/AccessPoint;->getLevel()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 283
    const v2, 0x7f02015b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    iget v2, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/jrdsettings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/jrdsettings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_1
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 243
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 244
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 245
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 246
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, reorder:Z
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mSupportedPasspoint:Z

    invoke-static {p1, v1, v2}, Lcom/mediatek/wifi/PasspointSettings;->shouldUpdate(Landroid/net/wifi/WifiInfo;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 379
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    .line 380
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 381
    iput-object p2, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 382
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/AccessPoint;->refresh()V

    .line 389
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 390
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 392
    :cond_3
    return-void

    .line 378
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :cond_5
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_2

    .line 384
    const/4 v0, 0x1

    .line 385
    iput-object v3, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 386
    iput-object v3, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 387
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/jrdsettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 355
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/jrdsettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 357
    .local v0, oldLevel:I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mRssi:I

    .line 358
    invoke-virtual {p0}, Lcom/android/jrdsettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 359
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 363
    .end local v0           #oldLevel:I
    :cond_0
    iget v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 364
    invoke-static {p1}, Lcom/android/jrdsettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->pskType:Lcom/android/jrdsettings/wifi/AccessPoint$PskType;

    .line 367
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[HS20]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/jrdsettings/wifi/AccessPoint;->mSupportedPasspoint:Z

    .line 368
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/AccessPoint;->refresh()V

    .line 369
    const/4 v1, 0x1

    .line 371
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
